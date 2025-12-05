module SS_UART #(
    parameter integer CLK_HZ      = 100_000_000,
    parameter integer BAUD        = 1800,
    parameter integer RATIO       = 8,
    parameter integer SYNC_STAGES = 3
)(
    input  wire clk,
    input  wire rst,

    // Линии UART
    input  wire uart_rx_i,
    output wire uart_tx_o,

    // Флаги ошибок RX
    output reg        rx_parity_err = 1'b0,
    output reg        rx_frame_err  = 1'b0,

    // Порт STP (UART -> FSM, ODPS)
    output reg        RX_DATA_EN = 1'b0,
    output reg [7:0]  RX_DATA_T  = 8'h00,

    // Порт DRP (FSM -> UART, ODPS)
    input  wire       TX_RDY_T,
    input  wire [7:0] TX_DATA_R,
    output reg        TX_RDY_R   = 1'b1
);

    // -------------------------------------------------------------
    // Baud generator
    // -------------------------------------------------------------
    localparam integer DIV       = CLK_HZ / (BAUD * RATIO);
    localparam integer DIV_WIDTH = $clog2(DIV);

    wire tick;
    SS_DIVIDER #(
        .WIDTH     (DIV_WIDTH),
        .MAX_COUNT (DIV)
    ) baud_gen_inst (
        .clk  (clk),
        .rst  (rst),
        .tick (tick)
    );

    // -------------------------------------------------------------
    // RX synchronizer (SYNC_STAGES flip-flops)
    // -------------------------------------------------------------
    reg [SYNC_STAGES-1:0] rx_sync = {SYNC_STAGES{1'b1}};

    always @(posedge clk) begin
        rx_sync <= {rx_sync[SYNC_STAGES-2:0], uart_rx_i};
    end

    wire rx = rx_sync[SYNC_STAGES-1];

    // -------------------------------------------------------------
    // RX FSM (приём байта, 8N1 + SPACE parity = 0)
    // -------------------------------------------------------------
    localparam [2:0]
        R_IDLE  = 0,
        R_START = 1,
        R_DATA  = 2,
        R_PAR   = 3,
        R_STOP  = 4,
        R_DONE  = 5;

    reg [2:0] r_state  = R_IDLE;
    reg [2:0] r_bit    = 3'd0;
    reg [3:0] r_sample = 4'd0;
    reg [7:0] r_shift  = 8'h00;

    always @(posedge clk) begin
        if (rst) begin
            r_state       <= R_IDLE;
            RX_DATA_EN    <= 1'b0;
            RX_DATA_T     <= 8'h00;
            rx_parity_err <= 1'b0;
            rx_frame_err  <= 1'b0;
            r_bit         <= 3'd0;
            r_sample      <= 4'd0;
            r_shift       <= 8'h00;
        end else begin
            // импульс готовности данных
            RX_DATA_EN <= 1'b0;

            if (tick) begin
                case (r_state)
                    R_IDLE: begin
                        rx_parity_err <= 1'b0;
                        rx_frame_err  <= 1'b0;
                        if (!rx) begin
                            r_state  <= R_START;
                            r_sample <= 0;
                        end
                    end

                    R_START: begin
                        if (r_sample == RATIO/2) begin
                            if (!rx) begin
                                r_state  <= R_DATA;
                                r_bit    <= 0;
                                r_sample <= 0;
                            end else begin
                                r_state <= R_IDLE;
                            end
                        end else begin
                            r_sample <= r_sample + 1;
                        end
                    end

                    R_DATA: begin
                        if (r_sample == RATIO-1) begin
                            r_shift  <= {rx, r_shift[7:1]};
                            r_sample <= 0;
                            if (r_bit == 3'd7)
                                r_state <= R_PAR;
                            else
                                r_bit   <= r_bit + 1;
                        end else begin
                            r_sample <= r_sample + 1;
                        end
                    end

                    R_PAR: begin
                        if (r_sample == RATIO-1) begin
                            // SPACE parity -> бит паритета должен быть 0
                            if (rx != 1'b0)
                                rx_parity_err <= 1'b1;
                            r_state  <= R_STOP;
                            r_sample <= 0;
                        end else begin
                            r_sample <= r_sample + 1;
                        end
                    end

                    R_STOP: begin
                        if (r_sample == RATIO-1) begin
                            if (rx != 1'b1)
                                rx_frame_err <= 1'b1;
                            r_state <= R_DONE;
                        end else begin
                            r_sample <= r_sample + 1;
                        end
                    end

                    R_DONE: begin
                        RX_DATA_T  <= r_shift;
                        RX_DATA_EN <= 1'b1;   // импульс готовности данных
                        r_state    <= R_IDLE;
                    end

                    default: r_state <= R_IDLE;
                endcase
            end
        end
    end

    // -------------------------------------------------------------
    // TX FSM (передача байта) + ODPS DRP
    // -------------------------------------------------------------
    localparam [2:0]
        T_IDLE  = 0,
        T_START = 1,
        T_DATA  = 2,
        T_PAR   = 3,
        T_STOP  = 4;

    reg [2:0] t_state = T_IDLE;
    reg [2:0] t_bit   = 3'd0;
    reg [7:0] t_shift = 8'h00;
    reg [3:0] t_samp  = 4'd0;
    reg       t_out   = 1'b1;

    reg       tx_req  = 1'b0;   // запрос на передачу байта от ODPS

    assign uart_tx_o = t_out;

    // --- ODPS handshake: фиксация байта и управление TX_RDY_R ---
    always @(posedge clk) begin
        if (rst) begin
            tx_req  <= 1'b0;
            TX_RDY_R <= 1'b1; // готов к приёму первого байта
        end else begin
            // Приём нового байта по протоколу ODPS,
            // только если UART сейчас готов к приёму.
            if (TX_RDY_T && TX_RDY_R) begin
                tx_req  <= 1'b1;
                TX_RDY_R <= 1'b0;  // готовность сняли до окончания передачи
            end
            // Возврат готовности после завершения стоп-бита
            else if (tick && (t_state == T_STOP) && (t_samp == RATIO-1)) begin
                TX_RDY_R <= 1'b1;
            end
            // Сброс запроса, когда TX FSM ушёл в START
            else if (tick && (t_state == T_START)) begin
                tx_req <= 1'b0;
            end
        end
    end

    // --- TX FSM ---
    always @(posedge clk) begin
        if (rst) begin
            t_state <= T_IDLE;
            t_out   <= 1'b1;
            t_bit   <= 3'd0;
            t_samp  <= 4'd0;
            t_shift <= 8'h00;
        end else if (tick) begin
            case (t_state)
                T_IDLE: begin
                    t_out <= 1'b1;
                    if (tx_req) begin
                        t_shift <= TX_DATA_R;
                        t_bit   <= 0;
                        t_samp  <= 0;
                        t_state <= T_START;
                    end
                end

                T_START: begin
                    t_out <= 1'b0;
                    if (t_samp == RATIO-1) begin
                        t_samp  <= 0;
                        t_state <= T_DATA;
                    end else begin
                        t_samp <= t_samp + 1;
                    end
                end

                T_DATA: begin
                    t_out <= t_shift[0];
                    if (t_samp == RATIO-1) begin
                        t_samp  <= 0;
                        t_shift <= {1'b0, t_shift[7:1]};
                        if (t_bit == 3'd7)
                            t_state <= T_PAR;
                        else
                            t_bit   <= t_bit + 1;
                    end else begin
                        t_samp <= t_samp + 1;
                    end
                end

                T_PAR: begin
                    t_out <= 1'b0; // SPACE parity = 0
                    if (t_samp == RATIO-1) begin
                        t_samp  <= 0;
                        t_state <= T_STOP;
                    end else begin
                        t_samp <= t_samp + 1;
                    end
                end

                T_STOP: begin
                    t_out <= 1'b1;
                    if (t_samp == RATIO-1) begin
                        t_samp  <= 0;
                        t_state <= T_IDLE;
                    end else begin
                        t_samp <= t_samp + 1;
                    end
                end

                default: t_state <= T_IDLE;
            endcase
        end
    end

endmodule
