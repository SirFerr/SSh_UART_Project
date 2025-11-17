module SS_ROM(
    input  wire       clk,
    input  wire [2:0] sel,
    input  wire [7:0] addr,
    output reg  [7:0] data,
    output reg        last
);
    always @(posedge clk) begin
        last <= 1'b0;
        case (sel)
        // ---------- 0: "aNSwer: " ----------
        3'd0: begin
            case (addr)
                8'd0: data <= "a";
                8'd1: data <= "N";
                8'd2: data <= "S";
                8'd3: data <= "w";
                8'd4: data <= "e";
                8'd5: data <= "r";
                8'd6: data <= ":";
                8'd7: begin data <= " "; last <= 1'b1; end
                default: begin data <= 8'h00; last <= 1'b1; end
            endcase
        end

        // ---------- 1: "eRRor: forMat DaTA" ----------
        3'd1: begin
            case (addr)
                8'd0:  data <= "e";
                8'd1:  data <= "R";
                8'd2:  data <= "R";
                8'd3:  data <= "o";
                8'd4:  data <= "r";
                8'd5:  data <= ":";
                8'd6:  data <= " ";
                8'd7:  data <= "f";
                8'd8:  data <= "o";
                8'd9:  data <= "r";
                8'd10: data <= "M";
                8'd11: data <= "a";
                8'd12: data <= "t";
                8'd13: data <= " ";
                8'd14: data <= "D";
                8'd15: data <= "a";
                8'd16: data <= "T";
                8'd17: begin data <= "A"; last <= 1'b1; end
                default: begin data <= 8'h00; last <= 1'b1; end
            endcase
        end

        // ---------- 2: "ERrOR- pARiTy uArT" ----------
        3'd2: begin
            case (addr)
                8'd0: data <= "E";
                8'd1: data <= "R";
                8'd2: data <= "r";
                8'd3: data <= "O";
                8'd4: data <= "R";
                8'd5: data <= "-";
                8'd6: data <= " ";
                8'd7: data <= "p";
                8'd8: data <= "A";
                8'd9: data <= "R";
                8'd10:data <= "i";
                8'd11:data <= "T";
                8'd12:data <= "y";
                8'd13:data <= " ";
                8'd14:data <= "u";
                8'd15:data <= "A";
                8'd16:data <= "r";
                8'd17:begin data <= "T"; last <= 1'b1; end
                default: begin data <= 8'h00; last <= 1'b1; end
            endcase
        end

        // ---------- 3: "eRrOr- fORMAT DatA UARt" ----------
        3'd3: begin
            case (addr)
                8'd0:  data <= "e";
                8'd1:  data <= "R";
                8'd2:  data <= "r";
                8'd3:  data <= "O";
                8'd4:  data <= "r";
                8'd5:  data <= "-";
                8'd6:  data <= " ";
                8'd7:  data <= "f";
                8'd8:  data <= "O";
                8'd9:  data <= "R";
                8'd10: data <= "M";
                8'd11: data <= "A";
                8'd12: data <= "T";
                8'd13: data <= " ";
                8'd14: data <= "D";
                8'd15: data <= "a";
                8'd16: data <= "t";
                8'd17: data <= "A";
                8'd18: data <= " ";
                8'd19: data <= "U";
                8'd20: data <= "A";
                8'd21: data <= "R";
                8'd22: begin data <= "t"; last <= 1'b1; end
                default: begin data <= 8'h00; last <= 1'b1; end
            endcase
        end

        // ---------- 4: "eRrOR-uARt" ----------
        3'd4: begin
            case (addr)
                8'd0: data <= "e";
                8'd1: data <= "R";
                8'd2: data <= "r";
                8'd3: data <= "O";
                8'd4: data <= "r";
                8'd5: data <= "-";
                8'd6: data <= "u";
                8'd7: data <= "A";
                8'd8: data <= "R";
                8'd9: begin data <= "t"; last <= 1'b1; end
                default: begin data <= 8'h00; last <= 1'b1; end
            endcase
        end

        default: begin
            data <= 8'h00;
            last <= 1'b1;
        end
        endcase
    end
endmodule
