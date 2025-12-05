module SS_FSM #(
    parameter OP_WIDTH = 52
)(
    input  wire clk,
    input  wire rst,

    // Порт STP (UART -> FSM, ODPS)
    input  wire       RX_DATA_EN,
    input  wire [7:0] RX_DATA_T,
    input  wire       rx_parity_err,
    input  wire       rx_frame_err,

    // Порт DRP (FSM -> UART, ODPS)
    output reg        TX_RDY_T,
    output reg [7:0]  TX_DATA_R,
    input  wire       TX_RDY_R
);
    // Коды сообщений
    localparam MSG_ANS  = 3'd0;
    localparam MSG_FRM  = 3'd1;
    localparam MSG_PAR  = 3'd2;
    localparam MSG_FMT  = 3'd3;
    localparam MSG_BOTH = 3'd4;

    // Состояния FSM
    localparam S_IDLE       = 0;
    localparam S_IN_A       = 1;
    localparam S_SPACE      = 2;
    localparam S_IN_B       = 3;
    localparam S_WAIT_EQ    = 4;

    // Заголовок
    localparam S_HDR_FETCH  = 5,
               S_HDR_SEND   = 6,
               S_HDR_LATCH  = 7,
               S_HDR_WAIT   = 8;

    // Результат
    localparam S_RES_CHECK  = 9,
               S_RES_SEND   = 10,
               S_RES_LATCH  = 11,
               S_RES_WAIT   = 12;

    // Ошибки
    localparam S_ERR_FETCH  = 13,
               S_ERR_SEND   = 14,
               S_ERR_LATCH  = 15,
               S_ERR_WAIT   = 16;

    reg [4:0] st;

    // Декодер ASCII -> HEX
    wire [3:0] in_hex;
    wire       in_ok;
    SS_DC_ASCII_HEX u_dec (
        .ascii (RX_DATA_T),
        .hex   (in_hex),
        .valid (in_ok)
    );

    // Данные
    reg [OP_WIDTH-1:0] A, B;
    reg [103:0]        result;

    // Энкодер HEX -> ASCII
    wire [3:0] nib = result[103:100];
    wire [7:0] out_ch;
    SS_DC_HEX_ASCII u_enc (
        .hex  (nib),
        .ascii(out_ch)
    );

    // ROM сообщений
    reg  [2:0] rom_sel;
    reg  [7:0] rom_idx;
    wire [7:0] rom_ch;
    wire       rom_last;

    SS_ROM u_rom (
        .clk  (clk),
        .sel  (rom_sel),
        .addr (rom_idx),
        .data (rom_ch),
        .last (rom_last)
    );

    // Счетчики
    reg [4:0] cnt_hex;
    reg [5:0] out_cnt;

    // Отправка байта
    task send;
        input [7:0] c;
        begin
            TX_DATA_R <= c;
            TX_RDY_T  <= 1'b1;
        end
    endtask

    // ---------------------------------------------------------
    // FSM
    // ---------------------------------------------------------
    always @(posedge clk) begin
        if (rst) begin
            st        <= S_IDLE;
            TX_RDY_T  <= 1'b0;
            TX_DATA_R <= 8'h00;
            A <= 0;
            B <= 0;
            cnt_hex <= 0;

            rom_sel <= 0;
            rom_idx <= 0;

            result  <= 0;
            out_cnt <= 0;

        end else begin
            TX_RDY_T <= 1'b0;

            // Ошибки UART
            if (RX_DATA_EN && (rx_parity_err || rx_frame_err)) begin
                st      <= S_ERR_FETCH;
                rom_idx <= 0;

                if (rx_frame_err && rx_parity_err)
                    rom_sel <= MSG_BOTH;
                else if (rx_parity_err)
                    rom_sel <= MSG_PAR;
                else
                    rom_sel <= MSG_FRM;

            end else begin
                case (st)

                    S_IDLE: begin
                        A <= 0;
                        B <= 0;
                        cnt_hex <= 0;
                        if (RX_DATA_EN) begin
                            if (in_ok) begin
                                A       <= {A[OP_WIDTH-5:0], in_hex};
                                cnt_hex <= 1;
                                st      <= S_IN_A;
                            end else begin
                                st      <= S_ERR_FETCH;
                                rom_sel <= MSG_FMT;
                                rom_idx <= 0;
                            end
                        end
                    end

                    S_IN_A: begin
                        if (RX_DATA_EN) begin
                            if (cnt_hex < 13) begin
                                if (in_ok) begin
                                    A       <= {A[OP_WIDTH-5:0], in_hex};
                                    cnt_hex <= cnt_hex + 1;
                                end else begin
                                    st      <= S_ERR_FETCH;
                                    rom_sel <= MSG_FMT;
                                    rom_idx <= 0;
                                end
                            end else begin
                                if (RX_DATA_T == " ") begin
                                    st      <= S_SPACE;
                                    cnt_hex <= 0;
                                end else begin
                                    st      <= S_ERR_FETCH;
                                    rom_sel <= MSG_FMT;
                                    rom_idx <= 0;
                                end
                            end
                        end
                    end

                    S_SPACE: begin
                        if (RX_DATA_EN) begin
                            if (in_ok) begin
                                B       <= {B[OP_WIDTH-5:0], in_hex};
                                cnt_hex <= 1;
                                st      <= S_IN_B;
                            end else begin
                                st      <= S_ERR_FETCH;
                                rom_sel <= MSG_FMT;
                                rom_idx <= 0;
                            end
                        end
                    end

                    S_IN_B: begin
                        if (RX_DATA_EN) begin
                            if (cnt_hex < 13) begin
                                if (in_ok) begin
                                    B       <= {B[OP_WIDTH-5:0], in_hex};
                                    cnt_hex <= cnt_hex + 1;
                                end else begin
                                    st      <= S_ERR_FETCH;
                                    rom_sel <= MSG_FMT;
                                    rom_idx <= 0;
                                end
                            end else begin
                                if (RX_DATA_T == 8'h0D || RX_DATA_T == 8'h0A) begin
                                    st <= S_WAIT_EQ;
                                end else begin
                                    st      <= S_ERR_FETCH;
                                    rom_sel <= MSG_FMT;
                                    rom_idx <= 0;
                                end
                            end
                        end
                    end

                    S_WAIT_EQ: begin
                        result  <= A + B;
                        rom_sel <= MSG_ANS;
                        rom_idx <= 0;
                        out_cnt <= 0;
                        st      <= S_HDR_FETCH;
                    end

                    // Заголовок "aNSwer: "
                    S_HDR_FETCH: st <= S_HDR_SEND;

                    S_HDR_SEND: begin
                        if (TX_RDY_R) begin
                            send(rom_ch);
                            st <= S_HDR_LATCH;
                        end
                    end

                    S_HDR_LATCH: st <= S_HDR_WAIT;

                    S_HDR_WAIT: begin
                        if (TX_RDY_R) begin
                            if (rom_last) begin
                                st <= S_RES_CHECK;
                            end else begin
                                rom_idx <= rom_idx + 1;
                                st      <= S_HDR_FETCH;
                            end
                        end
                    end

                    // Вывод результата (фиксированно 26 nibble)
                    S_RES_CHECK: st <= S_RES_SEND;

                    S_RES_SEND: begin
                        if (TX_RDY_R) begin
                            send(out_ch);
                            st <= S_RES_LATCH;
                        end
                    end

                    S_RES_LATCH: st <= S_RES_WAIT;

                    S_RES_WAIT: begin
                        if (TX_RDY_R) begin
                            result  <= {result[99:0], 4'b0000};
                            out_cnt <= out_cnt + 1;
                            if (out_cnt == 25)
                                st <= S_IDLE;
                            else
                                st <= S_RES_CHECK;
                        end
                    end

                    // Ошибки
                    S_ERR_FETCH: st <= S_ERR_SEND;

                    S_ERR_SEND: begin
                        if (TX_RDY_R) begin
                            send(rom_ch);
                            st <= S_ERR_LATCH;
                        end
                    end

                    S_ERR_LATCH: st <= S_ERR_WAIT;

                    S_ERR_WAIT: begin
                        if (TX_RDY_R) begin
                            if (rom_last) begin
                                rom_idx <= 0;
                                st      <= S_IDLE;
                            end else begin
                                rom_idx <= rom_idx + 1;
                                st      <= S_ERR_FETCH;
                            end
                        end
                    end

                endcase
            end
        end
    end
endmodule
