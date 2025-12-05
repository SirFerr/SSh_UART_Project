module SS_LR_TOP(
    input  wire CLK100MHZ,
    input  wire BTNC,        
    input  wire UART_TXD_IN,   // RXD линии ПК
    output wire UART_RXD_OUT   // TXD к ПК
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

    // ODPS / UART <-> FSM
    wire        RX_DATA_EN;
    wire [7:0]  RX_DATA_T;
    wire        rx_par_err;
    wire        rx_frm_err;

    wire        TX_RDY_T;
    wire [7:0]  TX_DATA_R;
    wire        TX_RDY_R;

    // ---------------- UART ----------------
    SS_UART #(
        .CLK_HZ     (100_000_000),
        .BAUD       (1800),
        .RATIO      (8),
        .SYNC_STAGES(3)
    ) uart (
        .clk          (CLK100MHZ),
        .rst          (rst),

        // Линии UART
        .uart_rx_i    (UART_TXD_IN),
        .uart_tx_o    (UART_RXD_OUT),

        // Флаги ошибок приёма
        .rx_parity_err(rx_par_err),
        .rx_frame_err (rx_frm_err),

        // Порт STP (ODPS, UART -> FSM)
        .RX_DATA_EN   (RX_DATA_EN),
        .RX_DATA_T    (RX_DATA_T),

        // Порт DRP (ODPS, FSM -> UART)
        .TX_RDY_T     (TX_RDY_T),
        .TX_DATA_R    (TX_DATA_R),
        .TX_RDY_R     (TX_RDY_R)
    );

    // ---------------- FSM «сложение» ----------------
    SS_FSM #(
        .OP_WIDTH(52)
    ) fsm (
        .clk          (CLK100MHZ),
        .rst          (rst),

        // Порт STP от UART
        .RX_DATA_EN   (RX_DATA_EN),
        .RX_DATA_T    (RX_DATA_T),
        .rx_parity_err(rx_par_err),
        .rx_frame_err (rx_frm_err),

        // Порт DRP к UART
        .TX_RDY_T     (TX_RDY_T),
        .TX_DATA_R    (TX_DATA_R),
        .TX_RDY_R     (TX_RDY_R)
    );

endmodule
