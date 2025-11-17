module SS_LR_TOP(
    input  wire CLK100MHZ,
    input  wire BTNC,        
    input  wire UART_TXD_IN,   
    output wire UART_RXD_OUT
);

    // Сигнал сброса после фильтра
    wire rst;

    // Инстанцирование фильтра кнопки
    SS_BTN_FLTR #(
        .SYNC_STAGES(3),
        .STABLE_CNT(100_000) // 1 мс задержка для подавления дребезга
    ) btn_filter (
        .clk   (CLK100MHZ),
        .btn_i (BTNC),
        .btn_o (rst)        // Чистый сигнал сброса
    );

    // UART сигналы
    wire        rx_valid;
    wire        rx_par_err, rx_frm_err;
    wire [7:0]  rx_data;
    wire        tx_busy;
    wire        tx_start;
    wire [7:0]  tx_data;

    // Инстанцирование UART
    SS_UART #(
        .CLK_HZ(100_000_000),
        .BAUD(1800),
        .RATIO(8),
        .SYNC_STAGES(3)
    ) uart (
        .clk(CLK100MHZ),
        .rst(rst),          // Используем отфильтрованный rst
        .uart_rx_i(UART_TXD_IN),
        .rx_valid(rx_valid),
        .rx_parity_err(rx_par_err),
        .rx_frame_err(rx_frm_err),
        .rx_data(rx_data),
        .uart_tx_o(UART_RXD_OUT), 
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx_busy(tx_busy)
    );

    // FSM «сложение»
    SS_FSM #(.OP_WIDTH(52)) fsm (
        .clk(CLK100MHZ),
        .rst(rst),          // Используем отфильтрованный rst
        .rx_valid(rx_valid),
        .rx_parity_err(rx_par_err),
        .rx_frame_err(rx_frm_err),
        .rx_data(rx_data),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx_busy(tx_busy)
    );

endmodule