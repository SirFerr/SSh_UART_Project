`timescale 1ns / 1ps

module SS_FSM_TB;

    reg clk = 0;
    always #5 clk = ~clk; // 100 MHz

    reg rst;

    // UART -> FSM  (STP ODPS)
    reg        RX_DATA_EN;
    reg  [7:0] RX_DATA_T;
    reg        rx_parity_err;
    reg        rx_frame_err;

    // FSM -> UART  (DRP ODPS)
    wire       TX_RDY_T;
    wire [7:0] TX_DATA_R;
    reg        TX_RDY_R = 1'b1;  // UART всегда готов принять байт

    // DUT
    SS_FSM #(.OP_WIDTH(52)) dut (
        .clk(clk),
        .rst(rst),

        .RX_DATA_EN(RX_DATA_EN),
        .RX_DATA_T(RX_DATA_T),
        .rx_parity_err(rx_parity_err),
        .rx_frame_err(rx_frame_err),

        .TX_RDY_T(TX_RDY_T),
        .TX_DATA_R(TX_DATA_R),
        .TX_RDY_R(TX_RDY_R)
    );

    // ===== Отправка символа по STP =====
    task send_byte;
        input [7:0] data;
        input parity_err;
        input frame_err;
        begin
            @(posedge clk);
            RX_DATA_T     <= data;
            rx_parity_err <= parity_err;
            rx_frame_err  <= frame_err;
            RX_DATA_EN    <= 1'b1;
            $display("[%t] RX: '%s' (0x%h) P=%b F=%b",
                     $time, data, data, parity_err, frame_err);

            @(posedge clk);
            RX_DATA_EN    <= 1'b0;
            RX_DATA_T     <= 8'h00;
            rx_parity_err <= 1'b0;
            rx_frame_err  <= 1'b0;
        end
    endtask

    // ===== Передача одного операнда (13 hex-символов) =====
    task send_operand;
        input [103:0] value;
        integer i;
        reg [7:0] ch;
        begin
            for (i = 12; i >= 0; i = i - 1) begin
                ch = (value >> (i*4)) & 4'hF;
                if (ch < 10)
                    send_byte(8'h30 + ch, 0, 0); // цифры
                else
                    send_byte(8'h41 + (ch - 10), 0, 0); // A-F
            end
        end
    endtask

    // ===== Монитор отправки данных FSM в UART =====
    always @(posedge clk) begin
        if (TX_RDY_T) begin
            $display("[%t] TX: '%s' (0x%h)", 
                     $time, TX_DATA_R, TX_DATA_R);
        end
    end

    initial begin
        $display("=== FSM + ODPS Test Start ===");
        rst = 1;
        RX_DATA_EN = 0;
        RX_DATA_T  = 0;
        rx_parity_err = 0;
        rx_frame_err  = 0;
        #50 rst = 0;

        // 1. Корректный ввод
        $display("\n--- TEST 1: Correct A + B ---");
        send_operand(52'hA1);
        send_byte(" ", 0, 0);
        send_operand(52'h1BB);
        send_byte(8'h0D, 0, 0);
        send_byte(8'h0A, 0, 0);

        #2000;

        // 2. Ошибка четности
        $display("\n--- TEST 2: Parity error ---");
        send_byte("A", 1, 0);
        #2000;

        // 3. Ошибка кадра
        $display("\n--- TEST 3: Frame error ---");
        send_byte("A", 0, 1);
        #2000;

        // 4. Обе ошибки
        $display("\n--- TEST 4: Both errors ---");
        send_byte("A", 1, 1);
        #2000;

        // 5. Ошибка формата
        $display("\n--- TEST 5: Format error ---");
        send_byte("Z", 0, 0);
        #2000;

        $display("\n=== FSM + ODPS Test Done ===");
        $finish;
    end

endmodule
