`timescale 1ns/1ps
module SS_DC_HEX_ASCII_TB;

    reg  [3:0] hex;
    wire [7:0] ascii;

    // DUT
    SS_DC_HEX_ASCII dut (
        .hex(hex),
        .ascii(ascii)
    );

    // Печать результата
    task show;
        begin
            $display("[%0t ns] HEX=%1h -> ASCII='%s' (0x%02h)", 
                     $time, hex, ascii, ascii);
        end
    endtask

    integer i;

    initial begin
        $display("=== TEST: SS_DC_HEX_ASCII ===");
        for (i = 0; i < 16; i = i + 1) begin
            hex = i[3:0];
            #10 show();
        end
        $display("=== END OF TEST ===");
        #10 $finish;
    end
endmodule
