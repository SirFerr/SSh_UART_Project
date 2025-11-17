module SS_UART #(
    parameter integer CLK_HZ      = 100_000_000,
    parameter integer BAUD        = 1800,
    parameter integer RATIO       = 8,
    parameter integer SYNC_STAGES = 3
)(
    input  wire clk,
    input  wire rst,

    // UART RX
    input  wire uart_rx_i,
    output reg        rx_valid = 0,
    output reg [7:0]  rx_data  = 8'h00,
    output reg        rx_parity_err = 0,
    output reg        rx_frame_err  = 0,

    // UART TX
    output wire uart_tx_o,
    input  wire [7:0] tx_data,
    input  wire       tx_start,
    output reg        tx_busy = 0
);

    // -------------------------------------------------------------
    // Baud generator (Instance of SS_DIVIDER)
    // -------------------------------------------------------------
    localparam integer DIV = CLK_HZ / (BAUD * RATIO);
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
    // RX synchronizer
    // -------------------------------------------------------------
    reg [SYNC_STAGES-1:0] rx_sync = {SYNC_STAGES{1'b1}};
    always @(posedge clk)
        rx_sync <= {rx_sync[SYNC_STAGES-2:0], uart_rx_i};
    wire rx = rx_sync[SYNC_STAGES-1];

    // -------------------------------------------------------------
    // RX FSM
    // -------------------------------------------------------------
    localparam [2:0]
        R_IDLE  = 0,
        R_START = 1,
        R_DATA  = 2,
        R_PAR   = 3,
        R_STOP  = 4,
        R_DONE  = 5;

    reg [2:0] r_state = R_IDLE;
    reg [2:0] r_bit   = 0;
    reg [3:0] r_sample = 0;
    reg [7:0] r_shift  = 0;

    always @(posedge clk) begin
        if (rst) begin
            r_state <= R_IDLE;
            rx_valid <= 0;
            rx_parity_err <= 0;
            rx_frame_err <= 0;
            r_bit <= 0;
            r_sample <= 0;
            r_shift <= 0;
        end else begin
            rx_valid <= 0;

            if (tick) begin
                case (r_state)
                    R_IDLE: begin
                        rx_parity_err <= 0;
                        rx_frame_err <= 0;
                        if (!rx) begin
                            r_state <= R_START;
                            r_sample <= 0;
                        end
                    end

                    R_START: begin
                        if (r_sample == RATIO/2) begin
                            if (!rx) begin
                                r_state <= R_DATA;
                                r_bit <= 0;
                                r_sample <= 0;
                            end else
                                r_state <= R_IDLE;
                        end else
                            r_sample <= r_sample + 1;
                    end

                    R_DATA: begin
                        if (r_sample == RATIO - 1) begin
                            r_shift <= {rx, r_shift[7:1]};
                            r_sample <= 0;
                            if (r_bit == 7)
                                r_state <= R_PAR;
                            else
                                r_bit <= r_bit + 1;
                        end else
                            r_sample <= r_sample + 1;
                    end

                    R_PAR: begin
                        if (r_sample == RATIO - 1) begin
                            // «десь используетс€ space parity (бит четности всегда 0), 
                            // как было в оригинальном коде TX (space parity).
                            // ≈сли вы хотите стандартную четность, логику нужно мен€ть.
                            if (rx != 1'b0) rx_parity_err <= 1;
                            r_state <= R_STOP;
                            r_sample <= 0;
                        end else
                            r_sample <= r_sample + 1;
                    end

                    R_STOP: begin
                        if (r_sample == RATIO - 1) begin
                            if (rx != 1'b1) rx_frame_err <= 1;
                            r_state <= R_DONE;
                        end else
                            r_sample <= r_sample + 1;
                    end

                    R_DONE: begin
                        rx_data <= r_shift;
                        rx_valid <= 1;
                        r_state <= R_IDLE;
                    end
                endcase
            end
        end
    end

    // -------------------------------------------------------------
    // TX FSM
    // -------------------------------------------------------------
    localparam [2:0]
        T_IDLE  = 0,
        T_START = 1,
        T_DATA  = 2,
        T_PAR   = 3,
        T_STOP  = 4;

    reg [2:0] t_state = T_IDLE;
    reg [2:0] t_bit   = 0;
    reg [7:0] t_shift = 0;
    reg [3:0] t_samp  = 0;
    reg       t_out   = 1'b1;
    reg       tx_req  = 0;

    assign uart_tx_o = t_out;

    // латчим запрос
    always @(posedge clk) begin
        if (rst)
            tx_req <= 0;
        else if (tx_start)
            tx_req <= 1;
        else if (tick && (t_state == T_START))
            tx_req <= 0;
    end

    always @(posedge clk) begin
        if (rst) begin
            t_state <= T_IDLE;
            t_out   <= 1'b1;
            tx_busy <= 0;
            t_bit   <= 0;
            t_samp  <= 0;
        end else if (tick) begin
            case (t_state)
                T_IDLE: begin
                    t_out <= 1'b1;
                    tx_busy <= 0;
                    if (tx_req) begin
                        t_shift <= tx_data;
                        t_bit   <= 0;
                        tx_busy <= 1;
                        t_state <= T_START;
                    end
                end

                T_START: begin
                    t_out <= 1'b0;
                    if (t_samp == RATIO-1) begin
                        t_samp <= 0;
                        t_state <= T_DATA;
                    end else t_samp <= t_samp + 1;
                end

                T_DATA: begin
                    t_out <= t_shift[0];
                    if (t_samp == RATIO-1) begin
                        t_samp  <= 0;
                        t_shift <= {1'b0, t_shift[7:1]};
                        if (t_bit == 7)
                            t_state <= T_PAR;
                        else
                            t_bit <= t_bit + 1;
                    end else t_samp <= t_samp + 1;
                end

                T_PAR: begin
                    t_out <= 1'b0; // space parity
                    if (t_samp == RATIO-1) begin
                        t_samp <= 0;
                        t_state <= T_STOP;
                    end else t_samp <= t_samp + 1;
                end

                T_STOP: begin
                    t_out <= 1'b1;
                    if (t_samp == RATIO-1) begin
                        t_samp <= 0;
                        t_state <= T_IDLE;
                        tx_busy <= 0;
                    end else t_samp <= t_samp + 1;
                end
            endcase
        end
    end
endmodule