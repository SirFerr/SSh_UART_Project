module SS_DIVIDER #(
    parameter integer WIDTH = 16,
    parameter integer MAX_COUNT = 100
)(
    input  wire clk,
    input  wire rst,
    output reg  tick
);
    reg [WIDTH-1:0] cnt;

    always @(posedge clk) begin
        if (rst) begin
            cnt  <= 0;
            tick <= 0;
        end else if (cnt == MAX_COUNT - 1) begin
            cnt  <= 0;
            tick <= 1'b1;
        end else begin
            cnt  <= cnt + 1'b1;
            tick <= 1'b0;
        end
    end
endmodule