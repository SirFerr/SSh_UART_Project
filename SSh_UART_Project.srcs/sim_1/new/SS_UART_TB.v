`timescale 1ns/1ps
module SS_UART_TB;

    localparam CLK_HZ = 100_000_000;
    localparam BAUD   = 1800;
    localparam real BIT_T  = 1_000_000_000.0 / BAUD;

    reg clk = 0;
    always #5 clk = ~clk; // 100 MHz

    reg rst = 1;

    // Линии UART
    reg  rx = 1'b1;   // RXD вход в DUT
    wire tx;          // TXD выход DUT

    // ODPS + флаги ошибок
    wire        RX_DATA_EN;
    wire [7:0]  RX_DATA_T;
    wire        rx_parity_err;
    wire        rx_frame_err;

    reg         TX_RDY_T  = 1'b0;
    reg  [7:0]  TX_DATA_R = 8'h00;
    wire        TX_RDY_R;

    // DUT
    SS_UART #(
        .CLK_HZ(CLK_HZ),
        .BAUD  (BAUD),
        .RATIO (8)
    ) dut (
        .clk          (clk),
        .rst          (rst),
        .uart_rx_i    (rx),
        .uart_tx_o    (tx),

        .rx_parity_err(rx_parity_err),
        .rx_frame_err (rx_frame_err),

        // STP
        .RX_DATA_EN   (RX_DATA_EN),
        .RX_DATA_T    (RX_DATA_T),

        // DRP
        .TX_RDY_T     (TX_RDY_T),
        .TX_DATA_R    (TX_DATA_R),
        .TX_RDY_R     (TX_RDY_R)
    );

    // ===== helper: послать байт в линию RX (как раньше) =====
    task send_uart_byte;
        input [7:0] b;
        input parity_err;
        input frame_err;
        integer i;
        begin
            rx = 0; #(BIT_T); // старт-бит
            for (i = 0; i < 8; i = i + 1) begin
                rx = b[i]; #(BIT_T);
            end
            // бит "паритета" (SPACE=0, но мы можем искусственно ошибиться)
            rx = parity_err ? 1'b1 : 1'b0; #(BIT_T);
            // стоп-бит (обычно 1, но можем сделать ошибку формата)
            rx = frame_err ? 1'b0 : 1'b1;  #(BIT_T);
            rx = 1'b1; #(BIT_T*3); // пауза
        end
    endtask

    // ===== helper: передать байт через ODPS DRP =====
    task send_tx_byte_odps;
        input [7:0] b;
        begin
            // ждать, пока UART готов принять байт (TX_RDY_R=1)
            @(posedge clk);
            wait (TX_RDY_R == 1'b1);

            TX_DATA_R <= b;
            TX_RDY_T  <= 1'b1;   // импульс "готов передать"
            @(posedge clk);
            TX_RDY_T  <= 1'b0;

            // ждать завершения передачи (TX_RDY_R вернётся в 1)
            wait (TX_RDY_R == 1'b0); // байт захвачен
            wait (TX_RDY_R == 1'b1); // передача закончена
        end
    endtask

    // Лог RX по ODPS
    always @(posedge clk) begin
        if (RX_DATA_EN) begin
            $display("[%0t ns] RX_DATA_EN | data=0x%02h | frame_err=%0d | parity_err=%0d",
                     $time, RX_DATA_T, rx_frame_err, rx_parity_err);
        end
    end

    initial begin
        $display("=== UART CONTROLLER (ODPS) TEST START ===");
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

        // 5. Передача байта через ODPS DRP
        $display("\n[TEST 5] TX via ODPS (byte 0x5A)");
        send_tx_byte_odps(8'h5A);
        $display("[%0t ns] TX finished. TX line=%0d (1=idle)", $time, tx);

        #2_000_000;
        $display("\n=== UART CONTROLLER (ODPS) TEST COMPLETE ===");
        $finish;
    end

endmodule
