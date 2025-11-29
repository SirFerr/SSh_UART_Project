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

    // messages
    localparam MSG_ANS = 3'd0;
    localparam MSG_FMT = 3'd1;
    localparam MSG_PAR = 3'd2;
    localparam MSG_FRM = 3'd3;

    // states
    localparam S_IDLE     = 0,
               S_IN_A     = 1,
               S_SPACE    = 2,
               S_IN_B     = 3,
               S_WAIT_EQ  = 4,
               S_SEND_HDR = 5,
               S_PREP_RES = 6,
               S_SEND_RES = 7;

    reg [2:0] st;

    // ASCII ? HEX decoder
    wire [3:0] in_hex;
    wire       in_ok;
    SS_DC_ASCII_HEX dec (.ascii(rx_data), .hex(in_hex), .valid(in_ok));

    // HEX ? ASCII encoder
    reg  [3:0] nib;
    wire [7:0] out_ch;
    SS_DC_HEX_ASCII enc (.hex(nib), .ascii(out_ch));

    // ROM messages
    reg  [2:0] rom_sel;
    reg  [7:0] rom_idx;
    wire [7:0] rom_ch;
    wire       rom_last;
    SS_ROM rom (.clk(clk), .sel(rom_sel), .addr(rom_idx), .data(rom_ch), .last(rom_last));

    // data regs
    reg [OP_WIDTH-1:0] A, B;
    reg [4:0] cnt_hex;

    reg [103:0] result;
    reg [5:0]   out_cnt;
    reg [5:0]   msb_idx;

    task send;
        input [7:0] c;
        begin
            tx_data  <= c;
            tx_start <= 1'b1;
        end
    endtask

    integer i;

    always @(posedge clk) begin
        if (rst) begin
            st <= S_IDLE;
            tx_start <= 0;
            A <= 0; B <= 0; cnt_hex <= 0;
            result <= 0; out_cnt <= 0; msb_idx <= 0;
            rom_idx <= 0; rom_sel <= MSG_ANS;
        end else begin
            tx_start <= 0;

            case (st)

            // ===== INPUT A =====
            S_IDLE: begin
                A <= 0; B <= 0; cnt_hex <= 0;
                if (rx_valid) begin
                    if (in_ok) begin
                        A <= in_hex;
                        cnt_hex <= 1;
                        st <= S_IN_A;
                    end else begin
                        rom_sel <= MSG_FMT; rom_idx <= 0;
                        st <= S_SEND_HDR;
                    end
                end
            end

            S_IN_A: begin
                if (rx_valid) begin
                    if (in_ok && cnt_hex < 13) begin
                        A <= {A[OP_WIDTH-5:0], in_hex};
                        cnt_hex <= cnt_hex + 1;
                    end else if (rx_data == " ") begin
                        cnt_hex <= 0;
                        st <= S_SPACE;
                    end else begin
                        rom_sel <= MSG_FMT; rom_idx <= 0;
                        st <= S_SEND_HDR;
                    end
                end
            end

            // ===== SPACE separator =====
            S_SPACE: begin
                if (rx_valid) begin
                    if (in_ok) begin
                        B <= in_hex;
                        cnt_hex <= 1;
                        st <= S_IN_B;
                    end else begin
                        rom_sel <= MSG_FMT; rom_idx <= 0;
                        st <= S_SEND_HDR;
                    end
                end
            end

            // ===== INPUT B =====
            S_IN_B: begin
                if (rx_valid) begin
                    if (in_ok && cnt_hex < 13) begin
                        B <= {B[OP_WIDTH-5:0], in_hex};
                        cnt_hex <= cnt_hex + 1;
                    end else if (rx_data == "=") begin
                        st <= S_WAIT_EQ;
                    end else begin
                        rom_sel <= MSG_FMT; rom_idx <= 0;
                        st <= S_SEND_HDR;
                    end
                end
            end

            // ===== COMPUTE =====
            S_WAIT_EQ: begin
                result <= A + B;
                rom_sel <= MSG_ANS;
                rom_idx <= 0;
                st <= S_SEND_HDR;
            end

            // ===== SEND HEADER =====
            S_SEND_HDR: begin
                if (!tx_busy) begin
                    send(rom_ch);
                    if (rom_last) begin
                        st <= S_PREP_RES;
                    end else begin
                        rom_idx <= rom_idx + 1;
                    end
                end
            end

            // ===== FIND NON-ZERO START DIGIT =====
            S_PREP_RES: begin
                msb_idx <= 0;
                for (i = 25; i >= 0; i = i - 1)
                    if (result[4*i +: 4] != 4'h0)
                        msb_idx <= i[5:0];

                if (result == 0)
                    msb_idx <= 0;

                out_cnt <= msb_idx;
                st <= S_SEND_RES;
            end

            // ===== SEND HEX RESULT =====
            S_SEND_RES: begin
                if (!tx_busy) begin
                    nib <= result[4*out_cnt +: 4];
                    send(out_ch);

                    if (out_cnt == 0)
                        st <= S_IDLE;
                    else
                        out_cnt <= out_cnt - 1;
                end
            end

            endcase
        end
    end
endmodule
