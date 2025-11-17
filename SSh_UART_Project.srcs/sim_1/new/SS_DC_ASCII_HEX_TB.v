`timescale 1ns/1ps
module SS_DC_ASCII_HEX_TB;

    reg  [7:0] ascii;
    wire [3:0] hex;
    wire       valid;

    // DUT
    SS_DC_ASCII_HEX dut (
        .ascii(ascii),
        .hex(hex),
        .valid(valid)
    );

    // Печать результатов
    task show;
        begin
            $display("[%0t ns] ASCII='%s' (0x%02h) -> HEX=%1h, VALID=%0d",
                     $time, ascii, ascii, hex, valid);
        end
    endtask

    integer i;

    initial begin
        $display("=== TEST: SS_DC_ASCII_HEX ===");

        // 0..9
        for (i = "0"; i <= "9"; i = i + 1) begin
            ascii = i; #10; show();
        end

        // A..F
        for (i = "A"; i <= "F"; i = i + 1) begin
            ascii = i; #10; show();
        end

        // a..f
        for (i = "a"; i <= "f"; i = i + 1) begin
            ascii = i; #10; show();
        end

        // неверные символы
        ascii = "Z";  #10; show();
        ascii = "?";  #10; show();
        ascii = "*";  #10; show();

        $display("=== END OF TEST ===");
        #10 $finish;
    end
endmodule
