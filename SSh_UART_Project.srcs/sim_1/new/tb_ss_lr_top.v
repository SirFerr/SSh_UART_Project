`timescale 1ns/1ps

module tb_ss_fsm;

    reg        clk = 0;
    reg        rst = 0;

    reg        rx_valid = 0;
    reg        rx_parity_err = 0;
    reg        rx_frame_err  = 0;
    reg  [7:0] rx_data = 8'h00;

    wire       tx_start;
    wire [7:0] tx_data;
    reg        tx_busy = 0;

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

    always #5 clk = ~clk; // 100 MHz clock

    // *** UART SIMULATION: busy for 8 cycles after tx_start ***
    reg [3:0] busy_cnt = 0;
    always @(posedge clk) begin
        if (tx_start) begin
            tx_busy <= 1;
            busy_cnt <= 8;
        end else if (busy_cnt != 0) begin
            busy_cnt <= busy_cnt - 1;
            if (busy_cnt == 1)
                tx_busy <= 0;
        end else begin
            tx_busy <= 0;
        end
    end

    // Send one ASCII char to FSM
    task send_char(input [7:0] ch);
        begin
            rx_data  <= ch;
            rx_valid <= 1'b1;
            @(posedge clk);
            rx_valid <= 1'b0;
            repeat(3) @(posedge clk);
        end
    endtask

    // Print TX output
    always @(posedge clk)
        if (tx_start)
            $write("%c", tx_data);

    initial begin
        $display("\n=== FSM TB start ===");

        rst <= 1;
        repeat(5) @(posedge clk);
        rst <= 0;
        repeat(5) @(posedge clk);

        // "10 10="
        send_char("1");
        send_char("0");
        send_char(" ");
        send_char("1");
        send_char("0");
        send_char("=");

        repeat(2000) @(posedge clk);
        $display("\n\n=== FSM TB end ===");
        $finish;
    end

endmodule
