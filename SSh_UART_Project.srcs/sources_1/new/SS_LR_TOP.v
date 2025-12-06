module SS_LR_TOP(
    input  wire CLK100MHZ,

    // Кнопки
    input  wire BTNC,     // RESET
    input  wire BTNL,     // PARITY ERROR
    input  wire BTNR,     // FRAME ERROR

    // UART
    input  wire UART_TXD_IN,   // ПК -> плата (RX для FPGA)
    output wire UART_RXD_OUT   // плата -> ПК (TX для FPGA)
);

    //----------------------------------------------------------
    // 1. Фильтр кнопки RESET (BTNC)
    //----------------------------------------------------------
    wire rst;

    SS_BTN_FLTR #(
        .SYNC_STAGES(3),
        .STABLE_CNT(100_000)   // ~1 ms debounce
    ) btn_filter_c (
        .clk   (CLK100MHZ),
        .btn_i (BTNC),
        .btn_o (rst)
    );

    //----------------------------------------------------------
    // 2. Фильтр BTNL ? PARITY ERROR
    //----------------------------------------------------------
    wire btnl_clean;

    SS_BTN_FLTR #(
        .SYNC_STAGES(3),
        .STABLE_CNT(100_000)
    ) btn_filter_l (
        .clk   (CLK100MHZ),
        .btn_i (BTNL),
        .btn_o (btnl_clean)
    );

    //----------------------------------------------------------
    // 3. Фильтр BTNR ? FRAME ERROR
    //----------------------------------------------------------
    wire btnr_clean;

    SS_BTN_FLTR #(
        .SYNC_STAGES(3),
        .STABLE_CNT(100_000)
    ) btn_filter_r (
        .clk   (CLK100MHZ),
        .btn_i (BTNR),
        .btn_o (btnr_clean)
    );

    //----------------------------------------------------------
    // 4. Связка UART <-> FSM через ODPS
    //----------------------------------------------------------

    // UART -> FSM (STP, ODPS)
    wire       RX_DATA_EN;
    wire [7:0] RX_DATA_T;
    wire       rx_parity_err_uart;
    wire       rx_frame_err_uart;

    // FSM -> UART (DRP, ODPS)
    wire       TX_RDY_T;
    wire [7:0] TX_DATA_R;
    wire       TX_RDY_R;

    // --- Инстанс UART, как у тебя описан ---
    SS_UART #(
        .CLK_HZ      (100_000_000),
        .BAUD        (1800),
        .RATIO       (8),
        .SYNC_STAGES (3)
    ) uart (
        .clk          (CLK100MHZ),
        .rst          (rst),

        // Линии UART
        .uart_rx_i    (UART_TXD_IN),
        .uart_tx_o    (UART_RXD_OUT),

        // Флаги ошибок RX от физического UART
        .rx_parity_err(rx_parity_err_uart),
        .rx_frame_err (rx_frame_err_uart),

        // Порт STP (UART -> FSM, ODPS)
        .RX_DATA_EN   (RX_DATA_EN),
        .RX_DATA_T    (RX_DATA_T),

        // Порт DRP (FSM -> UART, ODPS)
        .TX_RDY_T     (TX_RDY_T),
        .TX_DATA_R    (TX_DATA_R),
        .TX_RDY_R     (TX_RDY_R)
    );

    //----------------------------------------------------------
    // 5. Подмешиваем ошибки от кнопок
    //----------------------------------------------------------
    wire rx_parity_err = rx_parity_err_uart | btnl_clean;
    wire rx_frame_err  = rx_frame_err_uart  | btnr_clean;

    //----------------------------------------------------------
    // 6. FSM
    //----------------------------------------------------------
    SS_FSM #(
        .OP_WIDTH(52)
    ) fsm (
        .clk           (CLK100MHZ),
        .rst           (rst),

        // Порт STП (UART -> FSM)
        .RX_DATA_EN    (RX_DATA_EN),
        .RX_DATA_T     (RX_DATA_T),
        .rx_parity_err (rx_parity_err),
        .rx_frame_err  (rx_frame_err),

        // Порт DRП (FSM -> UART)
        .TX_RDY_T      (TX_RDY_T),
        .TX_DATA_R     (TX_DATA_R),
        .TX_RDY_R      (TX_RDY_R)
    );

endmodule
