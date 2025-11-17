module SS_DC_HEX_ASCII(
    input  wire [3:0] hex,
    output reg  [7:0] ascii
);
    always @* begin
        case (hex)
            4'h0: ascii="0"; 4'h1: ascii="1"; 4'h2: ascii="2"; 4'h3: ascii="3";
            4'h4: ascii="4"; 4'h5: ascii="5"; 4'h6: ascii="6"; 4'h7: ascii="7";
            4'h8: ascii="8"; 4'h9: ascii="9";
            4'hA: ascii="A"; 4'hB: ascii="B"; 4'hC: ascii="C";
            4'hD: ascii="D"; 4'hE: ascii="E"; 4'hF: ascii="F";
        endcase
    end
endmodule
