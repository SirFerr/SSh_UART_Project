// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Nov 29 16:05:04 2025
// Host        : FerrsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/ursus/SSh_UART_Project/SSh_UART_Project.sim/sim_1/impl/timing/xsim/tb_ss_lr_top_time_impl.v
// Design      : SS_LR_TOP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module SS_BTN_FLTR
   (rst,
    CLK,
    D);
  output rst;
  input CLK;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire \acc[0]_i_1_n_0 ;
  wire \acc[0]_i_3_n_0 ;
  wire \acc[0]_i_4_n_0 ;
  wire \acc[0]_i_5_n_0 ;
  wire \acc[0]_i_6_n_0 ;
  wire \acc[0]_i_7_n_0 ;
  wire [17:0]acc_reg;
  wire \acc_reg[0]_i_2_n_0 ;
  wire \acc_reg[0]_i_2_n_4 ;
  wire \acc_reg[0]_i_2_n_5 ;
  wire \acc_reg[0]_i_2_n_6 ;
  wire \acc_reg[0]_i_2_n_7 ;
  wire \acc_reg[12]_i_1_n_0 ;
  wire \acc_reg[12]_i_1_n_4 ;
  wire \acc_reg[12]_i_1_n_5 ;
  wire \acc_reg[12]_i_1_n_6 ;
  wire \acc_reg[12]_i_1_n_7 ;
  wire \acc_reg[16]_i_1_n_6 ;
  wire \acc_reg[16]_i_1_n_7 ;
  wire \acc_reg[4]_i_1_n_0 ;
  wire \acc_reg[4]_i_1_n_4 ;
  wire \acc_reg[4]_i_1_n_5 ;
  wire \acc_reg[4]_i_1_n_6 ;
  wire \acc_reg[4]_i_1_n_7 ;
  wire \acc_reg[8]_i_1_n_0 ;
  wire \acc_reg[8]_i_1_n_4 ;
  wire \acc_reg[8]_i_1_n_5 ;
  wire \acc_reg[8]_i_1_n_6 ;
  wire \acc_reg[8]_i_1_n_7 ;
  wire b;
  wire rst;
  wire \s_reg_n_0_[0] ;
  wire \s_reg_n_0_[1] ;
  wire state;
  wire state_i_1_n_0;
  wire state_i_2_n_0;
  wire state_i_3_n_0;
  wire state_i_4_n_0;
  wire state_i_5_n_0;
  wire state_i_6_n_0;
  wire state_i_7_n_0;
  wire [2:0]\NLW_acc_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_acc_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFF80008000FFFF)) 
    \acc[0]_i_1 
       (.I0(\acc[0]_i_3_n_0 ),
        .I1(\acc[0]_i_4_n_0 ),
        .I2(\acc[0]_i_5_n_0 ),
        .I3(\acc[0]_i_6_n_0 ),
        .I4(b),
        .I5(state),
        .O(\acc[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \acc[0]_i_3 
       (.I0(acc_reg[12]),
        .I1(acc_reg[13]),
        .I2(acc_reg[15]),
        .I3(acc_reg[14]),
        .I4(acc_reg[17]),
        .I5(acc_reg[16]),
        .O(\acc[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \acc[0]_i_4 
       (.I0(acc_reg[11]),
        .I1(acc_reg[10]),
        .I2(acc_reg[8]),
        .I3(acc_reg[9]),
        .O(\acc[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \acc[0]_i_5 
       (.I0(acc_reg[6]),
        .I1(acc_reg[7]),
        .I2(acc_reg[4]),
        .I3(acc_reg[5]),
        .O(\acc[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \acc[0]_i_6 
       (.I0(acc_reg[1]),
        .I1(acc_reg[0]),
        .I2(acc_reg[3]),
        .I3(acc_reg[2]),
        .O(\acc[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[0]_i_7 
       (.I0(acc_reg[0]),
        .O(\acc[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[0]_i_2_n_7 ),
        .Q(acc_reg[0]),
        .R(\acc[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\acc_reg[0]_i_2_n_0 ,\NLW_acc_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\acc_reg[0]_i_2_n_4 ,\acc_reg[0]_i_2_n_5 ,\acc_reg[0]_i_2_n_6 ,\acc_reg[0]_i_2_n_7 }),
        .S({acc_reg[3:1],\acc[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[8]_i_1_n_5 ),
        .Q(acc_reg[10]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[8]_i_1_n_4 ),
        .Q(acc_reg[11]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[12]_i_1_n_7 ),
        .Q(acc_reg[12]),
        .R(\acc[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_reg[12]_i_1 
       (.CI(\acc_reg[8]_i_1_n_0 ),
        .CO({\acc_reg[12]_i_1_n_0 ,\NLW_acc_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\acc_reg[12]_i_1_n_4 ,\acc_reg[12]_i_1_n_5 ,\acc_reg[12]_i_1_n_6 ,\acc_reg[12]_i_1_n_7 }),
        .S(acc_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[12]_i_1_n_6 ),
        .Q(acc_reg[13]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[12]_i_1_n_5 ),
        .Q(acc_reg[14]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[12]_i_1_n_4 ),
        .Q(acc_reg[15]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[16]_i_1_n_7 ),
        .Q(acc_reg[16]),
        .R(\acc[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_reg[16]_i_1 
       (.CI(\acc_reg[12]_i_1_n_0 ),
        .CO(\NLW_acc_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_acc_reg[16]_i_1_O_UNCONNECTED [3:2],\acc_reg[16]_i_1_n_6 ,\acc_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,acc_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[16]_i_1_n_6 ),
        .Q(acc_reg[17]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[0]_i_2_n_6 ),
        .Q(acc_reg[1]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[0]_i_2_n_5 ),
        .Q(acc_reg[2]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[0]_i_2_n_4 ),
        .Q(acc_reg[3]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[4]_i_1_n_7 ),
        .Q(acc_reg[4]),
        .R(\acc[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_reg[4]_i_1 
       (.CI(\acc_reg[0]_i_2_n_0 ),
        .CO({\acc_reg[4]_i_1_n_0 ,\NLW_acc_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\acc_reg[4]_i_1_n_4 ,\acc_reg[4]_i_1_n_5 ,\acc_reg[4]_i_1_n_6 ,\acc_reg[4]_i_1_n_7 }),
        .S(acc_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[4]_i_1_n_6 ),
        .Q(acc_reg[5]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[4]_i_1_n_5 ),
        .Q(acc_reg[6]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[4]_i_1_n_4 ),
        .Q(acc_reg[7]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[8]_i_1_n_7 ),
        .Q(acc_reg[8]),
        .R(\acc[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_reg[8]_i_1 
       (.CI(\acc_reg[4]_i_1_n_0 ),
        .CO({\acc_reg[8]_i_1_n_0 ,\NLW_acc_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\acc_reg[8]_i_1_n_4 ,\acc_reg[8]_i_1_n_5 ,\acc_reg[8]_i_1_n_6 ,\acc_reg[8]_i_1_n_7 }),
        .S(acc_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\acc_reg[8]_i_1_n_6 ),
        .Q(acc_reg[9]),
        .R(\acc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    btn_o_reg
       (.C(CLK),
        .CE(1'b1),
        .D(state),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(\s_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_reg_n_0_[0] ),
        .Q(\s_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_reg_n_0_[1] ),
        .Q(b),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    state_i_1
       (.I0(b),
        .I1(state_i_2_n_0),
        .I2(state_i_3_n_0),
        .I3(state),
        .O(state_i_1_n_0));
  LUT4 #(
    .INIT(16'hA888)) 
    state_i_2
       (.I0(state_i_4_n_0),
        .I1(acc_reg[17]),
        .I2(acc_reg[15]),
        .I3(acc_reg[16]),
        .O(state_i_2_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    state_i_3
       (.I0(acc_reg[2]),
        .I1(acc_reg[1]),
        .I2(acc_reg[0]),
        .I3(state_i_5_n_0),
        .I4(state_i_6_n_0),
        .I5(state_i_7_n_0),
        .O(state_i_3_n_0));
  LUT6 #(
    .INIT(64'h4545450045004500)) 
    state_i_4
       (.I0(acc_reg[14]),
        .I1(acc_reg[13]),
        .I2(acc_reg[12]),
        .I3(acc_reg[11]),
        .I4(acc_reg[9]),
        .I5(acc_reg[10]),
        .O(state_i_4_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    state_i_5
       (.I0(acc_reg[6]),
        .I1(acc_reg[5]),
        .I2(acc_reg[4]),
        .I3(acc_reg[3]),
        .O(state_i_5_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    state_i_6
       (.I0(acc_reg[11]),
        .I1(acc_reg[10]),
        .I2(acc_reg[8]),
        .I3(acc_reg[7]),
        .O(state_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000001000100000)) 
    state_i_7
       (.I0(acc_reg[13]),
        .I1(acc_reg[14]),
        .I2(acc_reg[16]),
        .I3(acc_reg[17]),
        .I4(b),
        .I5(state),
        .O(state_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(CLK),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state),
        .R(1'b0));
endmodule

module SS_DIVIDER
   (tick,
    E,
    \rx_sync_reg[2] ,
    \FSM_sequential_r_state_reg[1] ,
    btn_o_reg,
    \FSM_sequential_t_state_reg[2] ,
    tx_req_reg,
    tick_reg_0,
    t_out1_out,
    \FSM_sequential_r_state_reg[0] ,
    \FSM_sequential_r_state_reg[1]_0 ,
    \FSM_sequential_t_state_reg[1] ,
    tx_req_reg_0,
    \FSM_sequential_r_state_reg[0]_0 ,
    \FSM_sequential_r_state_reg[2] ,
    \FSM_sequential_r_state_reg[2]_0 ,
    \FSM_sequential_t_state_reg[1]_0 ,
    \FSM_sequential_t_state_reg[0] ,
    \FSM_sequential_t_state_reg[2]_0 ,
    rst,
    CLK,
    r_state__0,
    Q,
    \FSM_sequential_r_state_reg[0]_1 ,
    \r_bit_reg[0] ,
    \r_bit_reg[0]_0 ,
    \r_bit[2]_i_3_0 ,
    \r_bit[2]_i_3_1 ,
    \r_bit[2]_i_3_2 ,
    rx_parity_err_reg,
    \r_shift_reg[0] ,
    \r_sample_reg[0] ,
    \r_sample_reg[0]_0 ,
    tx_busy_reg,
    t_state__0,
    tx_req,
    \t_bit_reg[0] ,
    \FSM_sequential_t_state_reg[0]_0 ,
    \FSM_sequential_t_state_reg[0]_1 ,
    \FSM_sequential_t_state_reg[0]_2 ,
    rx_parity_err_reg_0,
    rx_frame_err_reg,
    tx_start,
    tx_busy);
  output tick;
  output [0:0]E;
  output \rx_sync_reg[2] ;
  output [0:0]\FSM_sequential_r_state_reg[1] ;
  output [0:0]btn_o_reg;
  output [0:0]\FSM_sequential_t_state_reg[2] ;
  output tx_req_reg;
  output tick_reg_0;
  output t_out1_out;
  output \FSM_sequential_r_state_reg[0] ;
  output \FSM_sequential_r_state_reg[1]_0 ;
  output \FSM_sequential_t_state_reg[1] ;
  output tx_req_reg_0;
  output \FSM_sequential_r_state_reg[0]_0 ;
  output \FSM_sequential_r_state_reg[2] ;
  output \FSM_sequential_r_state_reg[2]_0 ;
  output \FSM_sequential_t_state_reg[1]_0 ;
  output \FSM_sequential_t_state_reg[0] ;
  output \FSM_sequential_t_state_reg[2]_0 ;
  input rst;
  input CLK;
  input [2:0]r_state__0;
  input [0:0]Q;
  input \FSM_sequential_r_state_reg[0]_1 ;
  input \r_bit_reg[0] ;
  input \r_bit_reg[0]_0 ;
  input \r_bit[2]_i_3_0 ;
  input \r_bit[2]_i_3_1 ;
  input \r_bit[2]_i_3_2 ;
  input rx_parity_err_reg;
  input [3:0]\r_shift_reg[0] ;
  input \r_sample_reg[0] ;
  input \r_sample_reg[0]_0 ;
  input tx_busy_reg;
  input [2:0]t_state__0;
  input tx_req;
  input \t_bit_reg[0] ;
  input \FSM_sequential_t_state_reg[0]_0 ;
  input \FSM_sequential_t_state_reg[0]_1 ;
  input \FSM_sequential_t_state_reg[0]_2 ;
  input rx_parity_err_reg_0;
  input rx_frame_err_reg;
  input tx_start;
  input tx_busy;

  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_r_state[2]_i_2_n_0 ;
  wire \FSM_sequential_r_state[2]_i_4_n_0 ;
  wire \FSM_sequential_r_state_reg[0] ;
  wire \FSM_sequential_r_state_reg[0]_0 ;
  wire \FSM_sequential_r_state_reg[0]_1 ;
  wire [0:0]\FSM_sequential_r_state_reg[1] ;
  wire \FSM_sequential_r_state_reg[1]_0 ;
  wire \FSM_sequential_r_state_reg[2] ;
  wire \FSM_sequential_r_state_reg[2]_0 ;
  wire \FSM_sequential_t_state[2]_i_2_n_0 ;
  wire \FSM_sequential_t_state[2]_i_3_n_0 ;
  wire \FSM_sequential_t_state_reg[0] ;
  wire \FSM_sequential_t_state_reg[0]_0 ;
  wire \FSM_sequential_t_state_reg[0]_1 ;
  wire \FSM_sequential_t_state_reg[0]_2 ;
  wire \FSM_sequential_t_state_reg[1] ;
  wire \FSM_sequential_t_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_t_state_reg[2] ;
  wire \FSM_sequential_t_state_reg[2]_0 ;
  wire [0:0]Q;
  wire [0:0]btn_o_reg;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire [12:0]cnt_reg;
  wire \cnt_reg[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_2_n_4 ;
  wire \cnt_reg[0]_i_2_n_5 ;
  wire \cnt_reg[0]_i_2_n_6 ;
  wire \cnt_reg[0]_i_2_n_7 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \r_bit[2]_i_3_0 ;
  wire \r_bit[2]_i_3_1 ;
  wire \r_bit[2]_i_3_2 ;
  wire \r_bit[2]_i_4_n_0 ;
  wire \r_bit_reg[0] ;
  wire \r_bit_reg[0]_0 ;
  wire \r_sample_reg[0] ;
  wire \r_sample_reg[0]_0 ;
  wire \r_shift[7]_i_2_n_0 ;
  wire [3:0]\r_shift_reg[0] ;
  wire [2:0]r_state__0;
  wire rst;
  wire rx_frame_err2_out;
  wire rx_frame_err_reg;
  wire rx_parity_err_i_3_n_0;
  wire rx_parity_err_reg;
  wire rx_parity_err_reg_0;
  wire \rx_sync_reg[2] ;
  wire \t_bit_reg[0] ;
  wire t_out1_out;
  wire \t_shift[6]_i_3_n_0 ;
  wire [2:0]t_state__0;
  wire tick;
  wire tick_0;
  wire tick_i_2_n_0;
  wire tick_i_3_n_0;
  wire tick_reg_0;
  wire tx_busy;
  wire tx_busy_reg;
  wire tx_req;
  wire tx_req_reg;
  wire tx_req_reg_0;
  wire tx_start;
  wire [2:0]\NLW_cnt_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cnt_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0F70)) 
    \FSM_sequential_r_state[0]_i_1 
       (.I0(r_state__0[2]),
        .I1(r_state__0[1]),
        .I2(\FSM_sequential_r_state[2]_i_2_n_0 ),
        .I3(r_state__0[0]),
        .O(\FSM_sequential_r_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h11FF0400)) 
    \FSM_sequential_r_state[1]_i_1 
       (.I0(r_state__0[2]),
        .I1(r_state__0[0]),
        .I2(Q),
        .I3(\FSM_sequential_r_state[2]_i_2_n_0 ),
        .I4(r_state__0[1]),
        .O(\FSM_sequential_r_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h1F80)) 
    \FSM_sequential_r_state[2]_i_1 
       (.I0(r_state__0[0]),
        .I1(r_state__0[1]),
        .I2(\FSM_sequential_r_state[2]_i_2_n_0 ),
        .I3(r_state__0[2]),
        .O(\FSM_sequential_r_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFFFA888)) 
    \FSM_sequential_r_state[2]_i_2 
       (.I0(\r_shift[7]_i_2_n_0 ),
        .I1(r_state__0[2]),
        .I2(r_state__0[1]),
        .I3(\FSM_sequential_r_state_reg[0]_1 ),
        .I4(\FSM_sequential_r_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_r_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF03000000110000)) 
    \FSM_sequential_r_state[2]_i_4 
       (.I0(Q),
        .I1(r_state__0[1]),
        .I2(\r_bit_reg[0] ),
        .I3(r_state__0[2]),
        .I4(tick),
        .I5(r_state__0[0]),
        .O(\FSM_sequential_r_state[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_t_state[0]_i_1 
       (.I0(t_state__0[2]),
        .I1(\FSM_sequential_t_state[2]_i_2_n_0 ),
        .I2(t_state__0[0]),
        .O(\FSM_sequential_t_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_t_state[1]_i_1 
       (.I0(t_state__0[0]),
        .I1(t_state__0[2]),
        .I2(\FSM_sequential_t_state[2]_i_2_n_0 ),
        .I3(t_state__0[1]),
        .O(\FSM_sequential_t_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_t_state[2]_i_1 
       (.I0(t_state__0[1]),
        .I1(t_state__0[0]),
        .I2(\FSM_sequential_t_state[2]_i_2_n_0 ),
        .I3(t_state__0[2]),
        .O(\FSM_sequential_t_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAAAAAA)) 
    \FSM_sequential_t_state[2]_i_2 
       (.I0(\FSM_sequential_t_state[2]_i_3_n_0 ),
        .I1(tx_busy_reg),
        .I2(tick),
        .I3(\FSM_sequential_t_state_reg[0]_0 ),
        .I4(\FSM_sequential_t_state_reg[0]_1 ),
        .I5(\FSM_sequential_t_state_reg[0]_2 ),
        .O(\FSM_sequential_t_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000500005005C00)) 
    \FSM_sequential_t_state[2]_i_3 
       (.I0(tx_busy_reg),
        .I1(tx_req),
        .I2(t_state__0[0]),
        .I3(tick),
        .I4(t_state__0[2]),
        .I5(t_state__0[1]),
        .O(\FSM_sequential_t_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \cnt[0]_i_1 
       (.I0(tick_i_2_n_0),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(tick_i_3_n_0),
        .I5(rst),
        .O(\cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_3 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_7 ),
        .Q(cnt_reg[0]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2_n_0 ,\NLW_cnt_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_2_n_4 ,\cnt_reg[0]_i_2_n_5 ,\cnt_reg[0]_i_2_n_6 ,\cnt_reg[0]_i_2_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[12]_i_1_O_UNCONNECTED [3:1],\cnt_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,cnt_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(cnt_reg[1]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(cnt_reg[2]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(cnt_reg[3]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_2_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \r_bit[2]_i_3 
       (.I0(\r_bit[2]_i_4_n_0 ),
        .I1(\r_bit_reg[0] ),
        .I2(Q),
        .I3(\r_bit_reg[0]_0 ),
        .I4(r_state__0[0]),
        .I5(tick),
        .O(\rx_sync_reg[2] ));
  LUT6 #(
    .INIT(64'h1555000000000000)) 
    \r_bit[2]_i_4 
       (.I0(r_state__0[0]),
        .I1(\r_bit[2]_i_3_0 ),
        .I2(\r_bit[2]_i_3_1 ),
        .I3(\r_bit[2]_i_3_2 ),
        .I4(rx_parity_err_reg),
        .I5(\r_shift[7]_i_2_n_0 ),
        .O(\r_bit[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00FA0CFA00000000)) 
    \r_sample[3]_i_1 
       (.I0(\r_sample_reg[0] ),
        .I1(\r_sample_reg[0]_0 ),
        .I2(r_state__0[1]),
        .I3(r_state__0[2]),
        .I4(r_state__0[0]),
        .I5(tick),
        .O(\FSM_sequential_r_state_reg[1] ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \r_shift[7]_i_1 
       (.I0(r_state__0[1]),
        .I1(r_state__0[2]),
        .I2(rst),
        .I3(r_state__0[0]),
        .I4(\r_shift[7]_i_2_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h20000000)) 
    \r_shift[7]_i_2 
       (.I0(tick),
        .I1(\r_shift_reg[0] [3]),
        .I2(\r_shift_reg[0] [1]),
        .I3(\r_shift_reg[0] [0]),
        .I4(\r_shift_reg[0] [2]),
        .O(\r_shift[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \rx_data[7]_i_1 
       (.I0(rst),
        .I1(r_state__0[2]),
        .I2(r_state__0[1]),
        .I3(r_state__0[0]),
        .I4(tick),
        .O(btn_o_reg));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    rx_frame_err_i_1
       (.I0(r_state__0[1]),
        .I1(r_state__0[2]),
        .I2(Q),
        .I3(rx_frame_err2_out),
        .I4(rx_frame_err_reg),
        .O(\FSM_sequential_r_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00000000002F0022)) 
    rx_frame_err_i_2
       (.I0(\r_shift[7]_i_2_n_0 ),
        .I1(Q),
        .I2(r_state__0[2]),
        .I3(r_state__0[1]),
        .I4(tick),
        .I5(r_state__0[0]),
        .O(rx_frame_err2_out));
  LUT6 #(
    .INIT(64'hF000FFFFF0008000)) 
    rx_parity_err_i_1
       (.I0(\r_shift[7]_i_2_n_0 ),
        .I1(r_state__0[0]),
        .I2(Q),
        .I3(rx_parity_err_reg),
        .I4(rx_parity_err_i_3_n_0),
        .I5(rx_parity_err_reg_0),
        .O(\FSM_sequential_r_state_reg[0] ));
  LUT4 #(
    .INIT(16'h0004)) 
    rx_parity_err_i_3
       (.I0(r_state__0[0]),
        .I1(tick),
        .I2(r_state__0[1]),
        .I3(r_state__0[2]),
        .O(rx_parity_err_i_3_n_0));
  LUT6 #(
    .INIT(64'h000044000000F000)) 
    \t_bit[2]_i_2 
       (.I0(tx_busy_reg),
        .I1(\t_bit_reg[0] ),
        .I2(tx_req),
        .I3(\t_shift[6]_i_3_n_0 ),
        .I4(t_state__0[2]),
        .I5(t_state__0[1]),
        .O(tx_req_reg));
  LUT4 #(
    .INIT(16'h1F00)) 
    t_out_i_1
       (.I0(t_state__0[1]),
        .I1(t_state__0[0]),
        .I2(t_state__0[2]),
        .I3(tick),
        .O(t_out1_out));
  LUT4 #(
    .INIT(16'h0A28)) 
    \t_samp[2]_i_2 
       (.I0(tick),
        .I1(t_state__0[0]),
        .I2(t_state__0[2]),
        .I3(t_state__0[1]),
        .O(tick_reg_0));
  LUT6 #(
    .INIT(64'h00000000040C0400)) 
    \t_shift[6]_i_1 
       (.I0(tx_busy_reg),
        .I1(\t_shift[6]_i_3_n_0 ),
        .I2(t_state__0[2]),
        .I3(t_state__0[1]),
        .I4(tx_req),
        .I5(rst),
        .O(\FSM_sequential_t_state_reg[2] ));
  LUT2 #(
    .INIT(4'h2)) 
    \t_shift[6]_i_3 
       (.I0(tick),
        .I1(t_state__0[0]),
        .O(\t_shift[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    tick_i_1
       (.I0(tick_i_2_n_0),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(tick_i_3_n_0),
        .O(tick_0));
  LUT4 #(
    .INIT(16'h1000)) 
    tick_i_2
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[3]),
        .O(tick_i_2_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    tick_i_3
       (.I0(cnt_reg[8]),
        .I1(cnt_reg[7]),
        .I2(cnt_reg[9]),
        .I3(cnt_reg[10]),
        .I4(cnt_reg[12]),
        .I5(cnt_reg[11]),
        .O(tick_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tick_0),
        .Q(tick),
        .R(rst));
  LUT6 #(
    .INIT(64'hFCFAFFFF000A0000)) 
    tx_busy_i_1
       (.I0(tx_req),
        .I1(tx_busy_reg),
        .I2(t_state__0[1]),
        .I3(t_state__0[2]),
        .I4(\t_shift[6]_i_3_n_0 ),
        .I5(tx_busy),
        .O(tx_req_reg_0));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFF0000)) 
    tx_req_i_1
       (.I0(t_state__0[1]),
        .I1(t_state__0[2]),
        .I2(t_state__0[0]),
        .I3(tick),
        .I4(tx_start),
        .I5(tx_req),
        .O(\FSM_sequential_t_state_reg[1] ));
endmodule

module SS_FSM
   (tx_start,
    Q,
    st__0,
    last_reg,
    \FSM_sequential_st_reg[1]_0 ,
    \FSM_sequential_st_reg[2]_0 ,
    \cnt_hex_reg[1]_0 ,
    \cnt_hex_reg[2]_0 ,
    \FSM_sequential_st_reg[0]_0 ,
    \tx_data_reg[6]_0 ,
    rst,
    CLK,
    \rom_sel_reg[1]_0 ,
    rx_valid,
    in_ok,
    \FSM_sequential_st_reg[1]_1 ,
    tx_busy,
    \FSM_sequential_st_reg[0]_1 ,
    \FSM_sequential_st_reg[2]_1 ,
    \cnt_hex_reg[0]_0 ,
    rx_par_err,
    rx_frm_err,
    \FSM_sequential_st_reg[1]_2 ,
    \rom_sel_reg[1]_1 ,
    D,
    \rom_sel_reg[0]_0 ,
    \rom_sel_reg[1]_2 ,
    \FSM_sequential_st_reg[2]_2 ,
    \FSM_sequential_st_reg[0]_2 ,
    \FSM_sequential_st_reg[0]_3 ,
    \A_reg[51]_0 ,
    E);
  output tx_start;
  output [47:0]Q;
  output [2:0]st__0;
  output last_reg;
  output \FSM_sequential_st_reg[1]_0 ;
  output \FSM_sequential_st_reg[2]_0 ;
  output \cnt_hex_reg[1]_0 ;
  output \cnt_hex_reg[2]_0 ;
  output \FSM_sequential_st_reg[0]_0 ;
  output [6:0]\tx_data_reg[6]_0 ;
  input rst;
  input CLK;
  input \rom_sel_reg[1]_0 ;
  input rx_valid;
  input in_ok;
  input \FSM_sequential_st_reg[1]_1 ;
  input tx_busy;
  input \FSM_sequential_st_reg[0]_1 ;
  input \FSM_sequential_st_reg[2]_1 ;
  input \cnt_hex_reg[0]_0 ;
  input rx_par_err;
  input rx_frm_err;
  input \FSM_sequential_st_reg[1]_2 ;
  input \rom_sel_reg[1]_1 ;
  input [3:0]D;
  input \rom_sel_reg[0]_0 ;
  input \rom_sel_reg[1]_2 ;
  input \FSM_sequential_st_reg[2]_2 ;
  input \FSM_sequential_st_reg[0]_2 ;
  input \FSM_sequential_st_reg[0]_3 ;
  input [51:0]\A_reg[51]_0 ;
  input [0:0]E;

  wire \A[51]_i_1_n_0 ;
  wire [51:0]\A_reg[51]_0 ;
  wire \A_reg_n_0_[48] ;
  wire \A_reg_n_0_[49] ;
  wire \A_reg_n_0_[50] ;
  wire \A_reg_n_0_[51] ;
  wire [51:4]B;
  wire \B[51]_i_1_n_0 ;
  wire \B_reg_n_0_[0] ;
  wire \B_reg_n_0_[10] ;
  wire \B_reg_n_0_[11] ;
  wire \B_reg_n_0_[12] ;
  wire \B_reg_n_0_[13] ;
  wire \B_reg_n_0_[14] ;
  wire \B_reg_n_0_[15] ;
  wire \B_reg_n_0_[16] ;
  wire \B_reg_n_0_[17] ;
  wire \B_reg_n_0_[18] ;
  wire \B_reg_n_0_[19] ;
  wire \B_reg_n_0_[1] ;
  wire \B_reg_n_0_[20] ;
  wire \B_reg_n_0_[21] ;
  wire \B_reg_n_0_[22] ;
  wire \B_reg_n_0_[23] ;
  wire \B_reg_n_0_[24] ;
  wire \B_reg_n_0_[25] ;
  wire \B_reg_n_0_[26] ;
  wire \B_reg_n_0_[27] ;
  wire \B_reg_n_0_[28] ;
  wire \B_reg_n_0_[29] ;
  wire \B_reg_n_0_[2] ;
  wire \B_reg_n_0_[30] ;
  wire \B_reg_n_0_[31] ;
  wire \B_reg_n_0_[32] ;
  wire \B_reg_n_0_[33] ;
  wire \B_reg_n_0_[34] ;
  wire \B_reg_n_0_[35] ;
  wire \B_reg_n_0_[36] ;
  wire \B_reg_n_0_[37] ;
  wire \B_reg_n_0_[38] ;
  wire \B_reg_n_0_[39] ;
  wire \B_reg_n_0_[3] ;
  wire \B_reg_n_0_[40] ;
  wire \B_reg_n_0_[41] ;
  wire \B_reg_n_0_[42] ;
  wire \B_reg_n_0_[43] ;
  wire \B_reg_n_0_[44] ;
  wire \B_reg_n_0_[45] ;
  wire \B_reg_n_0_[46] ;
  wire \B_reg_n_0_[47] ;
  wire \B_reg_n_0_[48] ;
  wire \B_reg_n_0_[49] ;
  wire \B_reg_n_0_[4] ;
  wire \B_reg_n_0_[50] ;
  wire \B_reg_n_0_[51] ;
  wire \B_reg_n_0_[5] ;
  wire \B_reg_n_0_[6] ;
  wire \B_reg_n_0_[7] ;
  wire \B_reg_n_0_[8] ;
  wire \B_reg_n_0_[9] ;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_st[0]_i_4_n_0 ;
  wire \FSM_sequential_st[1]_i_2_n_0 ;
  wire \FSM_sequential_st[1]_i_6_n_0 ;
  wire \FSM_sequential_st[1]_i_8_n_0 ;
  wire \FSM_sequential_st[1]_i_9_n_0 ;
  wire \FSM_sequential_st[2]_i_2_n_0 ;
  wire \FSM_sequential_st_reg[0]_0 ;
  wire \FSM_sequential_st_reg[0]_1 ;
  wire \FSM_sequential_st_reg[0]_2 ;
  wire \FSM_sequential_st_reg[0]_3 ;
  wire \FSM_sequential_st_reg[1]_0 ;
  wire \FSM_sequential_st_reg[1]_1 ;
  wire \FSM_sequential_st_reg[1]_2 ;
  wire \FSM_sequential_st_reg[2]_0 ;
  wire \FSM_sequential_st_reg[2]_1 ;
  wire \FSM_sequential_st_reg[2]_2 ;
  wire [47:0]Q;
  wire [4:0]cnt_hex;
  wire \cnt_hex[4]_i_1_n_0 ;
  wire \cnt_hex[4]_i_7_n_0 ;
  wire \cnt_hex_reg[0]_0 ;
  wire \cnt_hex_reg[1]_0 ;
  wire \cnt_hex_reg[2]_0 ;
  wire \cnt_hex_reg_n_0_[0] ;
  wire \cnt_hex_reg_n_0_[1] ;
  wire \cnt_hex_reg_n_0_[2] ;
  wire \cnt_hex_reg_n_0_[3] ;
  wire \cnt_hex_reg_n_0_[4] ;
  wire [52:0]in37;
  wire in_ok;
  wire last_reg;
  wire [3:0]nib;
  wire \nib[3]_i_1_n_0 ;
  wire [5:0]out_cnt;
  wire \out_cnt[5]_i_2_n_0 ;
  wire \out_cnt_reg_n_0_[0] ;
  wire \out_cnt_reg_n_0_[1] ;
  wire \out_cnt_reg_n_0_[2] ;
  wire \out_cnt_reg_n_0_[3] ;
  wire \out_cnt_reg_n_0_[4] ;
  wire \out_cnt_reg_n_0_[5] ;
  wire [3:0]p_0_in;
  wire p_0_in0;
  wire [103:0]result;
  wire \result[103]_i_1_n_0 ;
  wire \result[11]_i_3_n_0 ;
  wire \result[11]_i_4_n_0 ;
  wire \result[11]_i_5_n_0 ;
  wire \result[11]_i_6_n_0 ;
  wire \result[15]_i_3_n_0 ;
  wire \result[15]_i_4_n_0 ;
  wire \result[15]_i_5_n_0 ;
  wire \result[15]_i_6_n_0 ;
  wire \result[19]_i_3_n_0 ;
  wire \result[19]_i_4_n_0 ;
  wire \result[19]_i_5_n_0 ;
  wire \result[19]_i_6_n_0 ;
  wire \result[23]_i_3_n_0 ;
  wire \result[23]_i_4_n_0 ;
  wire \result[23]_i_5_n_0 ;
  wire \result[23]_i_6_n_0 ;
  wire \result[27]_i_3_n_0 ;
  wire \result[27]_i_4_n_0 ;
  wire \result[27]_i_5_n_0 ;
  wire \result[27]_i_6_n_0 ;
  wire \result[31]_i_3_n_0 ;
  wire \result[31]_i_4_n_0 ;
  wire \result[31]_i_5_n_0 ;
  wire \result[31]_i_6_n_0 ;
  wire \result[35]_i_3_n_0 ;
  wire \result[35]_i_4_n_0 ;
  wire \result[35]_i_5_n_0 ;
  wire \result[35]_i_6_n_0 ;
  wire \result[39]_i_3_n_0 ;
  wire \result[39]_i_4_n_0 ;
  wire \result[39]_i_5_n_0 ;
  wire \result[39]_i_6_n_0 ;
  wire \result[3]_i_3_n_0 ;
  wire \result[3]_i_4_n_0 ;
  wire \result[3]_i_5_n_0 ;
  wire \result[3]_i_6_n_0 ;
  wire \result[43]_i_3_n_0 ;
  wire \result[43]_i_4_n_0 ;
  wire \result[43]_i_5_n_0 ;
  wire \result[43]_i_6_n_0 ;
  wire \result[47]_i_3_n_0 ;
  wire \result[47]_i_4_n_0 ;
  wire \result[47]_i_5_n_0 ;
  wire \result[47]_i_6_n_0 ;
  wire \result[51]_i_3_n_0 ;
  wire \result[51]_i_4_n_0 ;
  wire \result[51]_i_5_n_0 ;
  wire \result[51]_i_6_n_0 ;
  wire \result[7]_i_3_n_0 ;
  wire \result[7]_i_4_n_0 ;
  wire \result[7]_i_5_n_0 ;
  wire \result[7]_i_6_n_0 ;
  wire \result_reg[11]_i_2_n_0 ;
  wire \result_reg[15]_i_2_n_0 ;
  wire \result_reg[19]_i_2_n_0 ;
  wire \result_reg[23]_i_2_n_0 ;
  wire \result_reg[27]_i_2_n_0 ;
  wire \result_reg[31]_i_2_n_0 ;
  wire \result_reg[35]_i_2_n_0 ;
  wire \result_reg[39]_i_2_n_0 ;
  wire \result_reg[3]_i_2_n_0 ;
  wire \result_reg[43]_i_2_n_0 ;
  wire \result_reg[47]_i_2_n_0 ;
  wire \result_reg[51]_i_2_n_0 ;
  wire \result_reg[7]_i_2_n_0 ;
  wire \result_reg_n_0_[0] ;
  wire \result_reg_n_0_[10] ;
  wire \result_reg_n_0_[11] ;
  wire \result_reg_n_0_[12] ;
  wire \result_reg_n_0_[13] ;
  wire \result_reg_n_0_[14] ;
  wire \result_reg_n_0_[15] ;
  wire \result_reg_n_0_[16] ;
  wire \result_reg_n_0_[17] ;
  wire \result_reg_n_0_[18] ;
  wire \result_reg_n_0_[19] ;
  wire \result_reg_n_0_[1] ;
  wire \result_reg_n_0_[20] ;
  wire \result_reg_n_0_[21] ;
  wire \result_reg_n_0_[22] ;
  wire \result_reg_n_0_[23] ;
  wire \result_reg_n_0_[24] ;
  wire \result_reg_n_0_[25] ;
  wire \result_reg_n_0_[26] ;
  wire \result_reg_n_0_[27] ;
  wire \result_reg_n_0_[28] ;
  wire \result_reg_n_0_[29] ;
  wire \result_reg_n_0_[2] ;
  wire \result_reg_n_0_[30] ;
  wire \result_reg_n_0_[31] ;
  wire \result_reg_n_0_[32] ;
  wire \result_reg_n_0_[33] ;
  wire \result_reg_n_0_[34] ;
  wire \result_reg_n_0_[35] ;
  wire \result_reg_n_0_[36] ;
  wire \result_reg_n_0_[37] ;
  wire \result_reg_n_0_[38] ;
  wire \result_reg_n_0_[39] ;
  wire \result_reg_n_0_[3] ;
  wire \result_reg_n_0_[40] ;
  wire \result_reg_n_0_[41] ;
  wire \result_reg_n_0_[42] ;
  wire \result_reg_n_0_[43] ;
  wire \result_reg_n_0_[44] ;
  wire \result_reg_n_0_[45] ;
  wire \result_reg_n_0_[46] ;
  wire \result_reg_n_0_[47] ;
  wire \result_reg_n_0_[48] ;
  wire \result_reg_n_0_[49] ;
  wire \result_reg_n_0_[4] ;
  wire \result_reg_n_0_[50] ;
  wire \result_reg_n_0_[51] ;
  wire \result_reg_n_0_[52] ;
  wire \result_reg_n_0_[53] ;
  wire \result_reg_n_0_[54] ;
  wire \result_reg_n_0_[55] ;
  wire \result_reg_n_0_[56] ;
  wire \result_reg_n_0_[57] ;
  wire \result_reg_n_0_[58] ;
  wire \result_reg_n_0_[59] ;
  wire \result_reg_n_0_[5] ;
  wire \result_reg_n_0_[60] ;
  wire \result_reg_n_0_[61] ;
  wire \result_reg_n_0_[62] ;
  wire \result_reg_n_0_[63] ;
  wire \result_reg_n_0_[64] ;
  wire \result_reg_n_0_[65] ;
  wire \result_reg_n_0_[66] ;
  wire \result_reg_n_0_[67] ;
  wire \result_reg_n_0_[68] ;
  wire \result_reg_n_0_[69] ;
  wire \result_reg_n_0_[6] ;
  wire \result_reg_n_0_[70] ;
  wire \result_reg_n_0_[71] ;
  wire \result_reg_n_0_[72] ;
  wire \result_reg_n_0_[73] ;
  wire \result_reg_n_0_[74] ;
  wire \result_reg_n_0_[75] ;
  wire \result_reg_n_0_[76] ;
  wire \result_reg_n_0_[77] ;
  wire \result_reg_n_0_[78] ;
  wire \result_reg_n_0_[79] ;
  wire \result_reg_n_0_[7] ;
  wire \result_reg_n_0_[80] ;
  wire \result_reg_n_0_[81] ;
  wire \result_reg_n_0_[82] ;
  wire \result_reg_n_0_[83] ;
  wire \result_reg_n_0_[84] ;
  wire \result_reg_n_0_[85] ;
  wire \result_reg_n_0_[86] ;
  wire \result_reg_n_0_[87] ;
  wire \result_reg_n_0_[88] ;
  wire \result_reg_n_0_[89] ;
  wire \result_reg_n_0_[8] ;
  wire \result_reg_n_0_[90] ;
  wire \result_reg_n_0_[91] ;
  wire \result_reg_n_0_[92] ;
  wire \result_reg_n_0_[93] ;
  wire \result_reg_n_0_[94] ;
  wire \result_reg_n_0_[95] ;
  wire \result_reg_n_0_[96] ;
  wire \result_reg_n_0_[97] ;
  wire \result_reg_n_0_[98] ;
  wire \result_reg_n_0_[99] ;
  wire \result_reg_n_0_[9] ;
  wire \rom_idx[7]_i_5_n_0 ;
  wire \rom_idx_reg_n_0_[0] ;
  wire \rom_idx_reg_n_0_[1] ;
  wire \rom_idx_reg_n_0_[2] ;
  wire \rom_idx_reg_n_0_[3] ;
  wire \rom_idx_reg_n_0_[4] ;
  wire \rom_idx_reg_n_0_[5] ;
  wire \rom_idx_reg_n_0_[6] ;
  wire [1:1]rom_sel;
  wire \rom_sel[0]_i_1_n_0 ;
  wire \rom_sel[0]_i_3_n_0 ;
  wire \rom_sel[0]_i_4_n_0 ;
  wire \rom_sel[1]_i_1_n_0 ;
  wire \rom_sel[1]_i_4_n_0 ;
  wire \rom_sel[1]_i_5_n_0 ;
  wire \rom_sel_reg[0]_0 ;
  wire \rom_sel_reg[1]_0 ;
  wire \rom_sel_reg[1]_1 ;
  wire \rom_sel_reg[1]_2 ;
  wire \rom_sel_reg_n_0_[0] ;
  wire \rom_sel_reg_n_0_[1] ;
  wire rst;
  wire rx_frm_err;
  wire rx_par_err;
  wire rx_valid;
  wire [2:0]st__0;
  wire tx_busy;
  wire [6:0]tx_data0_in;
  wire [6:0]\tx_data_reg[6]_0 ;
  wire tx_start;
  wire tx_start_i_1_n_0;
  wire u_rom_n_0;
  wire u_rom_n_1;
  wire u_rom_n_16;
  wire u_rom_n_17;
  wire u_rom_n_18;
  wire u_rom_n_2;
  wire u_rom_n_3;
  wire u_rom_n_4;
  wire u_rom_n_5;
  wire u_rom_n_6;
  wire u_rom_n_7;
  wire [2:0]\NLW_result_reg[11]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[15]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[19]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[23]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[27]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[31]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[35]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[39]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[43]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[47]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[51]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_result_reg[52]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_reg[52]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[7]_i_2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000008000FF)) 
    \A[51]_i_1 
       (.I0(\cnt_hex_reg[2]_0 ),
        .I1(in_ok),
        .I2(rx_valid),
        .I3(st__0[2]),
        .I4(st__0[0]),
        .I5(st__0[1]),
        .O(\A[51]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[0] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [0]),
        .Q(Q[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[10] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [10]),
        .Q(Q[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[11] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [11]),
        .Q(Q[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[12] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [12]),
        .Q(Q[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[13] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [13]),
        .Q(Q[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[14] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [14]),
        .Q(Q[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[15] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [15]),
        .Q(Q[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[16] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [16]),
        .Q(Q[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[17] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [17]),
        .Q(Q[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[18] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [18]),
        .Q(Q[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[19] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [19]),
        .Q(Q[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[1] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [1]),
        .Q(Q[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[20] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [20]),
        .Q(Q[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[21] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [21]),
        .Q(Q[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[22] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [22]),
        .Q(Q[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[23] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [23]),
        .Q(Q[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[24] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [24]),
        .Q(Q[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[25] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [25]),
        .Q(Q[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[26] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [26]),
        .Q(Q[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[27] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [27]),
        .Q(Q[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[28] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [28]),
        .Q(Q[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[29] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [29]),
        .Q(Q[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[2] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [2]),
        .Q(Q[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[30] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [30]),
        .Q(Q[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[31] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [31]),
        .Q(Q[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[32] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [32]),
        .Q(Q[32]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[33] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [33]),
        .Q(Q[33]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[34] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [34]),
        .Q(Q[34]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[35] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [35]),
        .Q(Q[35]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[36] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [36]),
        .Q(Q[36]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[37] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [37]),
        .Q(Q[37]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[38] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [38]),
        .Q(Q[38]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[39] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [39]),
        .Q(Q[39]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[3] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [3]),
        .Q(Q[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[40] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [40]),
        .Q(Q[40]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[41] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [41]),
        .Q(Q[41]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[42] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [42]),
        .Q(Q[42]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[43] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [43]),
        .Q(Q[43]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[44] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [44]),
        .Q(Q[44]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[45] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [45]),
        .Q(Q[45]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[46] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [46]),
        .Q(Q[46]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[47] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [47]),
        .Q(Q[47]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[48] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [48]),
        .Q(\A_reg_n_0_[48] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[49] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [49]),
        .Q(\A_reg_n_0_[49] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[4] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [4]),
        .Q(Q[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[50] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [50]),
        .Q(\A_reg_n_0_[50] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[51] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [51]),
        .Q(\A_reg_n_0_[51] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[5] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [5]),
        .Q(Q[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[6] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [6]),
        .Q(Q[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[7] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [7]),
        .Q(Q[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[8] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [8]),
        .Q(Q[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[9] 
       (.C(CLK),
        .CE(\A[51]_i_1_n_0 ),
        .D(\A_reg[51]_0 [9]),
        .Q(Q[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[10]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[6] ),
        .O(B[10]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[11]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[7] ),
        .O(B[11]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[12]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[8] ),
        .O(B[12]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[13]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[9] ),
        .O(B[13]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[14]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[10] ),
        .O(B[14]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[15]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[11] ),
        .O(B[15]));
  (* \PinAttr:I1:HOLD_DETOUR  = "183" *) 
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[16]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[12] ),
        .O(B[16]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[17]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[13] ),
        .O(B[17]));
  (* \PinAttr:I1:HOLD_DETOUR  = "183" *) 
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[18]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[14] ),
        .O(B[18]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[19]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[15] ),
        .O(B[19]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[20]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[16] ),
        .O(B[20]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[21]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[17] ),
        .O(B[21]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[22]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[18] ),
        .O(B[22]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[23]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[19] ),
        .O(B[23]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[24]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[20] ),
        .O(B[24]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[25]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[21] ),
        .O(B[25]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[26]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[22] ),
        .O(B[26]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[27]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[23] ),
        .O(B[27]));
  (* \PinAttr:I1:HOLD_DETOUR  = "182" *) 
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[28]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[24] ),
        .O(B[28]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[29]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[25] ),
        .O(B[29]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[30]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[26] ),
        .O(B[30]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[31]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[27] ),
        .O(B[31]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[32]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[28] ),
        .O(B[32]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[33]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[29] ),
        .O(B[33]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[34]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[30] ),
        .O(B[34]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[35]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[31] ),
        .O(B[35]));
  (* \PinAttr:I1:HOLD_DETOUR  = "183" *) 
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[36]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[32] ),
        .O(B[36]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[37]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[33] ),
        .O(B[37]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[38]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[34] ),
        .O(B[38]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[39]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[35] ),
        .O(B[39]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[40]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[36] ),
        .O(B[40]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[41]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[37] ),
        .O(B[41]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[42]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[38] ),
        .O(B[42]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[43]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[39] ),
        .O(B[43]));
  (* \PinAttr:I1:HOLD_DETOUR  = "183" *) 
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[44]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[40] ),
        .O(B[44]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[45]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[41] ),
        .O(B[45]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[46]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[42] ),
        .O(B[46]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[47]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[43] ),
        .O(B[47]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[48]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[44] ),
        .O(B[48]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[49]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[45] ),
        .O(B[49]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[4]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[0] ),
        .O(B[4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[50]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[46] ),
        .O(B[50]));
  LUT6 #(
    .INIT(64'h00000000D0550055)) 
    \B[51]_i_1 
       (.I0(st__0[0]),
        .I1(\cnt_hex_reg[2]_0 ),
        .I2(in_ok),
        .I3(st__0[1]),
        .I4(rx_valid),
        .I5(st__0[2]),
        .O(\B[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[51]_i_2 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[47] ),
        .O(B[51]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[5]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[1] ),
        .O(B[5]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[6]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[2] ),
        .O(B[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[7]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[3] ),
        .O(B[7]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[8]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[4] ),
        .O(B[8]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[9]_i_1 
       (.I0(st__0[1]),
        .I1(\B_reg_n_0_[5] ),
        .O(B[9]));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[0] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(D[0]),
        .Q(\B_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[10] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[10]),
        .Q(\B_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[11] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[11]),
        .Q(\B_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[12] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[12]),
        .Q(\B_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[13] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[13]),
        .Q(\B_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[14] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[14]),
        .Q(\B_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[15] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[15]),
        .Q(\B_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[16] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[16]),
        .Q(\B_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[17] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[17]),
        .Q(\B_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[18] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[18]),
        .Q(\B_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[19] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[19]),
        .Q(\B_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[1] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(D[1]),
        .Q(\B_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[20] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[20]),
        .Q(\B_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[21] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[21]),
        .Q(\B_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[22] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[22]),
        .Q(\B_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[23] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[23]),
        .Q(\B_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[24] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[24]),
        .Q(\B_reg_n_0_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[25] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[25]),
        .Q(\B_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[26] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[26]),
        .Q(\B_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[27] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[27]),
        .Q(\B_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[28] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[28]),
        .Q(\B_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[29] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[29]),
        .Q(\B_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[2] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(D[2]),
        .Q(\B_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[30] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[30]),
        .Q(\B_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[31] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[31]),
        .Q(\B_reg_n_0_[31] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[32] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[32]),
        .Q(\B_reg_n_0_[32] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[33] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[33]),
        .Q(\B_reg_n_0_[33] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[34] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[34]),
        .Q(\B_reg_n_0_[34] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[35] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[35]),
        .Q(\B_reg_n_0_[35] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[36] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[36]),
        .Q(\B_reg_n_0_[36] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[37] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[37]),
        .Q(\B_reg_n_0_[37] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[38] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[38]),
        .Q(\B_reg_n_0_[38] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[39] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[39]),
        .Q(\B_reg_n_0_[39] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[3] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(D[3]),
        .Q(\B_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[40] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[40]),
        .Q(\B_reg_n_0_[40] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[41] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[41]),
        .Q(\B_reg_n_0_[41] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[42] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[42]),
        .Q(\B_reg_n_0_[42] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[43] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[43]),
        .Q(\B_reg_n_0_[43] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[44] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[44]),
        .Q(\B_reg_n_0_[44] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[45] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[45]),
        .Q(\B_reg_n_0_[45] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[46] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[46]),
        .Q(\B_reg_n_0_[46] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[47] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[47]),
        .Q(\B_reg_n_0_[47] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[48] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[48]),
        .Q(\B_reg_n_0_[48] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[49] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[49]),
        .Q(\B_reg_n_0_[49] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[4] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[4]),
        .Q(\B_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[50] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[50]),
        .Q(\B_reg_n_0_[50] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[51] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[51]),
        .Q(\B_reg_n_0_[51] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[5] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[5]),
        .Q(\B_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[6] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[6]),
        .Q(\B_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[7] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[7]),
        .Q(\B_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[8] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[8]),
        .Q(\B_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[9] 
       (.C(CLK),
        .CE(\B[51]_i_1_n_0 ),
        .D(B[9]),
        .Q(\B_reg_n_0_[9] ),
        .R(rst));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_st[0]_i_4 
       (.I0(\FSM_sequential_st[1]_i_6_n_0 ),
        .I1(st__0[1]),
        .O(\FSM_sequential_st[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \FSM_sequential_st[1]_i_2 
       (.I0(\cnt_hex_reg[1]_0 ),
        .I1(st__0[1]),
        .I2(rx_valid),
        .I3(st__0[2]),
        .I4(\FSM_sequential_st_reg[1]_2 ),
        .O(\FSM_sequential_st[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_st[1]_i_4 
       (.I0(st__0[1]),
        .I1(st__0[0]),
        .I2(st__0[2]),
        .O(\FSM_sequential_st_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \FSM_sequential_st[1]_i_6 
       (.I0(\FSM_sequential_st[1]_i_8_n_0 ),
        .I1(st__0[0]),
        .I2(\FSM_sequential_st[1]_i_9_n_0 ),
        .I3(\out_cnt_reg_n_0_[2] ),
        .I4(\out_cnt_reg_n_0_[0] ),
        .I5(\out_cnt_reg_n_0_[1] ),
        .O(\FSM_sequential_st[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_st[1]_i_8 
       (.I0(st__0[2]),
        .I1(tx_busy),
        .O(\FSM_sequential_st[1]_i_8_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "180" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_st[1]_i_9 
       (.I0(\out_cnt_reg_n_0_[4] ),
        .I1(\out_cnt_reg_n_0_[3] ),
        .I2(\out_cnt_reg_n_0_[5] ),
        .O(\FSM_sequential_st[1]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_st[2]_i_10 
       (.I0(st__0[2]),
        .I1(rx_valid),
        .O(\FSM_sequential_st_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A3A0A0)) 
    \FSM_sequential_st[2]_i_2 
       (.I0(\FSM_sequential_st[1]_i_6_n_0 ),
        .I1(\FSM_sequential_st_reg[2]_1 ),
        .I2(st__0[1]),
        .I3(st__0[2]),
        .I4(rx_valid),
        .I5(\cnt_hex_reg[1]_0 ),
        .O(\FSM_sequential_st[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "S_SEND_HDR:101,S_IN_A:001,S_SPACE:010,S_IN_B:011,S_WAIT_EQ:100,S_SEND_RES:110,S_IDLE:000,S_SEND_ERR:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(u_rom_n_18),
        .Q(st__0[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "S_SEND_HDR:101,S_IN_A:001,S_SPACE:010,S_IN_B:011,S_WAIT_EQ:100,S_SEND_RES:110,S_IDLE:000,S_SEND_ERR:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(u_rom_n_17),
        .Q(st__0[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "S_SEND_HDR:101,S_IN_A:001,S_SPACE:010,S_IN_B:011,S_WAIT_EQ:100,S_SEND_RES:110,S_IDLE:000,S_SEND_ERR:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(u_rom_n_16),
        .Q(st__0[2]),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000FF88FFF0FF88)) 
    \cnt_hex[0]_i_1 
       (.I0(rx_valid),
        .I1(in_ok),
        .I2(\cnt_hex_reg[2]_0 ),
        .I3(st__0[1]),
        .I4(st__0[0]),
        .I5(\cnt_hex_reg_n_0_[0] ),
        .O(cnt_hex[0]));
  LUT5 #(
    .INIT(32'h0707070F)) 
    \cnt_hex[0]_i_2 
       (.I0(\cnt_hex_reg_n_0_[2] ),
        .I1(\cnt_hex_reg_n_0_[3] ),
        .I2(\cnt_hex_reg_n_0_[4] ),
        .I3(\cnt_hex_reg_n_0_[0] ),
        .I4(\cnt_hex_reg_n_0_[1] ),
        .O(\cnt_hex_reg[2]_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_hex[1]_i_1 
       (.I0(\cnt_hex[4]_i_7_n_0 ),
        .I1(\cnt_hex_reg_n_0_[0] ),
        .I2(\cnt_hex_reg_n_0_[1] ),
        .O(cnt_hex[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt_hex[2]_i_1 
       (.I0(\cnt_hex[4]_i_7_n_0 ),
        .I1(\cnt_hex_reg_n_0_[1] ),
        .I2(\cnt_hex_reg_n_0_[0] ),
        .I3(\cnt_hex_reg_n_0_[2] ),
        .O(cnt_hex[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_hex[3]_i_1 
       (.I0(\cnt_hex[4]_i_7_n_0 ),
        .I1(\cnt_hex_reg_n_0_[2] ),
        .I2(\cnt_hex_reg_n_0_[0] ),
        .I3(\cnt_hex_reg_n_0_[1] ),
        .I4(\cnt_hex_reg_n_0_[3] ),
        .O(cnt_hex[3]));
  LUT6 #(
    .INIT(64'hCCCCCCCCFDDDDDDD)) 
    \cnt_hex[4]_i_1 
       (.I0(\FSM_sequential_st_reg[0]_0 ),
        .I1(\cnt_hex_reg[0]_0 ),
        .I2(in_ok),
        .I3(\cnt_hex_reg[1]_0 ),
        .I4(rx_valid),
        .I5(st__0[2]),
        .O(\cnt_hex[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \cnt_hex[4]_i_2 
       (.I0(\cnt_hex_reg_n_0_[2] ),
        .I1(\cnt_hex_reg_n_0_[0] ),
        .I2(\cnt_hex_reg_n_0_[1] ),
        .I3(\cnt_hex_reg_n_0_[3] ),
        .I4(\cnt_hex[4]_i_7_n_0 ),
        .I5(\cnt_hex_reg_n_0_[4] ),
        .O(cnt_hex[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_hex[4]_i_3 
       (.I0(st__0[0]),
        .I1(st__0[1]),
        .O(\FSM_sequential_st_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h010F0F0FFFFFFFFF)) 
    \cnt_hex[4]_i_6 
       (.I0(\cnt_hex_reg_n_0_[1] ),
        .I1(\cnt_hex_reg_n_0_[0] ),
        .I2(\cnt_hex_reg_n_0_[4] ),
        .I3(\cnt_hex_reg_n_0_[3] ),
        .I4(\cnt_hex_reg_n_0_[2] ),
        .I5(st__0[0]),
        .O(\cnt_hex_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \cnt_hex[4]_i_7 
       (.I0(st__0[1]),
        .I1(\cnt_hex_reg[2]_0 ),
        .I2(st__0[0]),
        .O(\cnt_hex[4]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_hex_reg[0] 
       (.C(CLK),
        .CE(\cnt_hex[4]_i_1_n_0 ),
        .D(cnt_hex[0]),
        .Q(\cnt_hex_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_hex_reg[1] 
       (.C(CLK),
        .CE(\cnt_hex[4]_i_1_n_0 ),
        .D(cnt_hex[1]),
        .Q(\cnt_hex_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_hex_reg[2] 
       (.C(CLK),
        .CE(\cnt_hex[4]_i_1_n_0 ),
        .D(cnt_hex[2]),
        .Q(\cnt_hex_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_hex_reg[3] 
       (.C(CLK),
        .CE(\cnt_hex[4]_i_1_n_0 ),
        .D(cnt_hex[3]),
        .Q(\cnt_hex_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_hex_reg[4] 
       (.C(CLK),
        .CE(\cnt_hex[4]_i_1_n_0 ),
        .D(cnt_hex[4]),
        .Q(\cnt_hex_reg_n_0_[4] ),
        .R(rst));
  LUT5 #(
    .INIT(32'h00000400)) 
    \nib[3]_i_1 
       (.I0(rst),
        .I1(st__0[1]),
        .I2(st__0[0]),
        .I3(st__0[2]),
        .I4(tx_busy),
        .O(\nib[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \nib_reg[0] 
       (.C(CLK),
        .CE(\nib[3]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(nib[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \nib_reg[1] 
       (.C(CLK),
        .CE(\nib[3]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(nib[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \nib_reg[2] 
       (.C(CLK),
        .CE(\nib[3]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(nib[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \nib_reg[3] 
       (.C(CLK),
        .CE(\nib[3]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(nib[3]),
        .R(1'b0));
  (* \PinAttr:I1:HOLD_DETOUR  = "181" *) 
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_cnt[0]_i_1 
       (.I0(st__0[1]),
        .I1(\out_cnt_reg_n_0_[0] ),
        .O(out_cnt[0]));
  (* \PinAttr:I2:HOLD_DETOUR  = "186" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \out_cnt[1]_i_1 
       (.I0(st__0[1]),
        .I1(\out_cnt_reg_n_0_[0] ),
        .I2(\out_cnt_reg_n_0_[1] ),
        .O(out_cnt[1]));
  (* \PinAttr:I0:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \out_cnt[2]_i_1 
       (.I0(\out_cnt_reg_n_0_[1] ),
        .I1(\out_cnt_reg_n_0_[0] ),
        .I2(st__0[1]),
        .I3(\out_cnt_reg_n_0_[2] ),
        .O(out_cnt[2]));
  (* \PinAttr:I1:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \out_cnt[3]_i_1 
       (.I0(\out_cnt_reg_n_0_[0] ),
        .I1(\out_cnt_reg_n_0_[1] ),
        .I2(\out_cnt_reg_n_0_[2] ),
        .I3(st__0[1]),
        .I4(\out_cnt_reg_n_0_[3] ),
        .O(out_cnt[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \out_cnt[4]_i_1 
       (.I0(\out_cnt_reg_n_0_[2] ),
        .I1(\out_cnt_reg_n_0_[1] ),
        .I2(\out_cnt_reg_n_0_[0] ),
        .I3(\out_cnt_reg_n_0_[3] ),
        .I4(st__0[1]),
        .I5(\out_cnt_reg_n_0_[4] ),
        .O(out_cnt[4]));
  (* \PinAttr:I1:HOLD_DETOUR  = "180" *) 
  LUT5 #(
    .INIT(32'h9CCC0000)) 
    \out_cnt[5]_i_1 
       (.I0(\out_cnt[5]_i_2_n_0 ),
        .I1(\out_cnt_reg_n_0_[5] ),
        .I2(\out_cnt_reg_n_0_[3] ),
        .I3(\out_cnt_reg_n_0_[4] ),
        .I4(st__0[1]),
        .O(out_cnt[5]));
  (* \PinAttr:I1:HOLD_DETOUR  = "186" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \out_cnt[5]_i_2 
       (.I0(\out_cnt_reg_n_0_[0] ),
        .I1(\out_cnt_reg_n_0_[1] ),
        .I2(\out_cnt_reg_n_0_[2] ),
        .O(\out_cnt[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_cnt_reg[0] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(out_cnt[0]),
        .Q(\out_cnt_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_cnt_reg[1] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(out_cnt[1]),
        .Q(\out_cnt_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_cnt_reg[2] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(out_cnt[2]),
        .Q(\out_cnt_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_cnt_reg[3] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(out_cnt[3]),
        .Q(\out_cnt_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_cnt_reg[4] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(out_cnt[4]),
        .Q(\out_cnt_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_cnt_reg[5] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(out_cnt[5]),
        .Q(\out_cnt_reg_n_0_[5] ),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \result[0]_i_1 
       (.I0(in37[0]),
        .I1(st__0[1]),
        .O(result[0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[100]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[96] ),
        .O(result[100]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[101]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[97] ),
        .O(result[101]));
  (* \PinAttr:I1:HOLD_DETOUR  = "162" *) 
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[102]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[98] ),
        .O(result[102]));
  LUT4 #(
    .INIT(16'h040C)) 
    \result[103]_i_1 
       (.I0(tx_busy),
        .I1(st__0[2]),
        .I2(st__0[0]),
        .I3(st__0[1]),
        .O(\result[103]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[103]_i_2 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[99] ),
        .O(result[103]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[10]_i_1 
       (.I0(\result_reg_n_0_[6] ),
        .I1(st__0[1]),
        .I2(in37[10]),
        .O(result[10]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[11]_i_1 
       (.I0(\result_reg_n_0_[7] ),
        .I1(st__0[1]),
        .I2(in37[11]),
        .O(result[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[11]_i_3 
       (.I0(Q[11]),
        .I1(\B_reg_n_0_[11] ),
        .O(\result[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[11]_i_4 
       (.I0(Q[10]),
        .I1(\B_reg_n_0_[10] ),
        .O(\result[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[11]_i_5 
       (.I0(Q[9]),
        .I1(\B_reg_n_0_[9] ),
        .O(\result[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[11]_i_6 
       (.I0(Q[8]),
        .I1(\B_reg_n_0_[8] ),
        .O(\result[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[12]_i_1 
       (.I0(\result_reg_n_0_[8] ),
        .I1(st__0[1]),
        .I2(in37[12]),
        .O(result[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[13]_i_1 
       (.I0(\result_reg_n_0_[9] ),
        .I1(st__0[1]),
        .I2(in37[13]),
        .O(result[13]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[14]_i_1 
       (.I0(\result_reg_n_0_[10] ),
        .I1(st__0[1]),
        .I2(in37[14]),
        .O(result[14]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[15]_i_1 
       (.I0(\result_reg_n_0_[11] ),
        .I1(st__0[1]),
        .I2(in37[15]),
        .O(result[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[15]_i_3 
       (.I0(Q[15]),
        .I1(\B_reg_n_0_[15] ),
        .O(\result[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[15]_i_4 
       (.I0(Q[14]),
        .I1(\B_reg_n_0_[14] ),
        .O(\result[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[15]_i_5 
       (.I0(Q[13]),
        .I1(\B_reg_n_0_[13] ),
        .O(\result[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[15]_i_6 
       (.I0(Q[12]),
        .I1(\B_reg_n_0_[12] ),
        .O(\result[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[16]_i_1 
       (.I0(\result_reg_n_0_[12] ),
        .I1(st__0[1]),
        .I2(in37[16]),
        .O(result[16]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[17]_i_1 
       (.I0(\result_reg_n_0_[13] ),
        .I1(st__0[1]),
        .I2(in37[17]),
        .O(result[17]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[18]_i_1 
       (.I0(\result_reg_n_0_[14] ),
        .I1(st__0[1]),
        .I2(in37[18]),
        .O(result[18]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[19]_i_1 
       (.I0(\result_reg_n_0_[15] ),
        .I1(st__0[1]),
        .I2(in37[19]),
        .O(result[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[19]_i_3 
       (.I0(Q[19]),
        .I1(\B_reg_n_0_[19] ),
        .O(\result[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[19]_i_4 
       (.I0(Q[18]),
        .I1(\B_reg_n_0_[18] ),
        .O(\result[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[19]_i_5 
       (.I0(Q[17]),
        .I1(\B_reg_n_0_[17] ),
        .O(\result[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[19]_i_6 
       (.I0(Q[16]),
        .I1(\B_reg_n_0_[16] ),
        .O(\result[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result[1]_i_1 
       (.I0(in37[1]),
        .I1(st__0[1]),
        .O(result[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[20]_i_1 
       (.I0(\result_reg_n_0_[16] ),
        .I1(st__0[1]),
        .I2(in37[20]),
        .O(result[20]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[21]_i_1 
       (.I0(\result_reg_n_0_[17] ),
        .I1(st__0[1]),
        .I2(in37[21]),
        .O(result[21]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[22]_i_1 
       (.I0(\result_reg_n_0_[18] ),
        .I1(st__0[1]),
        .I2(in37[22]),
        .O(result[22]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[23]_i_1 
       (.I0(\result_reg_n_0_[19] ),
        .I1(st__0[1]),
        .I2(in37[23]),
        .O(result[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[23]_i_3 
       (.I0(Q[23]),
        .I1(\B_reg_n_0_[23] ),
        .O(\result[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[23]_i_4 
       (.I0(Q[22]),
        .I1(\B_reg_n_0_[22] ),
        .O(\result[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[23]_i_5 
       (.I0(Q[21]),
        .I1(\B_reg_n_0_[21] ),
        .O(\result[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[23]_i_6 
       (.I0(Q[20]),
        .I1(\B_reg_n_0_[20] ),
        .O(\result[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[24]_i_1 
       (.I0(\result_reg_n_0_[20] ),
        .I1(st__0[1]),
        .I2(in37[24]),
        .O(result[24]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[25]_i_1 
       (.I0(\result_reg_n_0_[21] ),
        .I1(st__0[1]),
        .I2(in37[25]),
        .O(result[25]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[26]_i_1 
       (.I0(\result_reg_n_0_[22] ),
        .I1(st__0[1]),
        .I2(in37[26]),
        .O(result[26]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[27]_i_1 
       (.I0(\result_reg_n_0_[23] ),
        .I1(st__0[1]),
        .I2(in37[27]),
        .O(result[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[27]_i_3 
       (.I0(Q[27]),
        .I1(\B_reg_n_0_[27] ),
        .O(\result[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[27]_i_4 
       (.I0(Q[26]),
        .I1(\B_reg_n_0_[26] ),
        .O(\result[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[27]_i_5 
       (.I0(Q[25]),
        .I1(\B_reg_n_0_[25] ),
        .O(\result[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[27]_i_6 
       (.I0(Q[24]),
        .I1(\B_reg_n_0_[24] ),
        .O(\result[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[28]_i_1 
       (.I0(\result_reg_n_0_[24] ),
        .I1(st__0[1]),
        .I2(in37[28]),
        .O(result[28]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[29]_i_1 
       (.I0(\result_reg_n_0_[25] ),
        .I1(st__0[1]),
        .I2(in37[29]),
        .O(result[29]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result[2]_i_1 
       (.I0(in37[2]),
        .I1(st__0[1]),
        .O(result[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[30]_i_1 
       (.I0(\result_reg_n_0_[26] ),
        .I1(st__0[1]),
        .I2(in37[30]),
        .O(result[30]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[31]_i_1 
       (.I0(\result_reg_n_0_[27] ),
        .I1(st__0[1]),
        .I2(in37[31]),
        .O(result[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[31]_i_3 
       (.I0(Q[31]),
        .I1(\B_reg_n_0_[31] ),
        .O(\result[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[31]_i_4 
       (.I0(Q[30]),
        .I1(\B_reg_n_0_[30] ),
        .O(\result[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[31]_i_5 
       (.I0(Q[29]),
        .I1(\B_reg_n_0_[29] ),
        .O(\result[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[31]_i_6 
       (.I0(Q[28]),
        .I1(\B_reg_n_0_[28] ),
        .O(\result[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[32]_i_1 
       (.I0(\result_reg_n_0_[28] ),
        .I1(st__0[1]),
        .I2(in37[32]),
        .O(result[32]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[33]_i_1 
       (.I0(\result_reg_n_0_[29] ),
        .I1(st__0[1]),
        .I2(in37[33]),
        .O(result[33]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[34]_i_1 
       (.I0(\result_reg_n_0_[30] ),
        .I1(st__0[1]),
        .I2(in37[34]),
        .O(result[34]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[35]_i_1 
       (.I0(\result_reg_n_0_[31] ),
        .I1(st__0[1]),
        .I2(in37[35]),
        .O(result[35]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[35]_i_3 
       (.I0(Q[35]),
        .I1(\B_reg_n_0_[35] ),
        .O(\result[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[35]_i_4 
       (.I0(Q[34]),
        .I1(\B_reg_n_0_[34] ),
        .O(\result[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[35]_i_5 
       (.I0(Q[33]),
        .I1(\B_reg_n_0_[33] ),
        .O(\result[35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[35]_i_6 
       (.I0(Q[32]),
        .I1(\B_reg_n_0_[32] ),
        .O(\result[35]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[36]_i_1 
       (.I0(\result_reg_n_0_[32] ),
        .I1(st__0[1]),
        .I2(in37[36]),
        .O(result[36]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[37]_i_1 
       (.I0(\result_reg_n_0_[33] ),
        .I1(st__0[1]),
        .I2(in37[37]),
        .O(result[37]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[38]_i_1 
       (.I0(\result_reg_n_0_[34] ),
        .I1(st__0[1]),
        .I2(in37[38]),
        .O(result[38]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[39]_i_1 
       (.I0(\result_reg_n_0_[35] ),
        .I1(st__0[1]),
        .I2(in37[39]),
        .O(result[39]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[39]_i_3 
       (.I0(Q[39]),
        .I1(\B_reg_n_0_[39] ),
        .O(\result[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[39]_i_4 
       (.I0(Q[38]),
        .I1(\B_reg_n_0_[38] ),
        .O(\result[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[39]_i_5 
       (.I0(Q[37]),
        .I1(\B_reg_n_0_[37] ),
        .O(\result[39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[39]_i_6 
       (.I0(Q[36]),
        .I1(\B_reg_n_0_[36] ),
        .O(\result[39]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result[3]_i_1 
       (.I0(in37[3]),
        .I1(st__0[1]),
        .O(result[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_3 
       (.I0(Q[3]),
        .I1(\B_reg_n_0_[3] ),
        .O(\result[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_4 
       (.I0(Q[2]),
        .I1(\B_reg_n_0_[2] ),
        .O(\result[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_5 
       (.I0(Q[1]),
        .I1(\B_reg_n_0_[1] ),
        .O(\result[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[3]_i_6 
       (.I0(Q[0]),
        .I1(\B_reg_n_0_[0] ),
        .O(\result[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[40]_i_1 
       (.I0(\result_reg_n_0_[36] ),
        .I1(st__0[1]),
        .I2(in37[40]),
        .O(result[40]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[41]_i_1 
       (.I0(\result_reg_n_0_[37] ),
        .I1(st__0[1]),
        .I2(in37[41]),
        .O(result[41]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[42]_i_1 
       (.I0(\result_reg_n_0_[38] ),
        .I1(st__0[1]),
        .I2(in37[42]),
        .O(result[42]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[43]_i_1 
       (.I0(\result_reg_n_0_[39] ),
        .I1(st__0[1]),
        .I2(in37[43]),
        .O(result[43]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[43]_i_3 
       (.I0(Q[43]),
        .I1(\B_reg_n_0_[43] ),
        .O(\result[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[43]_i_4 
       (.I0(Q[42]),
        .I1(\B_reg_n_0_[42] ),
        .O(\result[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[43]_i_5 
       (.I0(Q[41]),
        .I1(\B_reg_n_0_[41] ),
        .O(\result[43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[43]_i_6 
       (.I0(Q[40]),
        .I1(\B_reg_n_0_[40] ),
        .O(\result[43]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[44]_i_1 
       (.I0(\result_reg_n_0_[40] ),
        .I1(st__0[1]),
        .I2(in37[44]),
        .O(result[44]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[45]_i_1 
       (.I0(\result_reg_n_0_[41] ),
        .I1(st__0[1]),
        .I2(in37[45]),
        .O(result[45]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[46]_i_1 
       (.I0(\result_reg_n_0_[42] ),
        .I1(st__0[1]),
        .I2(in37[46]),
        .O(result[46]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[47]_i_1 
       (.I0(\result_reg_n_0_[43] ),
        .I1(st__0[1]),
        .I2(in37[47]),
        .O(result[47]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[47]_i_3 
       (.I0(Q[47]),
        .I1(\B_reg_n_0_[47] ),
        .O(\result[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[47]_i_4 
       (.I0(Q[46]),
        .I1(\B_reg_n_0_[46] ),
        .O(\result[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[47]_i_5 
       (.I0(Q[45]),
        .I1(\B_reg_n_0_[45] ),
        .O(\result[47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[47]_i_6 
       (.I0(Q[44]),
        .I1(\B_reg_n_0_[44] ),
        .O(\result[47]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[48]_i_1 
       (.I0(\result_reg_n_0_[44] ),
        .I1(st__0[1]),
        .I2(in37[48]),
        .O(result[48]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[49]_i_1 
       (.I0(\result_reg_n_0_[45] ),
        .I1(st__0[1]),
        .I2(in37[49]),
        .O(result[49]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[4]_i_1 
       (.I0(\result_reg_n_0_[0] ),
        .I1(st__0[1]),
        .I2(in37[4]),
        .O(result[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[50]_i_1 
       (.I0(\result_reg_n_0_[46] ),
        .I1(st__0[1]),
        .I2(in37[50]),
        .O(result[50]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[51]_i_1 
       (.I0(\result_reg_n_0_[47] ),
        .I1(st__0[1]),
        .I2(in37[51]),
        .O(result[51]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[51]_i_3 
       (.I0(\A_reg_n_0_[51] ),
        .I1(\B_reg_n_0_[51] ),
        .O(\result[51]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[51]_i_4 
       (.I0(\A_reg_n_0_[50] ),
        .I1(\B_reg_n_0_[50] ),
        .O(\result[51]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[51]_i_5 
       (.I0(\A_reg_n_0_[49] ),
        .I1(\B_reg_n_0_[49] ),
        .O(\result[51]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[51]_i_6 
       (.I0(\A_reg_n_0_[48] ),
        .I1(\B_reg_n_0_[48] ),
        .O(\result[51]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[52]_i_1 
       (.I0(\result_reg_n_0_[48] ),
        .I1(st__0[1]),
        .I2(in37[52]),
        .O(result[52]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[53]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[49] ),
        .O(result[53]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[54]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[50] ),
        .O(result[54]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[55]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[51] ),
        .O(result[55]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[56]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[52] ),
        .O(result[56]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[57]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[53] ),
        .O(result[57]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[58]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[54] ),
        .O(result[58]));
  (* \PinAttr:I1:HOLD_DETOUR  = "183" *) 
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[59]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[55] ),
        .O(result[59]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[5]_i_1 
       (.I0(\result_reg_n_0_[1] ),
        .I1(st__0[1]),
        .I2(in37[5]),
        .O(result[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[60]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[56] ),
        .O(result[60]));
  (* \PinAttr:I1:HOLD_DETOUR  = "188" *) 
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[61]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[57] ),
        .O(result[61]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[62]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[58] ),
        .O(result[62]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[63]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[59] ),
        .O(result[63]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[64]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[60] ),
        .O(result[64]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[65]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[61] ),
        .O(result[65]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[66]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[62] ),
        .O(result[66]));
  (* \PinAttr:I1:HOLD_DETOUR  = "183" *) 
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[67]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[63] ),
        .O(result[67]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[68]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[64] ),
        .O(result[68]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[69]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[65] ),
        .O(result[69]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[6]_i_1 
       (.I0(\result_reg_n_0_[2] ),
        .I1(st__0[1]),
        .I2(in37[6]),
        .O(result[6]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[70]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[66] ),
        .O(result[70]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[71]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[67] ),
        .O(result[71]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[72]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[68] ),
        .O(result[72]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[73]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[69] ),
        .O(result[73]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[74]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[70] ),
        .O(result[74]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[75]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[71] ),
        .O(result[75]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[76]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[72] ),
        .O(result[76]));
  (* \PinAttr:I1:HOLD_DETOUR  = "187" *) 
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[77]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[73] ),
        .O(result[77]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[78]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[74] ),
        .O(result[78]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[79]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[75] ),
        .O(result[79]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[7]_i_1 
       (.I0(\result_reg_n_0_[3] ),
        .I1(st__0[1]),
        .I2(in37[7]),
        .O(result[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_3 
       (.I0(Q[7]),
        .I1(\B_reg_n_0_[7] ),
        .O(\result[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_4 
       (.I0(Q[6]),
        .I1(\B_reg_n_0_[6] ),
        .O(\result[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_5 
       (.I0(Q[5]),
        .I1(\B_reg_n_0_[5] ),
        .O(\result[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[7]_i_6 
       (.I0(Q[4]),
        .I1(\B_reg_n_0_[4] ),
        .O(\result[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[80]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[76] ),
        .O(result[80]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[81]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[77] ),
        .O(result[81]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[82]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[78] ),
        .O(result[82]));
  (* \PinAttr:I1:HOLD_DETOUR  = "182" *) 
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[83]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[79] ),
        .O(result[83]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[84]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[80] ),
        .O(result[84]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[85]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[81] ),
        .O(result[85]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[86]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[82] ),
        .O(result[86]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[87]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[83] ),
        .O(result[87]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[88]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[84] ),
        .O(result[88]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[89]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[85] ),
        .O(result[89]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[8]_i_1 
       (.I0(\result_reg_n_0_[4] ),
        .I1(st__0[1]),
        .I2(in37[8]),
        .O(result[8]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[90]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[86] ),
        .O(result[90]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[91]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[87] ),
        .O(result[91]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[92]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[88] ),
        .O(result[92]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[93]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[89] ),
        .O(result[93]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[94]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[90] ),
        .O(result[94]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[95]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[91] ),
        .O(result[95]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[96]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[92] ),
        .O(result[96]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[97]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[93] ),
        .O(result[97]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[98]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[94] ),
        .O(result[98]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[99]_i_1 
       (.I0(st__0[1]),
        .I1(\result_reg_n_0_[95] ),
        .O(result[99]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[9]_i_1 
       (.I0(\result_reg_n_0_[5] ),
        .I1(st__0[1]),
        .I2(in37[9]),
        .O(result[9]));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[0]),
        .Q(\result_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[100] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[100]),
        .Q(p_0_in[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[101] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[101]),
        .Q(p_0_in[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[102] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[102]),
        .Q(p_0_in[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[103] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[103]),
        .Q(p_0_in[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[10] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[10]),
        .Q(\result_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[11] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[11]),
        .Q(\result_reg_n_0_[11] ),
        .R(rst));
  CARRY4 \result_reg[11]_i_2 
       (.CI(\result_reg[7]_i_2_n_0 ),
        .CO({\result_reg[11]_i_2_n_0 ,\NLW_result_reg[11]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(in37[11:8]),
        .S({\result[11]_i_3_n_0 ,\result[11]_i_4_n_0 ,\result[11]_i_5_n_0 ,\result[11]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[12] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[12]),
        .Q(\result_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[13] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[13]),
        .Q(\result_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[14] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[14]),
        .Q(\result_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[15] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[15]),
        .Q(\result_reg_n_0_[15] ),
        .R(rst));
  CARRY4 \result_reg[15]_i_2 
       (.CI(\result_reg[11]_i_2_n_0 ),
        .CO({\result_reg[15]_i_2_n_0 ,\NLW_result_reg[15]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(in37[15:12]),
        .S({\result[15]_i_3_n_0 ,\result[15]_i_4_n_0 ,\result[15]_i_5_n_0 ,\result[15]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[16] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[16]),
        .Q(\result_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[17] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[17]),
        .Q(\result_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[18] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[18]),
        .Q(\result_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[19] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[19]),
        .Q(\result_reg_n_0_[19] ),
        .R(rst));
  CARRY4 \result_reg[19]_i_2 
       (.CI(\result_reg[15]_i_2_n_0 ),
        .CO({\result_reg[19]_i_2_n_0 ,\NLW_result_reg[19]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(in37[19:16]),
        .S({\result[19]_i_3_n_0 ,\result[19]_i_4_n_0 ,\result[19]_i_5_n_0 ,\result[19]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[1]),
        .Q(\result_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[20] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[20]),
        .Q(\result_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[21] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[21]),
        .Q(\result_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[22] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[22]),
        .Q(\result_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[23] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[23]),
        .Q(\result_reg_n_0_[23] ),
        .R(rst));
  CARRY4 \result_reg[23]_i_2 
       (.CI(\result_reg[19]_i_2_n_0 ),
        .CO({\result_reg[23]_i_2_n_0 ,\NLW_result_reg[23]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(in37[23:20]),
        .S({\result[23]_i_3_n_0 ,\result[23]_i_4_n_0 ,\result[23]_i_5_n_0 ,\result[23]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[24] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[24]),
        .Q(\result_reg_n_0_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[25] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[25]),
        .Q(\result_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[26] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[26]),
        .Q(\result_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[27] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[27]),
        .Q(\result_reg_n_0_[27] ),
        .R(rst));
  CARRY4 \result_reg[27]_i_2 
       (.CI(\result_reg[23]_i_2_n_0 ),
        .CO({\result_reg[27]_i_2_n_0 ,\NLW_result_reg[27]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(in37[27:24]),
        .S({\result[27]_i_3_n_0 ,\result[27]_i_4_n_0 ,\result[27]_i_5_n_0 ,\result[27]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[28] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[28]),
        .Q(\result_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[29] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[29]),
        .Q(\result_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[2]),
        .Q(\result_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[30] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[30]),
        .Q(\result_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[31] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[31]),
        .Q(\result_reg_n_0_[31] ),
        .R(rst));
  CARRY4 \result_reg[31]_i_2 
       (.CI(\result_reg[27]_i_2_n_0 ),
        .CO({\result_reg[31]_i_2_n_0 ,\NLW_result_reg[31]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[31:28]),
        .O(in37[31:28]),
        .S({\result[31]_i_3_n_0 ,\result[31]_i_4_n_0 ,\result[31]_i_5_n_0 ,\result[31]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[32] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[32]),
        .Q(\result_reg_n_0_[32] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[33] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[33]),
        .Q(\result_reg_n_0_[33] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[34] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[34]),
        .Q(\result_reg_n_0_[34] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[35] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[35]),
        .Q(\result_reg_n_0_[35] ),
        .R(rst));
  CARRY4 \result_reg[35]_i_2 
       (.CI(\result_reg[31]_i_2_n_0 ),
        .CO({\result_reg[35]_i_2_n_0 ,\NLW_result_reg[35]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[35:32]),
        .O(in37[35:32]),
        .S({\result[35]_i_3_n_0 ,\result[35]_i_4_n_0 ,\result[35]_i_5_n_0 ,\result[35]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[36] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[36]),
        .Q(\result_reg_n_0_[36] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[37] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[37]),
        .Q(\result_reg_n_0_[37] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[38] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[38]),
        .Q(\result_reg_n_0_[38] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[39] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[39]),
        .Q(\result_reg_n_0_[39] ),
        .R(rst));
  CARRY4 \result_reg[39]_i_2 
       (.CI(\result_reg[35]_i_2_n_0 ),
        .CO({\result_reg[39]_i_2_n_0 ,\NLW_result_reg[39]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[39:36]),
        .O(in37[39:36]),
        .S({\result[39]_i_3_n_0 ,\result[39]_i_4_n_0 ,\result[39]_i_5_n_0 ,\result[39]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[3]),
        .Q(\result_reg_n_0_[3] ),
        .R(rst));
  CARRY4 \result_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_2_n_0 ,\NLW_result_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(in37[3:0]),
        .S({\result[3]_i_3_n_0 ,\result[3]_i_4_n_0 ,\result[3]_i_5_n_0 ,\result[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[40] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[40]),
        .Q(\result_reg_n_0_[40] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[41] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[41]),
        .Q(\result_reg_n_0_[41] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[42] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[42]),
        .Q(\result_reg_n_0_[42] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[43] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[43]),
        .Q(\result_reg_n_0_[43] ),
        .R(rst));
  CARRY4 \result_reg[43]_i_2 
       (.CI(\result_reg[39]_i_2_n_0 ),
        .CO({\result_reg[43]_i_2_n_0 ,\NLW_result_reg[43]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[43:40]),
        .O(in37[43:40]),
        .S({\result[43]_i_3_n_0 ,\result[43]_i_4_n_0 ,\result[43]_i_5_n_0 ,\result[43]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[44] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[44]),
        .Q(\result_reg_n_0_[44] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[45] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[45]),
        .Q(\result_reg_n_0_[45] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[46] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[46]),
        .Q(\result_reg_n_0_[46] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[47] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[47]),
        .Q(\result_reg_n_0_[47] ),
        .R(rst));
  CARRY4 \result_reg[47]_i_2 
       (.CI(\result_reg[43]_i_2_n_0 ),
        .CO({\result_reg[47]_i_2_n_0 ,\NLW_result_reg[47]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[47:44]),
        .O(in37[47:44]),
        .S({\result[47]_i_3_n_0 ,\result[47]_i_4_n_0 ,\result[47]_i_5_n_0 ,\result[47]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[48] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[48]),
        .Q(\result_reg_n_0_[48] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[49] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[49]),
        .Q(\result_reg_n_0_[49] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[4]),
        .Q(\result_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[50] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[50]),
        .Q(\result_reg_n_0_[50] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[51] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[51]),
        .Q(\result_reg_n_0_[51] ),
        .R(rst));
  CARRY4 \result_reg[51]_i_2 
       (.CI(\result_reg[47]_i_2_n_0 ),
        .CO({\result_reg[51]_i_2_n_0 ,\NLW_result_reg[51]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\A_reg_n_0_[51] ,\A_reg_n_0_[50] ,\A_reg_n_0_[49] ,\A_reg_n_0_[48] }),
        .O(in37[51:48]),
        .S({\result[51]_i_3_n_0 ,\result[51]_i_4_n_0 ,\result[51]_i_5_n_0 ,\result[51]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[52] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[52]),
        .Q(\result_reg_n_0_[52] ),
        .R(rst));
  CARRY4 \result_reg[52]_i_2 
       (.CI(\result_reg[51]_i_2_n_0 ),
        .CO({\NLW_result_reg[52]_i_2_CO_UNCONNECTED [3:1],in37[52]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_result_reg[52]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[53] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[53]),
        .Q(\result_reg_n_0_[53] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[54] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[54]),
        .Q(\result_reg_n_0_[54] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[55] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[55]),
        .Q(\result_reg_n_0_[55] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[56] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[56]),
        .Q(\result_reg_n_0_[56] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[57] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[57]),
        .Q(\result_reg_n_0_[57] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[58] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[58]),
        .Q(\result_reg_n_0_[58] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[59] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[59]),
        .Q(\result_reg_n_0_[59] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[5]),
        .Q(\result_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[60] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[60]),
        .Q(\result_reg_n_0_[60] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[61] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[61]),
        .Q(\result_reg_n_0_[61] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[62] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[62]),
        .Q(\result_reg_n_0_[62] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[63] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[63]),
        .Q(\result_reg_n_0_[63] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[64] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[64]),
        .Q(\result_reg_n_0_[64] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[65] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[65]),
        .Q(\result_reg_n_0_[65] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[66] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[66]),
        .Q(\result_reg_n_0_[66] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[67] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[67]),
        .Q(\result_reg_n_0_[67] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[68] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[68]),
        .Q(\result_reg_n_0_[68] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[69] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[69]),
        .Q(\result_reg_n_0_[69] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[6]),
        .Q(\result_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[70] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[70]),
        .Q(\result_reg_n_0_[70] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[71] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[71]),
        .Q(\result_reg_n_0_[71] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[72] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[72]),
        .Q(\result_reg_n_0_[72] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[73] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[73]),
        .Q(\result_reg_n_0_[73] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[74] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[74]),
        .Q(\result_reg_n_0_[74] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[75] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[75]),
        .Q(\result_reg_n_0_[75] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[76] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[76]),
        .Q(\result_reg_n_0_[76] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[77] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[77]),
        .Q(\result_reg_n_0_[77] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[78] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[78]),
        .Q(\result_reg_n_0_[78] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[79] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[79]),
        .Q(\result_reg_n_0_[79] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[7]),
        .Q(\result_reg_n_0_[7] ),
        .R(rst));
  CARRY4 \result_reg[7]_i_2 
       (.CI(\result_reg[3]_i_2_n_0 ),
        .CO({\result_reg[7]_i_2_n_0 ,\NLW_result_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(in37[7:4]),
        .S({\result[7]_i_3_n_0 ,\result[7]_i_4_n_0 ,\result[7]_i_5_n_0 ,\result[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[80] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[80]),
        .Q(\result_reg_n_0_[80] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[81] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[81]),
        .Q(\result_reg_n_0_[81] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[82] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[82]),
        .Q(\result_reg_n_0_[82] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[83] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[83]),
        .Q(\result_reg_n_0_[83] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[84] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[84]),
        .Q(\result_reg_n_0_[84] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[85] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[85]),
        .Q(\result_reg_n_0_[85] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[86] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[86]),
        .Q(\result_reg_n_0_[86] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[87] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[87]),
        .Q(\result_reg_n_0_[87] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[88] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[88]),
        .Q(\result_reg_n_0_[88] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[89] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[89]),
        .Q(\result_reg_n_0_[89] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[8]),
        .Q(\result_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[90] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[90]),
        .Q(\result_reg_n_0_[90] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[91] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[91]),
        .Q(\result_reg_n_0_[91] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[92] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[92]),
        .Q(\result_reg_n_0_[92] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[93] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[93]),
        .Q(\result_reg_n_0_[93] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[94] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[94]),
        .Q(\result_reg_n_0_[94] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[95] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[95]),
        .Q(\result_reg_n_0_[95] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[96] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[96]),
        .Q(\result_reg_n_0_[96] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[97] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[97]),
        .Q(\result_reg_n_0_[97] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[98] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[98]),
        .Q(\result_reg_n_0_[98] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[99] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[99]),
        .Q(\result_reg_n_0_[99] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[9] 
       (.C(CLK),
        .CE(\result[103]_i_1_n_0 ),
        .D(result[9]),
        .Q(\result_reg_n_0_[9] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \rom_idx[7]_i_5 
       (.I0(\rom_idx_reg_n_0_[1] ),
        .I1(\rom_idx_reg_n_0_[0] ),
        .I2(\rom_idx_reg_n_0_[2] ),
        .I3(\rom_idx_reg_n_0_[3] ),
        .I4(\rom_idx_reg_n_0_[4] ),
        .I5(\rom_idx_reg_n_0_[5] ),
        .O(\rom_idx[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rom_idx_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(u_rom_n_7),
        .Q(\rom_idx_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rom_idx_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(u_rom_n_6),
        .Q(\rom_idx_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rom_idx_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(u_rom_n_5),
        .Q(\rom_idx_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rom_idx_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(u_rom_n_4),
        .Q(\rom_idx_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rom_idx_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(u_rom_n_3),
        .Q(\rom_idx_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rom_idx_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(u_rom_n_2),
        .Q(\rom_idx_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rom_idx_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(u_rom_n_1),
        .Q(\rom_idx_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rom_idx_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(u_rom_n_0),
        .Q(p_0_in0),
        .R(rst));
  LUT6 #(
    .INIT(64'hFCFEFCFFFC54FC00)) 
    \rom_sel[0]_i_1 
       (.I0(st__0[2]),
        .I1(\rom_sel_reg[0]_0 ),
        .I2(\rom_sel[0]_i_3_n_0 ),
        .I3(\rom_sel[0]_i_4_n_0 ),
        .I4(\rom_sel_reg[1]_2 ),
        .I5(\rom_sel_reg_n_0_[0] ),
        .O(\rom_sel[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00FB)) 
    \rom_sel[0]_i_3 
       (.I0(st__0[1]),
        .I1(st__0[2]),
        .I2(st__0[0]),
        .I3(rx_par_err),
        .O(\rom_sel[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEE00EF00)) 
    \rom_sel[0]_i_4 
       (.I0(rx_par_err),
        .I1(rx_frm_err),
        .I2(st__0[1]),
        .I3(st__0[2]),
        .I4(st__0[0]),
        .O(\rom_sel[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABBAFBBAA88A088A)) 
    \rom_sel[1]_i_1 
       (.I0(rom_sel),
        .I1(\rom_sel_reg[1]_0 ),
        .I2(\rom_sel[1]_i_4_n_0 ),
        .I3(\rom_sel[1]_i_5_n_0 ),
        .I4(\rom_sel_reg[1]_2 ),
        .I5(\rom_sel_reg_n_0_[1] ),
        .O(\rom_sel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD8FFFF00FFFFFF00)) 
    \rom_sel[1]_i_2 
       (.I0(\cnt_hex_reg[1]_0 ),
        .I1(in_ok),
        .I2(\rom_sel_reg[1]_1 ),
        .I3(\rom_sel[1]_i_4_n_0 ),
        .I4(\rom_sel[1]_i_5_n_0 ),
        .I5(rx_valid),
        .O(rom_sel));
  LUT3 #(
    .INIT(8'h4F)) 
    \rom_sel[1]_i_4 
       (.I0(st__0[1]),
        .I1(st__0[0]),
        .I2(st__0[2]),
        .O(\rom_sel[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rom_sel[1]_i_5 
       (.I0(st__0[1]),
        .I1(st__0[2]),
        .O(\rom_sel[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rom_sel_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rom_sel[0]_i_1_n_0 ),
        .Q(\rom_sel_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rom_sel_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rom_sel[1]_i_1_n_0 ),
        .Q(\rom_sel_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[0] 
       (.C(CLK),
        .CE(tx_start_i_1_n_0),
        .D(tx_data0_in[0]),
        .Q(\tx_data_reg[6]_0 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[1] 
       (.C(CLK),
        .CE(tx_start_i_1_n_0),
        .D(tx_data0_in[1]),
        .Q(\tx_data_reg[6]_0 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[2] 
       (.C(CLK),
        .CE(tx_start_i_1_n_0),
        .D(tx_data0_in[2]),
        .Q(\tx_data_reg[6]_0 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[3] 
       (.C(CLK),
        .CE(tx_start_i_1_n_0),
        .D(tx_data0_in[3]),
        .Q(\tx_data_reg[6]_0 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[4] 
       (.C(CLK),
        .CE(tx_start_i_1_n_0),
        .D(tx_data0_in[4]),
        .Q(\tx_data_reg[6]_0 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[5] 
       (.C(CLK),
        .CE(tx_start_i_1_n_0),
        .D(tx_data0_in[5]),
        .Q(\tx_data_reg[6]_0 [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[6] 
       (.C(CLK),
        .CE(tx_start_i_1_n_0),
        .D(tx_data0_in[6]),
        .Q(\tx_data_reg[6]_0 [6]),
        .R(rst));
  LUT4 #(
    .INIT(16'h0E00)) 
    tx_start_i_1
       (.I0(st__0[1]),
        .I1(st__0[0]),
        .I2(tx_busy),
        .I3(st__0[2]),
        .O(tx_start_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_start_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_start_i_1_n_0),
        .Q(tx_start),
        .R(rst));
  SS_ROM u_rom
       (.CLK(CLK),
        .D({u_rom_n_0,u_rom_n_1,u_rom_n_2,u_rom_n_3,u_rom_n_4,u_rom_n_5,u_rom_n_6,u_rom_n_7}),
        .\FSM_sequential_st_reg[0] (u_rom_n_18),
        .\FSM_sequential_st_reg[0]_0 (\FSM_sequential_st_reg[0]_1 ),
        .\FSM_sequential_st_reg[0]_1 (\FSM_sequential_st_reg[0]_2 ),
        .\FSM_sequential_st_reg[0]_2 (\FSM_sequential_st[0]_i_4_n_0 ),
        .\FSM_sequential_st_reg[0]_3 (\FSM_sequential_st_reg[0]_3 ),
        .\FSM_sequential_st_reg[1] (u_rom_n_17),
        .\FSM_sequential_st_reg[1]_0 (\rom_sel_reg[1]_0 ),
        .\FSM_sequential_st_reg[1]_1 (st__0[1]),
        .\FSM_sequential_st_reg[1]_2 (\FSM_sequential_st[1]_i_8_n_0 ),
        .\FSM_sequential_st_reg[1]_3 (\FSM_sequential_st_reg[1]_1 ),
        .\FSM_sequential_st_reg[1]_4 (\FSM_sequential_st_reg[1]_0 ),
        .\FSM_sequential_st_reg[1]_5 (\FSM_sequential_st_reg[2]_0 ),
        .\FSM_sequential_st_reg[1]_6 (\FSM_sequential_st[1]_i_6_n_0 ),
        .\FSM_sequential_st_reg[1]_7 (\FSM_sequential_st[1]_i_2_n_0 ),
        .\FSM_sequential_st_reg[2] (u_rom_n_16),
        .\FSM_sequential_st_reg[2]_0 (\FSM_sequential_st[2]_i_2_n_0 ),
        .\FSM_sequential_st_reg[2]_1 (\FSM_sequential_st_reg[2]_2 ),
        .Q({p_0_in0,\rom_idx_reg_n_0_[6] ,\rom_idx_reg_n_0_[5] ,\rom_idx_reg_n_0_[4] ,\rom_idx_reg_n_0_[3] ,\rom_idx_reg_n_0_[2] ,\rom_idx_reg_n_0_[1] ,\rom_idx_reg_n_0_[0] }),
        .\data_reg[6]_0 (tx_data0_in),
        .in_ok(in_ok),
        .last_reg_0(last_reg),
        .last_reg_1(\rom_sel_reg_n_0_[0] ),
        .last_reg_2(\rom_sel_reg_n_0_[1] ),
        .\rom_idx_reg[1] (st__0[2]),
        .\rom_idx_reg[7] (\rom_idx[7]_i_5_n_0 ),
        .rx_valid(rx_valid),
        .tx_busy(tx_busy),
        .\tx_data_reg[2] (st__0[0]),
        .\tx_data_reg[3] (nib));
endmodule

(* ECO_CHECKSUM = "4a668afc" *) 
(* NotValidForBitStream *)
module SS_LR_TOP
   (CLK100MHZ,
    BTNC,
    UART_TXD_IN,
    UART_RXD_OUT);
  input CLK100MHZ;
  input BTNC;
  input UART_TXD_IN;
  output UART_RXD_OUT;

  wire [51:0]A;
  wire [3:0]B;
  wire BTNC;
  wire BTNC_IBUF;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire UART_RXD_OUT;
  wire UART_RXD_OUT_OBUF;
  wire UART_TXD_IN;
  wire UART_TXD_IN_IBUF;
  wire fsm_n_1;
  wire fsm_n_10;
  wire fsm_n_11;
  wire fsm_n_12;
  wire fsm_n_13;
  wire fsm_n_14;
  wire fsm_n_15;
  wire fsm_n_16;
  wire fsm_n_17;
  wire fsm_n_18;
  wire fsm_n_19;
  wire fsm_n_2;
  wire fsm_n_20;
  wire fsm_n_21;
  wire fsm_n_22;
  wire fsm_n_23;
  wire fsm_n_24;
  wire fsm_n_25;
  wire fsm_n_26;
  wire fsm_n_27;
  wire fsm_n_28;
  wire fsm_n_29;
  wire fsm_n_3;
  wire fsm_n_30;
  wire fsm_n_31;
  wire fsm_n_32;
  wire fsm_n_33;
  wire fsm_n_34;
  wire fsm_n_35;
  wire fsm_n_36;
  wire fsm_n_37;
  wire fsm_n_38;
  wire fsm_n_39;
  wire fsm_n_4;
  wire fsm_n_40;
  wire fsm_n_41;
  wire fsm_n_42;
  wire fsm_n_43;
  wire fsm_n_44;
  wire fsm_n_45;
  wire fsm_n_46;
  wire fsm_n_47;
  wire fsm_n_48;
  wire fsm_n_5;
  wire fsm_n_52;
  wire fsm_n_53;
  wire fsm_n_54;
  wire fsm_n_55;
  wire fsm_n_56;
  wire fsm_n_57;
  wire fsm_n_6;
  wire fsm_n_7;
  wire fsm_n_8;
  wire fsm_n_9;
  wire in_ok;
  wire rst;
  wire rx_frm_err;
  wire rx_par_err;
  wire rx_valid;
  wire [2:0]st__0;
  wire tx_busy;
  wire [6:0]tx_data;
  wire tx_start;
  wire uart_n_11;
  wire uart_n_12;
  wire uart_n_13;
  wire uart_n_5;
  wire uart_n_6;
  wire uart_n_7;
  wire uart_n_70;
  wire uart_n_71;
  wire uart_n_72;
  wire uart_n_73;
  wire uart_n_74;
  wire uart_n_8;
  wire uart_n_9;

initial begin
 $sdf_annotate("tb_ss_lr_top_time_impl.sdf",,,,"tool_control");
end
  IBUF #(
    .CCIO_EN("TRUE")) 
    BTNC_IBUF_inst
       (.I(BTNC),
        .O(BTNC_IBUF));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  OBUF UART_RXD_OUT_OBUF_inst
       (.I(UART_RXD_OUT_OBUF),
        .O(UART_RXD_OUT));
  IBUF #(
    .CCIO_EN("TRUE")) 
    UART_TXD_IN_IBUF_inst
       (.I(UART_TXD_IN),
        .O(UART_TXD_IN_IBUF));
  SS_BTN_FLTR btn_filter
       (.CLK(CLK100MHZ_IBUF_BUFG),
        .D(BTNC_IBUF),
        .rst(rst));
  SS_FSM fsm
       (.\A_reg[51]_0 (A),
        .CLK(CLK100MHZ_IBUF_BUFG),
        .D(B),
        .E(uart_n_5),
        .\FSM_sequential_st_reg[0]_0 (fsm_n_57),
        .\FSM_sequential_st_reg[0]_1 (uart_n_73),
        .\FSM_sequential_st_reg[0]_2 (uart_n_9),
        .\FSM_sequential_st_reg[0]_3 (uart_n_7),
        .\FSM_sequential_st_reg[1]_0 (fsm_n_53),
        .\FSM_sequential_st_reg[1]_1 (uart_n_74),
        .\FSM_sequential_st_reg[1]_2 (uart_n_72),
        .\FSM_sequential_st_reg[2]_0 (fsm_n_54),
        .\FSM_sequential_st_reg[2]_1 (uart_n_71),
        .\FSM_sequential_st_reg[2]_2 (uart_n_13),
        .Q({fsm_n_1,fsm_n_2,fsm_n_3,fsm_n_4,fsm_n_5,fsm_n_6,fsm_n_7,fsm_n_8,fsm_n_9,fsm_n_10,fsm_n_11,fsm_n_12,fsm_n_13,fsm_n_14,fsm_n_15,fsm_n_16,fsm_n_17,fsm_n_18,fsm_n_19,fsm_n_20,fsm_n_21,fsm_n_22,fsm_n_23,fsm_n_24,fsm_n_25,fsm_n_26,fsm_n_27,fsm_n_28,fsm_n_29,fsm_n_30,fsm_n_31,fsm_n_32,fsm_n_33,fsm_n_34,fsm_n_35,fsm_n_36,fsm_n_37,fsm_n_38,fsm_n_39,fsm_n_40,fsm_n_41,fsm_n_42,fsm_n_43,fsm_n_44,fsm_n_45,fsm_n_46,fsm_n_47,fsm_n_48}),
        .\cnt_hex_reg[0]_0 (uart_n_12),
        .\cnt_hex_reg[1]_0 (fsm_n_55),
        .\cnt_hex_reg[2]_0 (fsm_n_56),
        .in_ok(in_ok),
        .last_reg(fsm_n_52),
        .\rom_sel_reg[0]_0 (uart_n_70),
        .\rom_sel_reg[1]_0 (uart_n_6),
        .\rom_sel_reg[1]_1 (uart_n_8),
        .\rom_sel_reg[1]_2 (uart_n_11),
        .rst(rst),
        .rx_frm_err(rx_frm_err),
        .rx_par_err(rx_par_err),
        .rx_valid(rx_valid),
        .st__0(st__0),
        .tx_busy(tx_busy),
        .\tx_data_reg[6]_0 (tx_data),
        .tx_start(tx_start));
  SS_UART uart
       (.\A_reg[47] (A),
        .CLK(CLK100MHZ_IBUF_BUFG),
        .D(B),
        .E(uart_n_5),
        .\FSM_sequential_st_reg[0] (uart_n_13),
        .\FSM_sequential_st_reg[0]_0 (uart_n_73),
        .\FSM_sequential_st_reg[0]_1 (fsm_n_57),
        .\FSM_sequential_st_reg[0]_2 (fsm_n_55),
        .\FSM_sequential_st_reg[0]_3 (fsm_n_56),
        .\FSM_sequential_st_reg[1] (uart_n_70),
        .Q({fsm_n_1,fsm_n_2,fsm_n_3,fsm_n_4,fsm_n_5,fsm_n_6,fsm_n_7,fsm_n_8,fsm_n_9,fsm_n_10,fsm_n_11,fsm_n_12,fsm_n_13,fsm_n_14,fsm_n_15,fsm_n_16,fsm_n_17,fsm_n_18,fsm_n_19,fsm_n_20,fsm_n_21,fsm_n_22,fsm_n_23,fsm_n_24,fsm_n_25,fsm_n_26,fsm_n_27,fsm_n_28,fsm_n_29,fsm_n_30,fsm_n_31,fsm_n_32,fsm_n_33,fsm_n_34,fsm_n_35,fsm_n_36,fsm_n_37,fsm_n_38,fsm_n_39,fsm_n_40,fsm_n_41,fsm_n_42,fsm_n_43,fsm_n_44,fsm_n_45,fsm_n_46,fsm_n_47,fsm_n_48}),
        .UART_RXD_OUT_OBUF(UART_RXD_OUT_OBUF),
        .\cnt_hex[4]_i_4_0 (fsm_n_54),
        .in_ok(in_ok),
        .\rom_idx_reg[7] (fsm_n_53),
        .\rom_idx_reg[7]_0 (fsm_n_52),
        .rst(rst),
        .\rx_data_reg[0]_0 (uart_n_71),
        .\rx_data_reg[3]_0 (uart_n_8),
        .\rx_data_reg[3]_1 (uart_n_72),
        .\rx_data_reg[3]_2 (uart_n_74),
        .\rx_data_reg[7]_0 (uart_n_12),
        .rx_frm_err(rx_frm_err),
        .rx_par_err(rx_par_err),
        .rx_parity_err_reg_0(uart_n_6),
        .rx_parity_err_reg_1(uart_n_9),
        .\rx_sync_reg[0]_0 (UART_TXD_IN_IBUF),
        .rx_valid(rx_valid),
        .rx_valid_reg_0(uart_n_7),
        .rx_valid_reg_1(uart_n_11),
        .st__0(st__0),
        .\t_shift_reg[6]_0 (tx_data),
        .tx_busy(tx_busy),
        .tx_start(tx_start));
endmodule

module SS_ROM
   (D,
    last_reg_0,
    \data_reg[6]_0 ,
    \FSM_sequential_st_reg[2] ,
    \FSM_sequential_st_reg[1] ,
    \FSM_sequential_st_reg[0] ,
    CLK,
    \tx_data_reg[2] ,
    \rom_idx_reg[1] ,
    \FSM_sequential_st_reg[1]_0 ,
    rx_valid,
    \FSM_sequential_st_reg[1]_1 ,
    \FSM_sequential_st_reg[1]_2 ,
    in_ok,
    \FSM_sequential_st_reg[1]_3 ,
    tx_busy,
    Q,
    \rom_idx_reg[7] ,
    \FSM_sequential_st_reg[1]_4 ,
    \FSM_sequential_st_reg[0]_0 ,
    \FSM_sequential_st_reg[1]_5 ,
    \FSM_sequential_st_reg[1]_6 ,
    last_reg_1,
    last_reg_2,
    \tx_data_reg[3] ,
    \FSM_sequential_st_reg[2]_0 ,
    \FSM_sequential_st_reg[2]_1 ,
    \FSM_sequential_st_reg[1]_7 ,
    \FSM_sequential_st_reg[0]_1 ,
    \FSM_sequential_st_reg[0]_2 ,
    \FSM_sequential_st_reg[0]_3 );
  output [7:0]D;
  output last_reg_0;
  output [6:0]\data_reg[6]_0 ;
  output \FSM_sequential_st_reg[2] ;
  output \FSM_sequential_st_reg[1] ;
  output \FSM_sequential_st_reg[0] ;
  input CLK;
  input \tx_data_reg[2] ;
  input \rom_idx_reg[1] ;
  input \FSM_sequential_st_reg[1]_0 ;
  input rx_valid;
  input \FSM_sequential_st_reg[1]_1 ;
  input \FSM_sequential_st_reg[1]_2 ;
  input in_ok;
  input \FSM_sequential_st_reg[1]_3 ;
  input tx_busy;
  input [7:0]Q;
  input \rom_idx_reg[7] ;
  input \FSM_sequential_st_reg[1]_4 ;
  input \FSM_sequential_st_reg[0]_0 ;
  input \FSM_sequential_st_reg[1]_5 ;
  input \FSM_sequential_st_reg[1]_6 ;
  input last_reg_1;
  input last_reg_2;
  input [3:0]\tx_data_reg[3] ;
  input \FSM_sequential_st_reg[2]_0 ;
  input \FSM_sequential_st_reg[2]_1 ;
  input \FSM_sequential_st_reg[1]_7 ;
  input \FSM_sequential_st_reg[0]_1 ;
  input \FSM_sequential_st_reg[0]_2 ;
  input \FSM_sequential_st_reg[0]_3 ;

  wire CLK;
  wire [7:0]D;
  wire \FSM_sequential_st[0]_i_3_n_0 ;
  wire \FSM_sequential_st[1]_i_3_n_0 ;
  wire \FSM_sequential_st[1]_i_5_n_0 ;
  wire \FSM_sequential_st[2]_i_11_n_0 ;
  wire \FSM_sequential_st[2]_i_4_n_0 ;
  wire \FSM_sequential_st[2]_i_5_n_0 ;
  wire \FSM_sequential_st[2]_i_6_n_0 ;
  wire \FSM_sequential_st_reg[0] ;
  wire \FSM_sequential_st_reg[0]_0 ;
  wire \FSM_sequential_st_reg[0]_1 ;
  wire \FSM_sequential_st_reg[0]_2 ;
  wire \FSM_sequential_st_reg[0]_3 ;
  wire \FSM_sequential_st_reg[1] ;
  wire \FSM_sequential_st_reg[1]_0 ;
  wire \FSM_sequential_st_reg[1]_1 ;
  wire \FSM_sequential_st_reg[1]_2 ;
  wire \FSM_sequential_st_reg[1]_3 ;
  wire \FSM_sequential_st_reg[1]_4 ;
  wire \FSM_sequential_st_reg[1]_5 ;
  wire \FSM_sequential_st_reg[1]_6 ;
  wire \FSM_sequential_st_reg[1]_7 ;
  wire \FSM_sequential_st_reg[2] ;
  wire \FSM_sequential_st_reg[2]_0 ;
  wire \FSM_sequential_st_reg[2]_1 ;
  wire [7:0]Q;
  wire [6:0]data;
  wire \data[0]_i_2_n_0 ;
  wire \data[0]_i_3_n_0 ;
  wire \data[1]_i_2_n_0 ;
  wire \data[1]_i_3_n_0 ;
  wire \data[2]_i_2_n_0 ;
  wire \data[2]_i_3_n_0 ;
  wire \data[3]_i_2_n_0 ;
  wire \data[3]_i_3_n_0 ;
  wire \data[3]_i_4_n_0 ;
  wire \data[3]_i_5_n_0 ;
  wire \data[3]_i_6_n_0 ;
  wire \data[4]_i_2_n_0 ;
  wire \data[4]_i_3_n_0 ;
  wire \data[4]_i_4_n_0 ;
  wire \data[4]_i_5_n_0 ;
  wire \data[4]_i_6_n_0 ;
  wire \data[5]_i_2_n_0 ;
  wire \data[5]_i_3_n_0 ;
  wire \data[6]_i_2_n_0 ;
  wire \data[6]_i_3_n_0 ;
  wire \data[6]_i_4_n_0 ;
  wire [6:0]data_0;
  wire [6:0]\data_reg[6]_0 ;
  wire g0_b0__0_n_0;
  wire g0_b0__1_n_0;
  wire g0_b0_n_0;
  wire g0_b1__0_n_0;
  wire g0_b1__1_n_0;
  wire g0_b1_n_0;
  wire g0_b2__0_n_0;
  wire g0_b2__1_n_0;
  wire g0_b2_n_0;
  wire g0_b3__0_n_0;
  wire g0_b3_n_0;
  wire g0_b4__0_n_0;
  wire g0_b4__1_n_0;
  wire g0_b4_n_0;
  wire g0_b5__0_n_0;
  wire g0_b5__1_n_0;
  wire g0_b5_n_0;
  wire g0_b6__0_n_0;
  wire g0_b6_n_0;
  wire in_ok;
  wire last;
  wire last_i_2_n_0;
  wire last_i_3_n_0;
  wire last_reg_0;
  wire last_reg_1;
  wire last_reg_2;
  wire \rom_idx[6]_i_2_n_0 ;
  wire \rom_idx_reg[1] ;
  wire \rom_idx_reg[7] ;
  wire rom_last;
  wire rx_valid;
  wire tx_busy;
  wire \tx_data_reg[2] ;
  wire [3:0]\tx_data_reg[3] ;

  LUT6 #(
    .INIT(64'h0001FFFF00050000)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(\FSM_sequential_st_reg[0]_1 ),
        .I1(\FSM_sequential_st[0]_i_3_n_0 ),
        .I2(\FSM_sequential_st_reg[0]_2 ),
        .I3(\FSM_sequential_st_reg[0]_3 ),
        .I4(\FSM_sequential_st[2]_i_6_n_0 ),
        .I5(\tx_data_reg[2] ),
        .O(\FSM_sequential_st_reg[0] ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_st[0]_i_3 
       (.I0(tx_busy),
        .I1(\rom_idx_reg[1] ),
        .I2(rom_last),
        .O(\FSM_sequential_st[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000010F000001000)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(\FSM_sequential_st_reg[1]_7 ),
        .I1(\FSM_sequential_st[1]_i_3_n_0 ),
        .I2(\FSM_sequential_st_reg[1]_4 ),
        .I3(\FSM_sequential_st[1]_i_5_n_0 ),
        .I4(\FSM_sequential_st_reg[1]_6 ),
        .I5(\FSM_sequential_st_reg[1]_1 ),
        .O(\FSM_sequential_st_reg[1] ));
  LUT6 #(
    .INIT(64'h888800000000F000)) 
    \FSM_sequential_st[1]_i_3 
       (.I0(\FSM_sequential_st_reg[1]_2 ),
        .I1(rom_last),
        .I2(in_ok),
        .I3(rx_valid),
        .I4(\FSM_sequential_st_reg[1]_1 ),
        .I5(\tx_data_reg[2] ),
        .O(\FSM_sequential_st[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAF0D0D0D)) 
    \FSM_sequential_st[1]_i_5 
       (.I0(\tx_data_reg[2] ),
        .I1(\FSM_sequential_st_reg[1]_3 ),
        .I2(\FSM_sequential_st_reg[1]_5 ),
        .I3(rom_last),
        .I4(\FSM_sequential_st_reg[1]_2 ),
        .I5(\FSM_sequential_st_reg[1]_0 ),
        .O(\FSM_sequential_st[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \FSM_sequential_st[2]_i_1 
       (.I0(\FSM_sequential_st_reg[2]_0 ),
        .I1(\FSM_sequential_st_reg[2]_1 ),
        .I2(\FSM_sequential_st[2]_i_4_n_0 ),
        .I3(\FSM_sequential_st[2]_i_5_n_0 ),
        .I4(\FSM_sequential_st[2]_i_6_n_0 ),
        .I5(\rom_idx_reg[1] ),
        .O(\FSM_sequential_st_reg[2] ));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_sequential_st[2]_i_11 
       (.I0(\tx_data_reg[2] ),
        .I1(rom_last),
        .I2(tx_busy),
        .I3(\rom_idx_reg[1] ),
        .O(\FSM_sequential_st[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF3F0FFFFF3F0F7F4)) 
    \FSM_sequential_st[2]_i_4 
       (.I0(\tx_data_reg[2] ),
        .I1(\rom_idx_reg[1] ),
        .I2(\FSM_sequential_st_reg[1]_0 ),
        .I3(rx_valid),
        .I4(\FSM_sequential_st_reg[1]_1 ),
        .I5(\FSM_sequential_st[0]_i_3_n_0 ),
        .O(\FSM_sequential_st[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80808080808080FF)) 
    \FSM_sequential_st[2]_i_5 
       (.I0(\FSM_sequential_st[0]_i_3_n_0 ),
        .I1(\tx_data_reg[2] ),
        .I2(\FSM_sequential_st_reg[1]_1 ),
        .I3(\FSM_sequential_st_reg[1]_3 ),
        .I4(\FSM_sequential_st_reg[1]_0 ),
        .I5(\rom_idx_reg[1] ),
        .O(\FSM_sequential_st[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF5D)) 
    \FSM_sequential_st[2]_i_6 
       (.I0(\FSM_sequential_st_reg[1]_4 ),
        .I1(\FSM_sequential_st_reg[0]_0 ),
        .I2(\FSM_sequential_st_reg[1]_5 ),
        .I3(\FSM_sequential_st[2]_i_11_n_0 ),
        .I4(\FSM_sequential_st_reg[1]_0 ),
        .I5(\FSM_sequential_st_reg[1]_6 ),
        .O(\FSM_sequential_st[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \data[0]_i_1 
       (.I0(\data[3]_i_2_n_0 ),
        .I1(g0_b0__1_n_0),
        .I2(g0_b0__0_n_0),
        .I3(\data[4]_i_3_n_0 ),
        .I4(\data[0]_i_2_n_0 ),
        .I5(\data[0]_i_3_n_0 ),
        .O(data_0[0]));
  LUT3 #(
    .INIT(8'h04)) 
    \data[0]_i_2 
       (.I0(Q[1]),
        .I1(\data[6]_i_3_n_0 ),
        .I2(Q[0]),
        .O(\data[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \data[0]_i_3 
       (.I0(g0_b0_n_0),
        .I1(\data[3]_i_6_n_0 ),
        .I2(Q[2]),
        .I3(\data[6]_i_3_n_0 ),
        .I4(Q[1]),
        .O(\data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data[1]_i_1 
       (.I0(\data[1]_i_2_n_0 ),
        .I1(g0_b1__0_n_0),
        .I2(\data[4]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(\data[4]_i_5_n_0 ),
        .I5(\data[1]_i_3_n_0 ),
        .O(data_0[1]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \data[1]_i_2 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(last_reg_2),
        .I4(last_reg_1),
        .I5(g0_b1__1_n_0),
        .O(\data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF888888888888)) 
    \data[1]_i_3 
       (.I0(g0_b1_n_0),
        .I1(\data[3]_i_6_n_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\data[6]_i_3_n_0 ),
        .I5(Q[1]),
        .O(\data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAAABAAABAAA)) 
    \data[2]_i_1 
       (.I0(\data[2]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\data[4]_i_5_n_0 ),
        .I4(\data[4]_i_3_n_0 ),
        .I5(g0_b2__0_n_0),
        .O(data_0[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[2]_i_2 
       (.I0(\data[2]_i_3_n_0 ),
        .I1(\data[6]_i_3_n_0 ),
        .I2(\data[3]_i_6_n_0 ),
        .I3(g0_b2_n_0),
        .I4(g0_b2__1_n_0),
        .I5(\data[3]_i_2_n_0 ),
        .O(\data[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[2]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFCCCFCCC)) 
    \data[3]_i_1 
       (.I0(\data[3]_i_2_n_0 ),
        .I1(\data[3]_i_3_n_0 ),
        .I2(\data[3]_i_4_n_0 ),
        .I3(\data[3]_i_5_n_0 ),
        .I4(\data[3]_i_6_n_0 ),
        .I5(g0_b3__0_n_0),
        .O(data_0[3]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \data[3]_i_2 
       (.I0(last_reg_1),
        .I1(last_reg_2),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[5]),
        .O(\data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \data[3]_i_3 
       (.I0(g0_b3_n_0),
        .I1(\data[4]_i_3_n_0 ),
        .I2(\data[6]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\data[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[3]_i_4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\data[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data[3]_i_5 
       (.I0(\data[6]_i_3_n_0 ),
        .I1(Q[1]),
        .O(\data[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \data[3]_i_6 
       (.I0(last_reg_2),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(last_reg_1),
        .O(\data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAFFEAEA)) 
    \data[4]_i_1 
       (.I0(\data[4]_i_2_n_0 ),
        .I1(g0_b4__0_n_0),
        .I2(\data[4]_i_3_n_0 ),
        .I3(\data[4]_i_4_n_0 ),
        .I4(\data[4]_i_5_n_0 ),
        .I5(\data[4]_i_6_n_0 ),
        .O(data_0[4]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \data[4]_i_2 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(last_reg_2),
        .I4(last_reg_1),
        .I5(g0_b4__1_n_0),
        .O(\data[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \data[4]_i_3 
       (.I0(last_reg_1),
        .I1(last_reg_2),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[5]),
        .O(\data[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \data[4]_i_4 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\data[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[4]_i_5 
       (.I0(\data[6]_i_3_n_0 ),
        .I1(Q[1]),
        .O(\data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF888888888888)) 
    \data[4]_i_6 
       (.I0(g0_b4_n_0),
        .I1(\data[3]_i_6_n_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\data[6]_i_3_n_0 ),
        .I5(Q[1]),
        .O(\data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCECECFC)) 
    \data[5]_i_1 
       (.I0(Q[2]),
        .I1(\data[5]_i_2_n_0 ),
        .I2(\data[6]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\data[5]_i_3_n_0 ),
        .O(data_0[5]));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \data[5]_i_2 
       (.I0(g0_b5__1_n_0),
        .I1(g0_b5__0_n_0),
        .I2(last_reg_1),
        .I3(last_reg_2),
        .I4(\data[6]_i_4_n_0 ),
        .O(\data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \data[5]_i_3 
       (.I0(last_reg_1),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(last_reg_2),
        .I5(g0_b5_n_0),
        .O(\data[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAEEE)) 
    \data[6]_i_1 
       (.I0(\data[6]_i_2_n_0 ),
        .I1(\data[6]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(data_0[6]));
  LUT5 #(
    .INIT(32'h00AC00C0)) 
    \data[6]_i_2 
       (.I0(g0_b6_n_0),
        .I1(g0_b6__0_n_0),
        .I2(last_reg_2),
        .I3(\data[6]_i_4_n_0 ),
        .I4(last_reg_1),
        .O(\data[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \data[6]_i_3 
       (.I0(last_reg_1),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(last_reg_2),
        .I4(\data[6]_i_4_n_0 ),
        .O(\data[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \data[6]_i_4 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(\data[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_0[0]),
        .Q(data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_0[1]),
        .Q(data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_0[2]),
        .Q(data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_0[3]),
        .Q(data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_0[4]),
        .Q(data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_0[5]),
        .Q(data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(data_0[6]),
        .Q(data[6]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00028D09)) 
    g0_b0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b0_n_0));
  LUT5 #(
    .INIT(32'h0000D529)) 
    g0_b0__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b0__0_n_0));
  LUT5 #(
    .INIT(32'h001A8D29)) 
    g0_b0__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b0__1_n_0));
  LUT5 #(
    .INIT(32'h000003BE)) 
    g0_b1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b1_n_0));
  LUT5 #(
    .INIT(32'h0001021E)) 
    g0_b1__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b1__0_n_0));
  LUT5 #(
    .INIT(32'h0020039E)) 
    g0_b1__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b1__1_n_0));
  LUT5 #(
    .INIT(32'h00015589)) 
    g0_b2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b2_n_0));
  LUT5 #(
    .INIT(32'h00024829)) 
    g0_b2__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b2__0_n_0));
  LUT5 #(
    .INIT(32'h004955A9)) 
    g0_b2__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b2__1_n_0));
  LUT5 #(
    .INIT(32'h00001428)) 
    g0_b3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b3_n_0));
  LUT5 #(
    .INIT(32'h00000528)) 
    g0_b3__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b3__0_n_0));
  LUT5 #(
    .INIT(32'h00011236)) 
    g0_b4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b4_n_0));
  LUT5 #(
    .INIT(32'h00035A96)) 
    g0_b4__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b4__0_n_0));
  LUT5 #(
    .INIT(32'h00691216)) 
    g0_b4__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b4__1_n_0));
  LUT5 #(
    .INIT(32'h0000BBF9)) 
    g0_b5
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b5_n_0));
  LUT5 #(
    .INIT(32'h000174E4)) 
    g0_b5__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b5__0_n_0));
  LUT5 #(
    .INIT(32'h0045A0F5)) 
    g0_b5__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b5__1_n_0));
  LUT5 #(
    .INIT(32'h007BDF9F)) 
    g0_b6
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b6_n_0));
  LUT5 #(
    .INIT(32'h0003DF9F)) 
    g0_b6__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b6__0_n_0));
  LUT6 #(
    .INIT(64'hFFAAEAAAFEAAEAAA)) 
    last_i_1
       (.I0(last_i_2_n_0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(last_i_3_n_0),
        .I5(Q[0]),
        .O(last));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAFEFF)) 
    last_i_2
       (.I0(\data[6]_i_4_n_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\rom_idx[6]_i_2_n_0 ),
        .I4(last_reg_1),
        .I5(last_reg_2),
        .O(last_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    last_i_3
       (.I0(last_reg_2),
        .I1(last_reg_1),
        .O(last_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(CLK),
        .CE(1'b1),
        .D(last),
        .Q(rom_last),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \rom_idx[0]_i_1 
       (.I0(\rom_idx_reg[1] ),
        .I1(tx_busy),
        .I2(\tx_data_reg[2] ),
        .I3(rom_last),
        .I4(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000040004000000)) 
    \rom_idx[1]_i_1 
       (.I0(rom_last),
        .I1(\tx_data_reg[2] ),
        .I2(tx_busy),
        .I3(\rom_idx_reg[1] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rom_idx[2]_i_1 
       (.I0(last_reg_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \rom_idx[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(last_reg_0),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \rom_idx[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(last_reg_0),
        .I5(Q[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hF7000800)) 
    \rom_idx[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\rom_idx[6]_i_2_n_0 ),
        .I3(last_reg_0),
        .I4(Q[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hBFFF000040000000)) 
    \rom_idx[6]_i_1 
       (.I0(\rom_idx[6]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(last_reg_0),
        .I5(Q[6]),
        .O(D[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \rom_idx[6]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\rom_idx[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB040)) 
    \rom_idx[7]_i_2 
       (.I0(\rom_idx_reg[7] ),
        .I1(Q[6]),
        .I2(last_reg_0),
        .I3(Q[7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h0400)) 
    \rom_idx[7]_i_4 
       (.I0(rom_last),
        .I1(\tx_data_reg[2] ),
        .I2(tx_busy),
        .I3(\rom_idx_reg[1] ),
        .O(last_reg_0));
  LUT6 #(
    .INIT(64'hFFFF666A0000666A)) 
    \tx_data[0]_i_1 
       (.I0(\tx_data_reg[3] [0]),
        .I1(\tx_data_reg[3] [3]),
        .I2(\tx_data_reg[3] [2]),
        .I3(\tx_data_reg[3] [1]),
        .I4(\tx_data_reg[2] ),
        .I5(data[0]),
        .O(\data_reg[6]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFC2CC0000C2CC)) 
    \tx_data[1]_i_1 
       (.I0(\tx_data_reg[3] [2]),
        .I1(\tx_data_reg[3] [1]),
        .I2(\tx_data_reg[3] [0]),
        .I3(\tx_data_reg[3] [3]),
        .I4(\tx_data_reg[2] ),
        .I5(data[1]),
        .O(\data_reg[6]_0 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFF30000)) 
    \tx_data[2]_i_1 
       (.I0(data[2]),
        .I1(\tx_data_reg[3] [3]),
        .I2(\tx_data_reg[3] [0]),
        .I3(\tx_data_reg[3] [1]),
        .I4(\tx_data_reg[3] [2]),
        .I5(\tx_data_reg[2] ),
        .O(\data_reg[6]_0 [2]));
  LUT5 #(
    .INIT(32'hAAAA0300)) 
    \tx_data[3]_i_1 
       (.I0(data[3]),
        .I1(\tx_data_reg[3] [2]),
        .I2(\tx_data_reg[3] [1]),
        .I3(\tx_data_reg[3] [3]),
        .I4(\tx_data_reg[2] ),
        .O(\data_reg[6]_0 [3]));
  LUT5 #(
    .INIT(32'h888BBBBB)) 
    \tx_data[4]_i_1 
       (.I0(data[4]),
        .I1(\tx_data_reg[2] ),
        .I2(\tx_data_reg[3] [1]),
        .I3(\tx_data_reg[3] [2]),
        .I4(\tx_data_reg[3] [3]),
        .O(\data_reg[6]_0 [4]));
  LUT5 #(
    .INIT(32'h888BBBBB)) 
    \tx_data[5]_i_1 
       (.I0(data[5]),
        .I1(\tx_data_reg[2] ),
        .I2(\tx_data_reg[3] [1]),
        .I3(\tx_data_reg[3] [2]),
        .I4(\tx_data_reg[3] [3]),
        .O(\data_reg[6]_0 [5]));
  LUT5 #(
    .INIT(32'hB8B8B888)) 
    \tx_data[6]_i_1 
       (.I0(data[6]),
        .I1(\tx_data_reg[2] ),
        .I2(\tx_data_reg[3] [3]),
        .I3(\tx_data_reg[3] [2]),
        .I4(\tx_data_reg[3] [1]),
        .O(\data_reg[6]_0 [6]));
endmodule

module SS_UART
   (UART_RXD_OUT_OBUF,
    rx_valid,
    rx_par_err,
    rx_frm_err,
    tx_busy,
    E,
    rx_parity_err_reg_0,
    rx_valid_reg_0,
    \rx_data_reg[3]_0 ,
    rx_parity_err_reg_1,
    in_ok,
    rx_valid_reg_1,
    \rx_data_reg[7]_0 ,
    \FSM_sequential_st_reg[0] ,
    \A_reg[47] ,
    D,
    \FSM_sequential_st_reg[1] ,
    \rx_data_reg[0]_0 ,
    \rx_data_reg[3]_1 ,
    \FSM_sequential_st_reg[0]_0 ,
    \rx_data_reg[3]_2 ,
    rst,
    CLK,
    st__0,
    \rom_idx_reg[7] ,
    \rom_idx_reg[7]_0 ,
    \FSM_sequential_st_reg[0]_1 ,
    \FSM_sequential_st_reg[0]_2 ,
    \FSM_sequential_st_reg[0]_3 ,
    \cnt_hex[4]_i_4_0 ,
    Q,
    \t_shift_reg[6]_0 ,
    tx_start,
    \rx_sync_reg[0]_0 );
  output UART_RXD_OUT_OBUF;
  output rx_valid;
  output rx_par_err;
  output rx_frm_err;
  output tx_busy;
  output [0:0]E;
  output rx_parity_err_reg_0;
  output rx_valid_reg_0;
  output \rx_data_reg[3]_0 ;
  output rx_parity_err_reg_1;
  output in_ok;
  output rx_valid_reg_1;
  output \rx_data_reg[7]_0 ;
  output \FSM_sequential_st_reg[0] ;
  output [51:0]\A_reg[47] ;
  output [3:0]D;
  output \FSM_sequential_st_reg[1] ;
  output \rx_data_reg[0]_0 ;
  output \rx_data_reg[3]_1 ;
  output \FSM_sequential_st_reg[0]_0 ;
  output \rx_data_reg[3]_2 ;
  input rst;
  input CLK;
  input [2:0]st__0;
  input \rom_idx_reg[7] ;
  input \rom_idx_reg[7]_0 ;
  input \FSM_sequential_st_reg[0]_1 ;
  input \FSM_sequential_st_reg[0]_2 ;
  input \FSM_sequential_st_reg[0]_3 ;
  input \cnt_hex[4]_i_4_0 ;
  input [47:0]Q;
  input [6:0]\t_shift_reg[6]_0 ;
  input tx_start;
  input [0:0]\rx_sync_reg[0]_0 ;

  wire \A[51]_i_3_n_0 ;
  wire [51:0]\A_reg[47] ;
  wire \B[0]_i_2_n_0 ;
  wire \B[1]_i_2_n_0 ;
  wire \B[2]_i_2_n_0 ;
  wire \B[2]_i_3_n_0 ;
  wire \B[3]_i_2_n_0 ;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_r_state[2]_i_3_n_0 ;
  wire \FSM_sequential_st[0]_i_7_n_0 ;
  wire \FSM_sequential_st[0]_i_8_n_0 ;
  wire \FSM_sequential_st[2]_i_12_n_0 ;
  wire \FSM_sequential_st[2]_i_13_n_0 ;
  wire \FSM_sequential_st_reg[0] ;
  wire \FSM_sequential_st_reg[0]_0 ;
  wire \FSM_sequential_st_reg[0]_1 ;
  wire \FSM_sequential_st_reg[0]_2 ;
  wire \FSM_sequential_st_reg[0]_3 ;
  wire \FSM_sequential_st_reg[1] ;
  wire \FSM_sequential_t_state[2]_i_4_n_0 ;
  wire \FSM_sequential_t_state[2]_i_5_n_0 ;
  wire [47:0]Q;
  wire UART_RXD_OUT_OBUF;
  wire baud_gen_inst_n_1;
  wire baud_gen_inst_n_10;
  wire baud_gen_inst_n_11;
  wire baud_gen_inst_n_12;
  wire baud_gen_inst_n_13;
  wire baud_gen_inst_n_14;
  wire baud_gen_inst_n_15;
  wire baud_gen_inst_n_16;
  wire baud_gen_inst_n_17;
  wire baud_gen_inst_n_18;
  wire baud_gen_inst_n_2;
  wire baud_gen_inst_n_3;
  wire baud_gen_inst_n_4;
  wire baud_gen_inst_n_5;
  wire baud_gen_inst_n_6;
  wire baud_gen_inst_n_7;
  wire baud_gen_inst_n_9;
  wire \cnt_hex[4]_i_4_0 ;
  wire \cnt_hex[4]_i_8_n_0 ;
  wire \cnt_hex[4]_i_9_n_0 ;
  wire in_ok;
  wire \r_bit[0]_i_1_n_0 ;
  wire \r_bit[1]_i_1_n_0 ;
  wire \r_bit[2]_i_1_n_0 ;
  wire \r_bit[2]_i_2_n_0 ;
  wire \r_bit[2]_i_5_n_0 ;
  wire \r_bit_reg_n_0_[0] ;
  wire \r_bit_reg_n_0_[1] ;
  wire \r_bit_reg_n_0_[2] ;
  wire [3:0]r_sample;
  wire \r_sample[3]_i_3_n_0 ;
  wire \r_sample[3]_i_4_n_0 ;
  wire \r_sample[3]_i_5_n_0 ;
  wire \r_sample[3]_i_6_n_0 ;
  wire \r_sample[3]_i_7_n_0 ;
  wire \r_sample_reg_n_0_[0] ;
  wire \r_sample_reg_n_0_[1] ;
  wire \r_sample_reg_n_0_[2] ;
  wire \r_sample_reg_n_0_[3] ;
  wire [7:0]r_shift;
  wire [2:0]r_state__0;
  wire \rom_idx[7]_i_3_n_0 ;
  wire \rom_idx_reg[7] ;
  wire \rom_idx_reg[7]_0 ;
  wire \rom_sel[0]_i_5_n_0 ;
  wire \rom_sel[1]_i_7_n_0 ;
  wire \rom_sel[1]_i_8_n_0 ;
  wire rst;
  wire rx;
  wire [7:0]rx_data;
  wire \rx_data_reg[0]_0 ;
  wire \rx_data_reg[3]_0 ;
  wire \rx_data_reg[3]_1 ;
  wire \rx_data_reg[3]_2 ;
  wire \rx_data_reg[7]_0 ;
  wire rx_frm_err;
  wire rx_par_err;
  wire rx_parity_err_i_2_n_0;
  wire rx_parity_err_reg_0;
  wire rx_parity_err_reg_1;
  wire [0:0]\rx_sync_reg[0]_0 ;
  wire \rx_sync_reg_n_0_[0] ;
  wire \rx_sync_reg_n_0_[1] ;
  wire rx_valid;
  wire rx_valid_reg_0;
  wire rx_valid_reg_1;
  wire [2:0]st__0;
  wire \t_bit[0]_i_1_n_0 ;
  wire \t_bit[1]_i_1_n_0 ;
  wire \t_bit[2]_i_1_n_0 ;
  wire \t_bit[2]_i_3_n_0 ;
  wire \t_bit_reg_n_0_[0] ;
  wire \t_bit_reg_n_0_[1] ;
  wire \t_bit_reg_n_0_[2] ;
  wire t_out1_out;
  wire t_out_i_2_n_0;
  wire \t_samp[0]_i_1_n_0 ;
  wire \t_samp[0]_i_2_n_0 ;
  wire \t_samp[1]_i_1_n_0 ;
  wire \t_samp[2]_i_1_n_0 ;
  wire \t_samp_reg_n_0_[0] ;
  wire \t_samp_reg_n_0_[1] ;
  wire \t_samp_reg_n_0_[2] ;
  wire [6:0]t_shift;
  wire [6:0]\t_shift_reg[6]_0 ;
  wire \t_shift_reg_n_0_[0] ;
  wire \t_shift_reg_n_0_[1] ;
  wire \t_shift_reg_n_0_[2] ;
  wire \t_shift_reg_n_0_[3] ;
  wire \t_shift_reg_n_0_[4] ;
  wire \t_shift_reg_n_0_[5] ;
  wire \t_shift_reg_n_0_[6] ;
  wire [2:0]t_state__0;
  wire tick;
  wire tx_busy;
  wire tx_req;
  wire tx_start;

  LUT6 #(
    .INIT(64'h404062EA00000000)) 
    \A[0]_i_1 
       (.I0(rx_data[0]),
        .I1(\B[0]_i_2_n_0 ),
        .I2(\B[2]_i_3_n_0 ),
        .I3(rx_data[3]),
        .I4(\B[1]_i_2_n_0 ),
        .I5(\A[51]_i_3_n_0 ),
        .O(\A_reg[47] [0]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[10]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[6]),
        .O(\A_reg[47] [10]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[11]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[7]),
        .O(\A_reg[47] [11]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[12]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[8]),
        .O(\A_reg[47] [12]));
  (* \PinAttr:I1:HOLD_DETOUR  = "160" *) 
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[13]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[9]),
        .O(\A_reg[47] [13]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[14]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[10]),
        .O(\A_reg[47] [14]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[15]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[11]),
        .O(\A_reg[47] [15]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[16]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[12]),
        .O(\A_reg[47] [16]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[17]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[13]),
        .O(\A_reg[47] [17]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[18]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[14]),
        .O(\A_reg[47] [18]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[19]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[15]),
        .O(\A_reg[47] [19]));
  LUT6 #(
    .INIT(64'h222F888800000000)) 
    \A[1]_i_1 
       (.I0(\B[2]_i_3_n_0 ),
        .I1(rx_data[0]),
        .I2(\B[1]_i_2_n_0 ),
        .I3(rx_data[3]),
        .I4(rx_data[1]),
        .I5(\A[51]_i_3_n_0 ),
        .O(\A_reg[47] [1]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[20]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[16]),
        .O(\A_reg[47] [20]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[21]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[17]),
        .O(\A_reg[47] [21]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[22]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[18]),
        .O(\A_reg[47] [22]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[23]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[19]),
        .O(\A_reg[47] [23]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[24]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[20]),
        .O(\A_reg[47] [24]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[25]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[21]),
        .O(\A_reg[47] [25]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[26]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[22]),
        .O(\A_reg[47] [26]));
  (* \PinAttr:I1:HOLD_DETOUR  = "158" *) 
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[27]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[23]),
        .O(\A_reg[47] [27]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[28]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[24]),
        .O(\A_reg[47] [28]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[29]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[25]),
        .O(\A_reg[47] [29]));
  LUT6 #(
    .INIT(64'hBC8C888800000000)) 
    \A[2]_i_1 
       (.I0(\B[2]_i_2_n_0 ),
        .I1(rx_data[2]),
        .I2(rx_data[1]),
        .I3(rx_data[0]),
        .I4(\B[2]_i_3_n_0 ),
        .I5(\A[51]_i_3_n_0 ),
        .O(\A_reg[47] [2]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[30]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[26]),
        .O(\A_reg[47] [30]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[31]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[27]),
        .O(\A_reg[47] [31]));
  (* \PinAttr:I1:HOLD_DETOUR  = "183" *) 
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[32]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[28]),
        .O(\A_reg[47] [32]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[33]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[29]),
        .O(\A_reg[47] [33]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[34]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[30]),
        .O(\A_reg[47] [34]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[35]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[31]),
        .O(\A_reg[47] [35]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[36]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[32]),
        .O(\A_reg[47] [36]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[37]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[33]),
        .O(\A_reg[47] [37]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[38]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[34]),
        .O(\A_reg[47] [38]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[39]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[35]),
        .O(\A_reg[47] [39]));
  LUT6 #(
    .INIT(64'hFF7E000000000000)) 
    \A[3]_i_1 
       (.I0(rx_data[0]),
        .I1(rx_data[2]),
        .I2(rx_data[1]),
        .I3(rx_data[3]),
        .I4(\B[3]_i_2_n_0 ),
        .I5(\A[51]_i_3_n_0 ),
        .O(\A_reg[47] [3]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[40]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[36]),
        .O(\A_reg[47] [40]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[41]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[37]),
        .O(\A_reg[47] [41]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[42]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[38]),
        .O(\A_reg[47] [42]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[43]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[39]),
        .O(\A_reg[47] [43]));
  (* \PinAttr:I1:HOLD_DETOUR  = "183" *) 
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[44]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[40]),
        .O(\A_reg[47] [44]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[45]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[41]),
        .O(\A_reg[47] [45]));
  (* \PinAttr:I1:HOLD_DETOUR  = "183" *) 
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[46]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[42]),
        .O(\A_reg[47] [46]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[47]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[43]),
        .O(\A_reg[47] [47]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[48]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[44]),
        .O(\A_reg[47] [48]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[49]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[45]),
        .O(\A_reg[47] [49]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[4]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[0]),
        .O(\A_reg[47] [4]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[50]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[46]),
        .O(\A_reg[47] [50]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[51]_i_2 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[47]),
        .O(\A_reg[47] [51]));
  LUT3 #(
    .INIT(8'hF8)) 
    \A[51]_i_3 
       (.I0(in_ok),
        .I1(rx_valid),
        .I2(st__0[0]),
        .O(\A[51]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[5]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[1]),
        .O(\A_reg[47] [5]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[6]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[2]),
        .O(\A_reg[47] [6]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[7]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[3]),
        .O(\A_reg[47] [7]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[8]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[4]),
        .O(\A_reg[47] [8]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[9]_i_1 
       (.I0(\A[51]_i_3_n_0 ),
        .I1(Q[5]),
        .O(\A_reg[47] [9]));
  LUT6 #(
    .INIT(64'h404062EA00000000)) 
    \B[0]_i_1 
       (.I0(rx_data[0]),
        .I1(\B[0]_i_2_n_0 ),
        .I2(\B[2]_i_3_n_0 ),
        .I3(rx_data[3]),
        .I4(\B[1]_i_2_n_0 ),
        .I5(st__0[1]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \B[0]_i_2 
       (.I0(rx_data[2]),
        .I1(rx_data[1]),
        .O(\B[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h222F888800000000)) 
    \B[1]_i_1 
       (.I0(\B[2]_i_3_n_0 ),
        .I1(rx_data[0]),
        .I2(\B[1]_i_2_n_0 ),
        .I3(rx_data[3]),
        .I4(rx_data[1]),
        .I5(st__0[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \B[1]_i_2 
       (.I0(rx_data[5]),
        .I1(rx_data[6]),
        .I2(rx_data[7]),
        .I3(rx_data[4]),
        .O(\B[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBC8C888800000000)) 
    \B[2]_i_1 
       (.I0(\B[2]_i_2_n_0 ),
        .I1(rx_data[2]),
        .I2(rx_data[1]),
        .I3(rx_data[0]),
        .I4(\B[2]_i_3_n_0 ),
        .I5(st__0[1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00000000000A0300)) 
    \B[2]_i_2 
       (.I0(rx_data[5]),
        .I1(rx_data[0]),
        .I2(rx_data[7]),
        .I3(rx_data[6]),
        .I4(rx_data[4]),
        .I5(rx_data[3]),
        .O(\B[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \B[2]_i_3 
       (.I0(rx_data[7]),
        .I1(rx_data[6]),
        .I2(rx_data[4]),
        .I3(rx_data[3]),
        .O(\B[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2AA800000000)) 
    \B[3]_i_1 
       (.I0(st__0[1]),
        .I1(rx_data[0]),
        .I2(rx_data[2]),
        .I3(rx_data[1]),
        .I4(rx_data[3]),
        .I5(\B[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00000000000F2000)) 
    \B[3]_i_2 
       (.I0(rx_data[5]),
        .I1(\B[0]_i_2_n_0 ),
        .I2(rx_data[3]),
        .I3(rx_data[4]),
        .I4(rx_data[6]),
        .I5(rx_data[7]),
        .O(\B[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_sequential_r_state[2]_i_3 
       (.I0(r_state__0[0]),
        .I1(\r_bit_reg_n_0_[2] ),
        .I2(\r_bit_reg_n_0_[1] ),
        .I3(\r_bit_reg_n_0_[0] ),
        .O(\FSM_sequential_r_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "R_START:001,R_PAR:011,R_STOP:100,R_DONE:101,R_IDLE:000,R_DATA:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(baud_gen_inst_n_15),
        .Q(r_state__0[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "R_START:001,R_PAR:011,R_STOP:100,R_DONE:101,R_IDLE:000,R_DATA:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(baud_gen_inst_n_14),
        .Q(r_state__0[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "R_START:001,R_PAR:011,R_STOP:100,R_DONE:101,R_IDLE:000,R_DATA:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(baud_gen_inst_n_13),
        .Q(r_state__0[2]),
        .R(rst));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \FSM_sequential_st[0]_i_2 
       (.I0(rx_par_err),
        .I1(rx_frm_err),
        .I2(rx_valid),
        .I3(st__0[0]),
        .I4(\FSM_sequential_st_reg[0]_3 ),
        .I5(in_ok),
        .O(rx_parity_err_reg_1));
  LUT6 #(
    .INIT(64'h4444444400F05555)) 
    \FSM_sequential_st[0]_i_5 
       (.I0(rx_parity_err_reg_0),
        .I1(\FSM_sequential_st_reg[0]_1 ),
        .I2(\rx_data_reg[3]_0 ),
        .I3(\FSM_sequential_st_reg[0]_2 ),
        .I4(rx_valid),
        .I5(st__0[2]),
        .O(rx_valid_reg_0));
  LUT6 #(
    .INIT(64'h000000FF10101010)) 
    \FSM_sequential_st[0]_i_6 
       (.I0(rx_data[3]),
        .I1(rx_data[0]),
        .I2(\FSM_sequential_st[0]_i_7_n_0 ),
        .I3(\FSM_sequential_st[0]_i_8_n_0 ),
        .I4(\B[1]_i_2_n_0 ),
        .I5(st__0[1]),
        .O(\rx_data_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_st[0]_i_7 
       (.I0(rx_data[6]),
        .I1(rx_data[7]),
        .I2(rx_data[5]),
        .I3(rx_data[4]),
        .I4(rx_data[1]),
        .I5(rx_data[2]),
        .O(\FSM_sequential_st[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \FSM_sequential_st[0]_i_8 
       (.I0(rx_data[2]),
        .I1(rx_data[0]),
        .I2(rx_data[1]),
        .I3(rx_data[3]),
        .O(\FSM_sequential_st[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \FSM_sequential_st[1]_i_7 
       (.I0(rx_data[3]),
        .I1(rx_data[1]),
        .I2(rx_data[0]),
        .I3(rx_data[2]),
        .I4(\B[1]_i_2_n_0 ),
        .O(\rx_data_reg[3]_1 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_st[2]_i_12 
       (.I0(rx_data[7]),
        .I1(rx_data[6]),
        .I2(rx_data[5]),
        .O(\FSM_sequential_st[2]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_sequential_st[2]_i_13 
       (.I0(rx_data[1]),
        .I1(rx_data[2]),
        .I2(rx_data[3]),
        .O(\FSM_sequential_st[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_st[2]_i_3 
       (.I0(in_ok),
        .I1(st__0[0]),
        .I2(rx_valid),
        .I3(st__0[2]),
        .O(\FSM_sequential_st_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_st[2]_i_7 
       (.I0(\FSM_sequential_st[2]_i_12_n_0 ),
        .I1(rx_data[0]),
        .I2(rx_data[2]),
        .I3(rx_data[1]),
        .I4(rx_data[3]),
        .I5(rx_data[4]),
        .O(\rx_data_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F5F7F5F7F5F)) 
    \FSM_sequential_st[2]_i_8 
       (.I0(\FSM_sequential_st_reg[0]_3 ),
        .I1(\B[2]_i_3_n_0 ),
        .I2(\cnt_hex[4]_i_9_n_0 ),
        .I3(\B[1]_i_2_n_0 ),
        .I4(\B[0]_i_2_n_0 ),
        .I5(rx_data[3]),
        .O(\rx_data_reg[3]_2 ));
  LUT6 #(
    .INIT(64'h0FDFFFFFFFFFFFFF)) 
    \FSM_sequential_st[2]_i_9 
       (.I0(\FSM_sequential_st[2]_i_13_n_0 ),
        .I1(\B[1]_i_2_n_0 ),
        .I2(\cnt_hex[4]_i_9_n_0 ),
        .I3(\B[2]_i_3_n_0 ),
        .I4(\FSM_sequential_st_reg[0]_3 ),
        .I5(st__0[0]),
        .O(\FSM_sequential_st_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_t_state[2]_i_4 
       (.I0(t_state__0[1]),
        .I1(t_state__0[2]),
        .O(\FSM_sequential_t_state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_t_state[2]_i_5 
       (.I0(\t_bit_reg_n_0_[1] ),
        .I1(\t_bit_reg_n_0_[0] ),
        .O(\FSM_sequential_t_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "T_IDLE:000,T_START:001,T_DATA:010,T_PAR:011,T_STOP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_t_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(baud_gen_inst_n_18),
        .Q(t_state__0[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "T_IDLE:000,T_START:001,T_DATA:010,T_PAR:011,T_STOP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_t_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(baud_gen_inst_n_17),
        .Q(t_state__0[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "T_IDLE:000,T_START:001,T_DATA:010,T_PAR:011,T_STOP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_t_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(baud_gen_inst_n_16),
        .Q(t_state__0[2]),
        .R(rst));
  SS_DIVIDER baud_gen_inst
       (.CLK(CLK),
        .E(baud_gen_inst_n_1),
        .\FSM_sequential_r_state_reg[0] (baud_gen_inst_n_9),
        .\FSM_sequential_r_state_reg[0]_0 (baud_gen_inst_n_13),
        .\FSM_sequential_r_state_reg[0]_1 (\FSM_sequential_r_state[2]_i_3_n_0 ),
        .\FSM_sequential_r_state_reg[1] (baud_gen_inst_n_3),
        .\FSM_sequential_r_state_reg[1]_0 (baud_gen_inst_n_10),
        .\FSM_sequential_r_state_reg[2] (baud_gen_inst_n_14),
        .\FSM_sequential_r_state_reg[2]_0 (baud_gen_inst_n_15),
        .\FSM_sequential_t_state_reg[0] (baud_gen_inst_n_17),
        .\FSM_sequential_t_state_reg[0]_0 (\FSM_sequential_t_state[2]_i_4_n_0 ),
        .\FSM_sequential_t_state_reg[0]_1 (\t_bit_reg_n_0_[2] ),
        .\FSM_sequential_t_state_reg[0]_2 (\FSM_sequential_t_state[2]_i_5_n_0 ),
        .\FSM_sequential_t_state_reg[1] (baud_gen_inst_n_11),
        .\FSM_sequential_t_state_reg[1]_0 (baud_gen_inst_n_16),
        .\FSM_sequential_t_state_reg[2] (baud_gen_inst_n_5),
        .\FSM_sequential_t_state_reg[2]_0 (baud_gen_inst_n_18),
        .Q(rx),
        .btn_o_reg(baud_gen_inst_n_4),
        .\r_bit[2]_i_3_0 (\r_bit_reg_n_0_[2] ),
        .\r_bit[2]_i_3_1 (\r_bit_reg_n_0_[1] ),
        .\r_bit[2]_i_3_2 (\r_bit_reg_n_0_[0] ),
        .\r_bit_reg[0] (\r_sample[3]_i_7_n_0 ),
        .\r_bit_reg[0]_0 (\r_bit[2]_i_5_n_0 ),
        .\r_sample_reg[0] (\r_sample[3]_i_3_n_0 ),
        .\r_sample_reg[0]_0 (\r_sample[3]_i_4_n_0 ),
        .\r_shift_reg[0] ({\r_sample_reg_n_0_[3] ,\r_sample_reg_n_0_[2] ,\r_sample_reg_n_0_[1] ,\r_sample_reg_n_0_[0] }),
        .r_state__0(r_state__0),
        .rst(rst),
        .rx_frame_err_reg(rx_frm_err),
        .rx_parity_err_reg(rx_parity_err_i_2_n_0),
        .rx_parity_err_reg_0(rx_par_err),
        .\rx_sync_reg[2] (baud_gen_inst_n_2),
        .\t_bit_reg[0] (\t_bit[2]_i_3_n_0 ),
        .t_out1_out(t_out1_out),
        .t_state__0(t_state__0),
        .tick(tick),
        .tick_reg_0(baud_gen_inst_n_7),
        .tx_busy(tx_busy),
        .tx_busy_reg(\t_samp[0]_i_2_n_0 ),
        .tx_req(tx_req),
        .tx_req_reg(baud_gen_inst_n_6),
        .tx_req_reg_0(baud_gen_inst_n_12),
        .tx_start(tx_start));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \cnt_hex[4]_i_4 
       (.I0(rx_data[7]),
        .I1(rx_data[6]),
        .I2(rx_data[5]),
        .I3(\FSM_sequential_st_reg[0]_3 ),
        .I4(st__0[1]),
        .I5(\cnt_hex[4]_i_8_n_0 ),
        .O(\rx_data_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFF000000570000)) 
    \cnt_hex[4]_i_5 
       (.I0(rx_data[3]),
        .I1(rx_data[2]),
        .I2(rx_data[1]),
        .I3(\B[1]_i_2_n_0 ),
        .I4(\cnt_hex[4]_i_9_n_0 ),
        .I5(\B[2]_i_3_n_0 ),
        .O(in_ok));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cnt_hex[4]_i_8 
       (.I0(rx_data[2]),
        .I1(rx_data[1]),
        .I2(\cnt_hex[4]_i_4_0 ),
        .I3(rx_data[0]),
        .I4(rx_data[3]),
        .I5(rx_data[4]),
        .O(\cnt_hex[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF7E)) 
    \cnt_hex[4]_i_9 
       (.I0(rx_data[0]),
        .I1(rx_data[2]),
        .I2(rx_data[1]),
        .I3(rx_data[4]),
        .O(\cnt_hex[4]_i_9_n_0 ));
  (* \PinAttr:I4:HOLD_DETOUR  = "180" *) 
  LUT5 #(
    .INIT(32'h02FF3200)) 
    \r_bit[0]_i_1 
       (.I0(rx),
        .I1(r_state__0[2]),
        .I2(r_state__0[1]),
        .I3(baud_gen_inst_n_2),
        .I4(\r_bit_reg_n_0_[0] ),
        .O(\r_bit[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h020EFFFF0E020000)) 
    \r_bit[1]_i_1 
       (.I0(rx),
        .I1(r_state__0[1]),
        .I2(r_state__0[2]),
        .I3(\r_bit_reg_n_0_[0] ),
        .I4(baud_gen_inst_n_2),
        .I5(\r_bit_reg_n_0_[1] ),
        .O(\r_bit[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C0AFFFF030A0000)) 
    \r_bit[2]_i_1 
       (.I0(rx),
        .I1(\r_bit[2]_i_2_n_0 ),
        .I2(r_state__0[2]),
        .I3(r_state__0[1]),
        .I4(baud_gen_inst_n_2),
        .I5(\r_bit_reg_n_0_[2] ),
        .O(\r_bit[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \r_bit[2]_i_2 
       (.I0(\r_bit_reg_n_0_[1] ),
        .I1(\r_bit_reg_n_0_[0] ),
        .O(\r_bit[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_bit[2]_i_5 
       (.I0(r_state__0[2]),
        .I1(r_state__0[1]),
        .O(\r_bit[2]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_bit_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_bit[0]_i_1_n_0 ),
        .Q(\r_bit_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_bit_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_bit[1]_i_1_n_0 ),
        .Q(\r_bit_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_bit_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_bit[2]_i_1_n_0 ),
        .Q(\r_bit_reg_n_0_[2] ),
        .R(rst));
  LUT3 #(
    .INIT(8'hF4)) 
    \r_sample[0]_i_1 
       (.I0(\r_sample_reg_n_0_[0] ),
        .I1(\r_sample[3]_i_6_n_0 ),
        .I2(\r_sample[3]_i_5_n_0 ),
        .O(r_sample[0]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hAEEA)) 
    \r_sample[1]_i_1 
       (.I0(\r_sample[3]_i_5_n_0 ),
        .I1(\r_sample[3]_i_6_n_0 ),
        .I2(\r_sample_reg_n_0_[1] ),
        .I3(\r_sample_reg_n_0_[0] ),
        .O(r_sample[1]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'hAEEEEAAA)) 
    \r_sample[2]_i_1 
       (.I0(\r_sample[3]_i_5_n_0 ),
        .I1(\r_sample[3]_i_6_n_0 ),
        .I2(\r_sample_reg_n_0_[1] ),
        .I3(\r_sample_reg_n_0_[0] ),
        .I4(\r_sample_reg_n_0_[2] ),
        .O(r_sample[2]));
  LUT6 #(
    .INIT(64'hAEEEEEEEEAAAAAAA)) 
    \r_sample[3]_i_2 
       (.I0(\r_sample[3]_i_5_n_0 ),
        .I1(\r_sample[3]_i_6_n_0 ),
        .I2(\r_sample_reg_n_0_[2] ),
        .I3(\r_sample_reg_n_0_[0] ),
        .I4(\r_sample_reg_n_0_[1] ),
        .I5(\r_sample_reg_n_0_[3] ),
        .O(r_sample[3]));
  LUT6 #(
    .INIT(64'hAAAAAAA2FFFFFFFF)) 
    \r_sample[3]_i_3 
       (.I0(r_state__0[0]),
        .I1(\r_sample_reg_n_0_[2] ),
        .I2(\r_sample_reg_n_0_[3] ),
        .I3(\r_sample_reg_n_0_[1] ),
        .I4(\r_sample_reg_n_0_[0] ),
        .I5(rx),
        .O(\r_sample[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \r_sample[3]_i_4 
       (.I0(\r_sample_reg_n_0_[2] ),
        .I1(\r_sample_reg_n_0_[0] ),
        .I2(\r_sample_reg_n_0_[1] ),
        .I3(\r_sample_reg_n_0_[3] ),
        .O(\r_sample[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00101010)) 
    \r_sample[3]_i_5 
       (.I0(r_state__0[1]),
        .I1(r_state__0[2]),
        .I2(rx),
        .I3(\r_sample[3]_i_7_n_0 ),
        .I4(r_state__0[0]),
        .O(\r_sample[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \r_sample[3]_i_6 
       (.I0(r_state__0[2]),
        .I1(r_state__0[0]),
        .I2(\r_sample[3]_i_7_n_0 ),
        .I3(r_state__0[1]),
        .I4(\r_sample[3]_i_4_n_0 ),
        .O(\r_sample[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \r_sample[3]_i_7 
       (.I0(\r_sample_reg_n_0_[2] ),
        .I1(\r_sample_reg_n_0_[3] ),
        .I2(\r_sample_reg_n_0_[1] ),
        .I3(\r_sample_reg_n_0_[0] ),
        .O(\r_sample[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[0] 
       (.C(CLK),
        .CE(baud_gen_inst_n_3),
        .D(r_sample[0]),
        .Q(\r_sample_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[1] 
       (.C(CLK),
        .CE(baud_gen_inst_n_3),
        .D(r_sample[1]),
        .Q(\r_sample_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[2] 
       (.C(CLK),
        .CE(baud_gen_inst_n_3),
        .D(r_sample[2]),
        .Q(\r_sample_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_sample_reg[3] 
       (.C(CLK),
        .CE(baud_gen_inst_n_3),
        .D(r_sample[3]),
        .Q(\r_sample_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \r_shift_reg[0] 
       (.C(CLK),
        .CE(baud_gen_inst_n_1),
        .D(r_shift[1]),
        .Q(r_shift[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shift_reg[1] 
       (.C(CLK),
        .CE(baud_gen_inst_n_1),
        .D(r_shift[2]),
        .Q(r_shift[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shift_reg[2] 
       (.C(CLK),
        .CE(baud_gen_inst_n_1),
        .D(r_shift[3]),
        .Q(r_shift[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shift_reg[3] 
       (.C(CLK),
        .CE(baud_gen_inst_n_1),
        .D(r_shift[4]),
        .Q(r_shift[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shift_reg[4] 
       (.C(CLK),
        .CE(baud_gen_inst_n_1),
        .D(r_shift[5]),
        .Q(r_shift[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shift_reg[5] 
       (.C(CLK),
        .CE(baud_gen_inst_n_1),
        .D(r_shift[6]),
        .Q(r_shift[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shift_reg[6] 
       (.C(CLK),
        .CE(baud_gen_inst_n_1),
        .D(r_shift[7]),
        .Q(r_shift[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_shift_reg[7] 
       (.C(CLK),
        .CE(baud_gen_inst_n_1),
        .D(rx),
        .Q(r_shift[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAFFFF)) 
    \rom_idx[7]_i_1 
       (.I0(rx_parity_err_reg_0),
        .I1(\rom_idx[7]_i_3_n_0 ),
        .I2(rx_valid),
        .I3(st__0[2]),
        .I4(\rom_idx_reg[7] ),
        .I5(\rom_idx_reg[7]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h74777444)) 
    \rom_idx[7]_i_3 
       (.I0(in_ok),
        .I1(\FSM_sequential_st_reg[0]_2 ),
        .I2(\rx_data_reg[3]_1 ),
        .I3(st__0[1]),
        .I4(\rx_data_reg[0]_0 ),
        .O(\rom_idx[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000A808AAAAA808)) 
    \rom_sel[0]_i_2 
       (.I0(\rom_sel[0]_i_5_n_0 ),
        .I1(\rx_data_reg[0]_0 ),
        .I2(st__0[1]),
        .I3(\rx_data_reg[3]_1 ),
        .I4(\FSM_sequential_st_reg[0]_2 ),
        .I5(in_ok),
        .O(\FSM_sequential_st_reg[1] ));
  LUT2 #(
    .INIT(4'h2)) 
    \rom_sel[0]_i_5 
       (.I0(rx_valid),
        .I1(st__0[2]),
        .O(\rom_sel[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rom_sel[1]_i_3 
       (.I0(rx_par_err),
        .I1(rx_frm_err),
        .O(rx_parity_err_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2A20)) 
    \rom_sel[1]_i_6 
       (.I0(rx_valid),
        .I1(in_ok),
        .I2(\FSM_sequential_st_reg[0]_2 ),
        .I3(\rom_sel[1]_i_7_n_0 ),
        .I4(rx_frm_err),
        .I5(rx_par_err),
        .O(rx_valid_reg_1));
  LUT6 #(
    .INIT(64'hFFBFFFBFFFBFFFB0)) 
    \rom_sel[1]_i_7 
       (.I0(\FSM_sequential_st[0]_i_8_n_0 ),
        .I1(rx_data[4]),
        .I2(st__0[1]),
        .I3(\FSM_sequential_st[2]_i_12_n_0 ),
        .I4(rx_data[0]),
        .I5(\rom_sel[1]_i_8_n_0 ),
        .O(\rom_sel[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rom_sel[1]_i_8 
       (.I0(rx_data[4]),
        .I1(rx_data[3]),
        .I2(rx_data[1]),
        .I3(rx_data[2]),
        .O(\rom_sel[1]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(baud_gen_inst_n_4),
        .D(r_shift[0]),
        .Q(rx_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(baud_gen_inst_n_4),
        .D(r_shift[1]),
        .Q(rx_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(baud_gen_inst_n_4),
        .D(r_shift[2]),
        .Q(rx_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(baud_gen_inst_n_4),
        .D(r_shift[3]),
        .Q(rx_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(baud_gen_inst_n_4),
        .D(r_shift[4]),
        .Q(rx_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(baud_gen_inst_n_4),
        .D(r_shift[5]),
        .Q(rx_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(baud_gen_inst_n_4),
        .D(r_shift[6]),
        .Q(rx_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(baud_gen_inst_n_4),
        .D(r_shift[7]),
        .Q(rx_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_frame_err_reg
       (.C(CLK),
        .CE(1'b1),
        .D(baud_gen_inst_n_10),
        .Q(rx_frm_err),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    rx_parity_err_i_2
       (.I0(r_state__0[1]),
        .I1(r_state__0[2]),
        .O(rx_parity_err_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_parity_err_reg
       (.C(CLK),
        .CE(1'b1),
        .D(baud_gen_inst_n_9),
        .Q(rx_par_err),
        .R(rst));
  FDRE #(
    .INIT(1'b1)) 
    \rx_sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_sync_reg[0]_0 ),
        .Q(\rx_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rx_sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_sync_reg_n_0_[0] ),
        .Q(\rx_sync_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rx_sync_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_sync_reg_n_0_[1] ),
        .Q(rx),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(baud_gen_inst_n_4),
        .Q(rx_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h0F40)) 
    \t_bit[0]_i_1 
       (.I0(t_state__0[2]),
        .I1(t_state__0[1]),
        .I2(baud_gen_inst_n_6),
        .I3(\t_bit_reg_n_0_[0] ),
        .O(\t_bit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h02FF2000)) 
    \t_bit[1]_i_1 
       (.I0(t_state__0[1]),
        .I1(t_state__0[2]),
        .I2(\t_bit_reg_n_0_[0] ),
        .I3(baud_gen_inst_n_6),
        .I4(\t_bit_reg_n_0_[1] ),
        .O(\t_bit[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0700FFFF08000000)) 
    \t_bit[2]_i_1 
       (.I0(\t_bit_reg_n_0_[1] ),
        .I1(\t_bit_reg_n_0_[0] ),
        .I2(t_state__0[2]),
        .I3(t_state__0[1]),
        .I4(baud_gen_inst_n_6),
        .I5(\t_bit_reg_n_0_[2] ),
        .O(\t_bit[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \t_bit[2]_i_3 
       (.I0(\t_bit_reg_n_0_[0] ),
        .I1(\t_bit_reg_n_0_[1] ),
        .I2(\t_bit_reg_n_0_[2] ),
        .O(\t_bit[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_bit_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_bit[0]_i_1_n_0 ),
        .Q(\t_bit_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_bit_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_bit[1]_i_1_n_0 ),
        .Q(\t_bit_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_bit_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_bit[2]_i_1_n_0 ),
        .Q(\t_bit_reg_n_0_[2] ),
        .R(rst));
  LUT4 #(
    .INIT(16'h020F)) 
    t_out_i_2
       (.I0(\t_shift_reg_n_0_[0] ),
        .I1(t_state__0[2]),
        .I2(t_state__0[0]),
        .I3(t_state__0[1]),
        .O(t_out_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    t_out_reg
       (.C(CLK),
        .CE(t_out1_out),
        .D(t_out_i_2_n_0),
        .Q(UART_RXD_OUT_OBUF),
        .S(rst));
  LUT6 #(
    .INIT(64'hFF33F33F00880880)) 
    \t_samp[0]_i_1 
       (.I0(\t_samp[0]_i_2_n_0 ),
        .I1(tick),
        .I2(t_state__0[0]),
        .I3(t_state__0[2]),
        .I4(t_state__0[1]),
        .I5(\t_samp_reg_n_0_[0] ),
        .O(\t_samp[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \t_samp[0]_i_2 
       (.I0(\t_samp_reg_n_0_[1] ),
        .I1(\t_samp_reg_n_0_[0] ),
        .I2(\t_samp_reg_n_0_[2] ),
        .O(\t_samp[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \t_samp[1]_i_1 
       (.I0(\t_samp_reg_n_0_[0] ),
        .I1(baud_gen_inst_n_7),
        .I2(\t_samp_reg_n_0_[1] ),
        .O(\t_samp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \t_samp[2]_i_1 
       (.I0(\t_samp_reg_n_0_[1] ),
        .I1(\t_samp_reg_n_0_[0] ),
        .I2(baud_gen_inst_n_7),
        .I3(\t_samp_reg_n_0_[2] ),
        .O(\t_samp[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_samp_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_samp[0]_i_1_n_0 ),
        .Q(\t_samp_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_samp_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_samp[1]_i_1_n_0 ),
        .Q(\t_samp_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_samp_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\t_samp[2]_i_1_n_0 ),
        .Q(\t_samp_reg_n_0_[2] ),
        .R(rst));
  LUT3 #(
    .INIT(8'hAC)) 
    \t_shift[0]_i_1 
       (.I0(\t_shift_reg_n_0_[1] ),
        .I1(\t_shift_reg[6]_0 [0]),
        .I2(t_state__0[1]),
        .O(t_shift[0]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t_shift[1]_i_1 
       (.I0(\t_shift_reg_n_0_[2] ),
        .I1(\t_shift_reg[6]_0 [1]),
        .I2(t_state__0[1]),
        .O(t_shift[1]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t_shift[2]_i_1 
       (.I0(\t_shift_reg_n_0_[3] ),
        .I1(\t_shift_reg[6]_0 [2]),
        .I2(t_state__0[1]),
        .O(t_shift[2]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t_shift[3]_i_1 
       (.I0(\t_shift_reg_n_0_[4] ),
        .I1(\t_shift_reg[6]_0 [3]),
        .I2(t_state__0[1]),
        .O(t_shift[3]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t_shift[4]_i_1 
       (.I0(\t_shift_reg_n_0_[5] ),
        .I1(\t_shift_reg[6]_0 [4]),
        .I2(t_state__0[1]),
        .O(t_shift[4]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \t_shift[5]_i_1 
       (.I0(\t_shift_reg_n_0_[6] ),
        .I1(\t_shift_reg[6]_0 [5]),
        .I2(t_state__0[1]),
        .O(t_shift[5]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \t_shift[6]_i_2 
       (.I0(t_state__0[1]),
        .I1(\t_shift_reg[6]_0 [6]),
        .O(t_shift[6]));
  FDRE #(
    .INIT(1'b0)) 
    \t_shift_reg[0] 
       (.C(CLK),
        .CE(baud_gen_inst_n_5),
        .D(t_shift[0]),
        .Q(\t_shift_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_shift_reg[1] 
       (.C(CLK),
        .CE(baud_gen_inst_n_5),
        .D(t_shift[1]),
        .Q(\t_shift_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_shift_reg[2] 
       (.C(CLK),
        .CE(baud_gen_inst_n_5),
        .D(t_shift[2]),
        .Q(\t_shift_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_shift_reg[3] 
       (.C(CLK),
        .CE(baud_gen_inst_n_5),
        .D(t_shift[3]),
        .Q(\t_shift_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_shift_reg[4] 
       (.C(CLK),
        .CE(baud_gen_inst_n_5),
        .D(t_shift[4]),
        .Q(\t_shift_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_shift_reg[5] 
       (.C(CLK),
        .CE(baud_gen_inst_n_5),
        .D(t_shift[5]),
        .Q(\t_shift_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_shift_reg[6] 
       (.C(CLK),
        .CE(baud_gen_inst_n_5),
        .D(t_shift[6]),
        .Q(\t_shift_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tx_busy_reg
       (.C(CLK),
        .CE(1'b1),
        .D(baud_gen_inst_n_12),
        .Q(tx_busy),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    tx_req_reg
       (.C(CLK),
        .CE(1'b1),
        .D(baud_gen_inst_n_11),
        .Q(tx_req),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
