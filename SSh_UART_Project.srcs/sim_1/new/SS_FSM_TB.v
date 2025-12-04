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
            $display("[%t] RX: '%s' (0x%h), ParityErr=%b, FrameErr=%b", $time, data, data, parity_err, frame_err);
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

    // Монитор вывода TX
    always @(posedge clk) begin
        if (tx_start)
            $display("[%t] TX: '%s' (0x%h)", $time, tx_data, tx_data);
    end

    initial begin
        $display("=== FSM Testbench Start ===");
        rst = 1; rx_valid = 0; rx_parity_err = 0; rx_frame_err = 0; rx_data = 0;
        #20 rst = 0;

        $display("\n--- Тест 1: Корректные A + B ---");
        send_operand(52'hA1);
        send_byte(" ", 0, 0);            // пробел
        send_operand(52'h1BB);
        send_byte(8'h0D, 0, 0);  // CR
        send_byte(8'h0A, 0, 0);  // LF

        #1000;

        $display("\n--- Тест 2: Ошибка четности ---");
        send_byte("A", 1, 0);

        #500;

        $display("\n--- Тест 3: Ошибка кадра ---");
        send_byte("A", 0, 1);

        #500;
        
        $display("\n--- Тест 3: Ошибка четности + кадр ---");
        send_byte("A", 1, 1);

        #500;

        $display("\n--- Тест 4: Ошибка формата ---");
        send_byte("Z", 0, 0); // не HEX-символ

        #1000;

        $display("=== FSM Testbench Done ===");
        $finish;
    end

endmodule
