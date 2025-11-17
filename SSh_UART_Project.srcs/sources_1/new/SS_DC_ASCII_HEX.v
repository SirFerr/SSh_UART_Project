module SS_DC_ASCII_HEX(
    input  wire [7:0] ascii,
    output reg  [3:0] hex,
    output reg        valid
);
    always @* begin
        valid = 1'b1;
        case (ascii)
            "0": hex=4'h0; "1": hex=4'h1; "2": hex=4'h2; "3": hex=4'h3;
            "4": hex=4'h4; "5": hex=4'h5; "6": hex=4'h6; "7": hex=4'h7;
            "8": hex=4'h8; "9": hex=4'h9;
            "A","a": hex=4'hA; "B","b": hex=4'hB; "C","c": hex=4'hC;
            "D","d": hex=4'hD; "E","e": hex=4'hE; "F","f": hex=4'hF;
            default: begin hex=4'h0; valid=1'b0; end
        endcase
    end
endmodule
