module SS_BTN_FLTR #(
    parameter SYNC_STAGES = 3,
    parameter STABLE_CNT  = 100_000    // ~1 ms @100 MHz
)(
    input  wire clk,
    input  wire btn_i,
    output reg  btn_o = 0
);
    // 1. Синхронизация
    reg [SYNC_STAGES-1:0] s = 0;
    always @(posedge clk) begin
        s[0] <= btn_i;
        s[SYNC_STAGES-1:1] <= s[SYNC_STAGES-2:0];
    end
    wire b = s[SYNC_STAGES-1];

    // 2. Фильтрация дребезга
    reg [$clog2(STABLE_CNT):0] acc = 0;
    reg state = 0;

    always @(posedge clk) begin
        if (b != state) begin
            acc <= acc + 1'b1;
            if (acc == STABLE_CNT) begin 
                state <= b; 
                acc   <= 0; 
            end
        end else begin
            acc <= 0;
        end
        
        btn_o <= state;
    end
endmodule