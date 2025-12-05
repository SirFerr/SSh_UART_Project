module SS_ROM(
    input  wire       clk,
    input  wire [2:0] sel,
    input  wire [7:0] addr,
    output reg  [7:0] data,
    output reg        last
);

    reg [7:0] rom_mem [0:2047];
    reg [7:0] last_idx;

    initial begin
        $readmemh("messages.mem", rom_mem);
    end

    always @(*) begin
        case (sel)
            3'd0: last_idx = 8'd7;
            3'd1: last_idx = 8'd17;
            3'd2: last_idx = 8'd17;
            3'd3: last_idx = 8'd22;
            3'd4: last_idx = 8'd9;
            default: last_idx = 8'd0;
        endcase
    end

    always @(posedge clk) begin
        if ((sel > 3'd4) || (addr > last_idx)) begin
            data <= 8'h00;
            last <= 1'b1;
        end else begin
            data <= rom_mem[{sel, addr}];
            if (addr == last_idx)
                last <= 1'b1;
            else
                last <= 1'b0;
        end
    end

endmodule