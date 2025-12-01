`timescale 1ns / 1ps

module SS_FSM_TB;

    reg clk = 0;
    always #5 clk = ~clk; // 100 MHz

    reg rst;
    reg rx_valid;
    reg rx_parity_err;
    reg rx_frame_err;
    reg [7:0] rx_data;
    wire tx_start;
    wire [7:0] tx_data;
    reg tx_busy = 0;

    SS_FSM #(.OP_WIDTH(52)) dut (
        .clk(clk),
        .rst(rst),
        .rx_valid(rx_valid),
        .rx_parity_err(rx_parity_err),
        .rx_frame_err(rx_frame_err),
        .rx_data(rx_data),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx_busy(tx_busy)
    );

    task send_byte;
        input [7:0] data;
        input parity_err;
        input frame_err;
        begin
            @(posedge clk);
            rx_data <= data;
            rx_parity_err <= parity_err;
            rx_frame_err <= frame_err;
            rx_valid <= 1;
            @(posedge clk);
            rx_valid <= 0;
            rx_data <= 0;
            rx_parity_err <= 0;
            rx_frame_err <= 0;
        end
    endtask

    task send_operand;
        input [103:0] value;
        integer i;
        reg [7:0] ch;
        begin
            for (i = 12; i >= 0; i = i - 1) begin
                ch = (value >> (i*4)) & 4'hF;
                if (ch < 10)
                    send_byte(8'h30 + ch, 0, 0); // '0' + digit
                else
                    send_byte(8'h41 + (ch - 10), 0, 0); // 'A' + hex
            end
        end
    endtask

    initial begin
        $display("Start FSM Testbench");
        rst = 1; rx_valid = 0; rx_parity_err = 0; rx_frame_err = 0; rx_data = 0;
        #20 rst = 0;

        // 1. Корректный ввод: 13 hex A + пробел + 13 hex B + '='
        send_operand(52'h0000_0000_0001); // A = 1
        send_byte(" ", 0, 0);            // пробел
        send_operand(52'h0000_0000_0002); // B = 2
        send_byte("=", 0, 0);            // "="

        // 2. Ошибка четности
        #200;
        send_byte("A", 1, 0);

        // 3. Ошибка кадра
        #200;
        send_byte("A", 0, 1);

        // 4. Ошибка формата
        #200;
        send_byte("Z", 0, 0);

        // Завершение
        #1000;
        $finish;
    end

endmodule
