module SS_FSM #(parameter OP_WIDTH = 52)(

    input  wire clk,
    input  wire rst,

    // UART ? FSM
    input  wire       RX_DATA_EN,
    input  wire [7:0] RX_DATA_T,
    input  wire       rx_parity_err,
    input  wire       rx_frame_err,

    // FSM ? UART
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

    // Состояния
    localparam S_IDLE      = 0;
    localparam S_IN        = 1;
    localparam S_DONE      = 2;

    localparam S_HDR_FETCH = 3,
               S_HDR_SEND  = 4,
               S_HDR_LATCH = 5,
               S_HDR_WAIT  = 6;

    localparam S_RES_CHECK = 7,
               S_RES_SEND  = 8,
               S_RES_LATCH = 9,
               S_RES_WAIT  = 10;

    localparam S_ERR_FETCH = 11,
               S_ERR_SEND  = 12,
               S_ERR_LATCH = 13,
               S_ERR_WAIT  = 14;

    localparam S_SEND_NL   = 15,
               S_LATCH_NL  = 16,
               S_WAIT_NL   = 17;

    reg [4:0] st;

    // Отложенные ошибки
    reg       pending_err;
    reg [2:0] pending_err_type;

    // DEC ASCII ? HEX
    wire [3:0] in_hex;
    wire       in_ok;

    SS_DC_ASCII_HEX u_dec (
        .ascii (RX_DATA_T),
        .hex   (in_hex),
        .valid (in_ok)
    );

    // Данные
    reg [OP_WIDTH-1:0] ACC;   // аккумулятор
    reg [OP_WIDTH-1:0] INP;   // текущее вводимое число

    reg [103:0] result;

    // HEX ? ASCII encoder
    wire [7:0] out_ch;
    wire [3:0] nib = result[103:100];

    SS_DC_HEX_ASCII u_enc (
        .hex  (nib),
        .ascii(out_ch)
    );

    // ROM
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

    // Send task
    task send;
        input [7:0] c;
        begin
            TX_DATA_R <= c;
            TX_RDY_T  <= 1'b1;
        end
    endtask;

    // ==========================================================
    // FSM
    // ==========================================================
    always @(posedge clk) begin
        if (rst) begin
            st <= S_IDLE;

            TX_RDY_T <= 0;
            TX_DATA_R <= 0;

            ACC <= 0;
            INP <= 0;

            cnt_hex <= 0;
            out_cnt <= 0;

            rom_sel <= 0;
            rom_idx <= 0;

            pending_err <= 0;
            pending_err_type <= MSG_FMT;

            result <= 0;

        end else begin

            TX_RDY_T <= 0;

            // UART error ? only remember it
            if (RX_DATA_EN && (rx_parity_err || rx_frame_err)) begin
                pending_err <= 1'b1;

                if (rx_parity_err && rx_frame_err)
                    pending_err_type <= MSG_BOTH;
                else if (rx_parity_err)
                    pending_err_type <= MSG_PAR;
                else
                    pending_err_type <= MSG_FRM;
            end

            case (st)

                // ---------------------------------------------------
                // IDLE
                // ---------------------------------------------------
                S_IDLE: begin

                    // всегда готовим ввод
                    INP <= 0;
                    cnt_hex <= 0;

                    // сначала выводим отложенную ошибку
                    if (pending_err) begin
                        pending_err <= 0;
                        rom_sel <= pending_err_type;
                        rom_idx <= 0;
                        st <= S_ERR_FETCH;
                    end

                    // принимаем первый символ числа
                    else if (RX_DATA_EN) begin
                        if (in_ok) begin
                            INP <= in_hex;
                            cnt_hex <= 1;
                            st <= S_IN;
                        end else begin
                            // ошибка формата
                            rom_sel <= MSG_FMT;
                            rom_idx <= 0;
                            st <= S_ERR_FETCH;
                        end
                    end
                end

                // ---------------------------------------------------
                // NUMBER INPUT (1-13 symbols)
                // ---------------------------------------------------
                S_IN: begin
                    if (RX_DATA_EN) begin

                        // ENTER ? конец числа
                        if (RX_DATA_T == 8'h0D || RX_DATA_T == 8'h0A) begin
                            st <= S_DONE;
                        end

                        else if (cnt_hex < 13) begin
                            if (in_ok) begin
                                INP <= {INP[OP_WIDTH-5:0], in_hex};
                                cnt_hex <= cnt_hex + 1;
                            end else begin
                                // ошибка формата
                                rom_sel <= MSG_FMT;
                                rom_idx <= 0;
                                INP <= 0;        // FIX: prevent negative effect
                                cnt_hex <= 0;
                                st <= S_ERR_FETCH;
                            end
                        end

                        else begin
                            // число слишком длинное
                            rom_sel <= MSG_FMT;
                            rom_idx <= 0;
                            INP <= 0;            // FIX
                            cnt_hex <= 0;
                            st <= S_ERR_FETCH;
                        end
                    end
                end

                // ---------------------------------------------------
                // SUM: ACC = ACC + INP
                // ---------------------------------------------------
                S_DONE: begin
                    ACC    <= ACC + INP;
                    result <= ACC + INP;

                    rom_sel <= MSG_ANS;
                    rom_idx <= 0;
                    out_cnt <= 0;

                    st <= S_HDR_FETCH;
                end

                // ---------------------------------------------------
                // HEADER
                // ---------------------------------------------------
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
                        if (rom_last)
                            st <= S_RES_CHECK;
                        else begin
                            rom_idx <= rom_idx + 1;
                            st <= S_HDR_FETCH;
                        end
                    end
                end

                // ---------------------------------------------------
                // RESULT
                // ---------------------------------------------------
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
                        result <= {result[99:0], 4'b0000};
                        out_cnt <= out_cnt + 1;

                        if (out_cnt == 25)
                            st <= S_SEND_NL;
                        else
                            st <= S_RES_CHECK;
                    end
                end

                // ---------------------------------------------------
                // ERROR OUTPUT
                // ---------------------------------------------------
                S_ERR_FETCH: begin
                    INP <= 0;           // FIX #1: reset input number
                    cnt_hex <= 0;       // FIX #2: reset counter
                    st <= S_ERR_SEND;
                end

                S_ERR_SEND: begin
                    if (TX_RDY_R) begin
                        send(rom_ch);
                        st <= S_ERR_LATCH;
                    end
                end

                S_ERR_LATCH: st <= S_ERR_WAIT;

                S_ERR_WAIT: begin
                    if (TX_RDY_R) begin
                        if (rom_last)
                            st <= S_SEND_NL;
                        else begin
                            rom_idx <= rom_idx + 1;
                            st <= S_ERR_FETCH;
                        end
                    end
                end

                // ---------------------------------------------------
                // NEWLINE
                // ---------------------------------------------------
                S_SEND_NL: begin
                    if (TX_RDY_R) begin
                        send(8'h0A);  // '\n'
                        st <= S_LATCH_NL;
                    end
                end

                S_LATCH_NL: st <= S_WAIT_NL;

                S_WAIT_NL: begin
                    if (TX_RDY_R)
                        st <= S_IDLE;
                end

            endcase
        end
    end
endmodule
