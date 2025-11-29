module SS_FSM #(
    parameter OP_WIDTH = 52
)(
    input  wire clk,
    input  wire rst,

    // UART RX
    input  wire        rx_valid,
    input  wire        rx_parity_err,
    input  wire        rx_frame_err,
    input  wire [7:0]  rx_data,

    // UART TX
    output reg         tx_start,
    output reg  [7:0]  tx_data,
    input  wire        tx_busy
);
    // сообщения
    localparam MSG_ANS  = 3'd0;
    localparam MSG_FMT  = 3'd1;
    localparam MSG_PAR  = 3'd2;
    localparam MSG_FRM  = 3'd3;
    localparam MSG_BOTH = 3'd4;

    // состояния
    localparam S_IDLE=0, S_IN_A=1, S_SPACE=2, S_IN_B=3, S_WAIT_EQ=4;
    localparam S_SEND_HDR=5, S_SEND_RES=6, S_SEND_ERR=7;

    reg [2:0] st;

    // декодеры
    wire [3:0] in_hex;
    wire       in_ok;
    SS_DC_ASCII_HEX u_dec (.ascii(rx_data), .hex(in_hex), .valid(in_ok));

    reg  [3:0] nib;
    wire [7:0] out_ch;
    SS_DC_HEX_ASCII u_enc (.hex(nib), .ascii(out_ch));

    // ROM
    reg  [2:0] rom_sel;
    reg  [7:0] rom_idx;
    wire [7:0] rom_ch;
    wire       rom_last;
    SS_ROM u_rom (.clk(clk), .sel(rom_sel), .addr(rom_idx), .data(rom_ch), .last(rom_last));

    // регистры
    reg [OP_WIDTH-1:0] A, B;
    reg [4:0] cnt_hex;
    reg [103:0] result;
    reg [5:0] out_cnt;

    task send;
        input [7:0] c;
        begin
            tx_data  <= c;
            tx_start <= 1'b1;
        end
    endtask

    always @(posedge clk) begin
        if (rst) begin
            st <= S_IDLE;
            tx_start <= 0;
            tx_data <= 8'h00;
            A <= 0; B <= 0; cnt_hex <= 0;
            rom_sel <= 0; rom_idx <= 0;
            result <= 0; out_cnt <= 0;
        end else begin
            tx_start <= 0;

            // аппаратные ошибки
            if (rx_parity_err) begin
                st <= S_SEND_ERR;
                rom_sel <= MSG_PAR;
                rom_idx <= 0;
            end else if (rx_frame_err) begin
                st <= S_SEND_ERR;
                rom_sel <= MSG_FRM;
                rom_idx <= 0;
            end else if (rx_parity_err && rx_frame_err) begin
            st <= S_SEND_ERR;
            rom_sel <= MSG_BOTH;
            rom_idx <= 0;
            end

            case (st)
            // -------------------- ввод A --------------------
            S_IDLE: begin
                A <= 0; B <= 0; cnt_hex <= 0;
                if (rx_valid) begin
                    if (in_ok) begin
                        A <= {A[OP_WIDTH-5:0], in_hex};
                        cnt_hex <= 1;
                        st <= S_IN_A;
                    end else begin
                        st <= S_SEND_ERR;
                        rom_sel <= MSG_FMT;
                        rom_idx <= 0;
                    end
                end
            end

            S_IN_A: begin
                if (rx_valid) begin
                    if (cnt_hex < 13) begin
                        if (in_ok) begin
                            A <= {A[OP_WIDTH-5:0], in_hex};
                            cnt_hex <= cnt_hex + 1;
                        end else begin
                            st <= S_SEND_ERR;
                            rom_sel <= MSG_FMT;
                            rom_idx <= 0;
                        end
                    end else begin
                        if (rx_data == " ") begin
                            st <= S_SPACE;
                            cnt_hex <= 0;
                        end else begin
                            st <= S_SEND_ERR;
                            rom_sel <= MSG_FMT;
                            rom_idx <= 0;
                        end
                    end
                end
            end

            // -------------------- ввод B --------------------
            S_SPACE: begin
                if (rx_valid) begin
                    if (in_ok) begin
                        B <= {B[OP_WIDTH-5:0], in_hex};
                        cnt_hex <= 1;
                        st <= S_IN_B;
                    end else begin
                        st <= S_SEND_ERR;
                        rom_sel <= MSG_FMT;
                        rom_idx <= 0;
                    end
                end
            end

            S_IN_B: begin
                if (rx_valid) begin
                    if (cnt_hex < 13) begin
                        if (in_ok) begin
                            B <= {B[OP_WIDTH-5:0], in_hex};
                            cnt_hex <= cnt_hex + 1;
                        end else begin
                            st <= S_SEND_ERR;
                            rom_sel <= MSG_FMT;
                            rom_idx <= 0;
                        end
                    end else begin
                        if (rx_data == "=") begin
                            st <= S_WAIT_EQ;
                        end else begin
                            st <= S_SEND_ERR;
                            rom_sel <= MSG_FMT;
                            rom_idx <= 0;
                        end
                    end
                end
            end

            // -------------------- вычисление --------------------
            S_WAIT_EQ: begin
                result <= A + B;
                rom_sel <= MSG_ANS;
                rom_idx <= 0;
                out_cnt <= 0;
                st <= S_SEND_HDR;
            end

            // -------------------- вывод ответа --------------------
            S_SEND_HDR: begin
                if (!tx_busy) begin
                    send(rom_ch);
                    if (rom_last)
                        st <= S_SEND_RES;
                    else
                        rom_idx <= rom_idx + 1;
                end
            end

            S_SEND_RES: begin
                if (!tx_busy) begin
                    nib <= result[103:100];
                    send(out_ch);
                    result <= {result[99:0], 4'b0};
                    out_cnt <= out_cnt + 1;
                    if (out_cnt == 25)
                        st <= S_IDLE;
                end
            end

            // -------------------- вывод ошибок --------------------
            S_SEND_ERR: begin
                if (!tx_busy) begin
                    send(rom_ch);
                    if (rom_last)
                        st <= S_IDLE;
                    else
                        rom_idx <= rom_idx + 1;
                end
            end
            endcase
        end
    end
endmodule
