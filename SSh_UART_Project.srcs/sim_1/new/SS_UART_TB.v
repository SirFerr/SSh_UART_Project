`timescale 1ns/1ps
module SS_UART_TB;
    localparam CLK_HZ = 100_000_000;
    localparam BAUD   = 1800;
    localparam BIT_T  = 1_000_000_000.0 / BAUD; // ns на бит (~555_556 нс)

    reg clk = 0;
    always #5 clk = ~clk; // 100 MHz

    reg rst = 1;
    reg  rx = 1'b1;
    wire tx;

    wire        rx_valid;
    wire        rx_parity_err;
    wire        rx_frame_err;
    wire [7:0]  rx_data;
    reg         tx_start = 0;
    reg  [7:0]  tx_data  = 8'h00;
    wire        tx_busy;

    // DUT
    SS_UART #(
        .CLK_HZ(CLK_HZ),
        .BAUD(BAUD),
        .RATIO(8)
    ) dut (
        .clk(clk),
        .rst(rst),
        .uart_rx_i(rx),
        .rx_valid(rx_valid),
        .rx_parity_err(rx_parity_err),
        .rx_frame_err(rx_frame_err),
        .rx_data(rx_data),
        .uart_tx_o(tx),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx_busy(tx_busy)
    );

    // helper: послать байт в линию RX
    task send_uart_byte;
        input [7:0] b;
        input parity_err;
        input frame_err;
        integer i;
        begin
            rx = 0; #(BIT_T); // старт-бит
            for (i=0; i<8; i=i+1) begin
                rx = b[i]; #(BIT_T);
            end
            rx = parity_err ? 1'b1 : 1'b0; #(BIT_T); // бит чётности
            rx = frame_err ? 1'b0 : 1'b1; #(BIT_T);  // стоп-бит
            rx = 1'b1; #(BIT_T*3); // пауза
        end
    endtask

    always @(posedge clk) begin
        if (rx_valid) begin
            $display("[%0t ns] ? RX VALID | data=0x%02h | frame_err=%0d | parity_err=%0d",
                     $time, rx_data, rx_frame_err, rx_parity_err);
        end
    end

    initial begin
        $display("=== UART CONTROLLER TEST START ===");
        repeat (20) @(posedge clk);
        rst = 0;
        #1_000_000; // 1 ms

        // 1. Приём без ошибок
        $display("\n[TEST 1] Normal receive (no errors)");
        send_uart_byte(8'h55, 0, 0);
        #(BIT_T*3);

        // 2. Ошибка формата кадра
        $display("\n[TEST 2] Frame format error");
        send_uart_byte(8'hA5, 0, 1);
        #(BIT_T*30);

        // 3. Ошибка чётности
        $display("\n[TEST 3] Parity error");
        send_uart_byte(8'h3C, 1, 0);
        #(BIT_T*30);

        // 4. Ошибка формата и чётности
        $display("\n[TEST 4] Both frame & parity errors");
        send_uart_byte(8'hF0, 1, 1);
        #(BIT_T*3);

        // 5. Передача байта через TX
        $display("\n[TEST 5] TX transmission of 0x5A");
        @(posedge clk);
        wait (!tx_busy);
        tx_data  = 8'h5A;
        tx_start = 1;
        wait (tx_busy);
        tx_start = 0;
        wait (!tx_busy);
        $display("[%0t ns] ? TX finished. TX line=%0d (1=idle)", $time, tx);

        #2_000_000;
        $display("\n=== UART CONTROLLER TEST COMPLETE ===");
        $finish;
    end
endmodule
