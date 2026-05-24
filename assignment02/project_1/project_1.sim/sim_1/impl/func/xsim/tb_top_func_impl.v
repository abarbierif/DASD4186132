// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Fri May 22 21:21:39 2026
// Host        : swedish-laptop running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/abarf/Documents/repos/DASD4186132/assignment02/project_1/project_1.sim/sim_1/impl/func/xsim/tb_top_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module acquisition_thread
   (scale_pipe_fsm_ready_reg,
    ad1_driver_ready_reg,
    P,
    DOADO,
    \test_lut_addr_count_reg[0]_0 ,
    \current_state_reg[0] ,
    \current_state_reg[0]_0 ,
    current_state,
    O,
    data_out_reg,
    CO,
    data_out_reg_0,
    \current_state_reg[4] ,
    last_sample,
    E,
    \current_state_reg[0]_1 ,
    A,
    scale_pipe_fsm_ready_reg_reg_0,
    DI,
    S,
    \min_reg_reg[6] ,
    \min_reg_reg[6]_0 ,
    FSM_sequential_current_state_reg,
    data0_q2_12_reg_0,
    \max_reg_reg[12] ,
    \min_reg_reg[12] ,
    \min_reg_reg[12]_0 ,
    \current_state_reg[0]_2 ,
    \current_state_reg[0]_3 ,
    ADDRARDADDR,
    clk_IBUF_BUFG,
    ad1_driver_ready,
    ad1_driver_ready_rising,
    rst_IBUF,
    Q,
    \test_lut_addr_count_reg[0]_1 ,
    acc_data_in_reg_reg,
    start_IBUF,
    D,
    comp_en,
    \max_reg_reg[0] ,
    comp_en_0,
    \min_reg_reg[0] ,
    max_reg1_carry__0,
    min_reg1_carry__0,
    mode_IBUF);
  output scale_pipe_fsm_ready_reg;
  output ad1_driver_ready_reg;
  output [11:0]P;
  output [11:0]DOADO;
  output [0:0]\test_lut_addr_count_reg[0]_0 ;
  output \current_state_reg[0] ;
  output \current_state_reg[0]_0 ;
  output [1:0]current_state;
  output [3:0]O;
  output [3:0]data_out_reg;
  output [0:0]CO;
  output [3:0]data_out_reg_0;
  output \current_state_reg[4] ;
  output last_sample;
  output [0:0]E;
  output [13:0]\current_state_reg[0]_1 ;
  output [13:0]A;
  output [0:0]scale_pipe_fsm_ready_reg_reg_0;
  output [3:0]DI;
  output [3:0]S;
  output [3:0]\min_reg_reg[6] ;
  output [3:0]\min_reg_reg[6]_0 ;
  output [13:0]FSM_sequential_current_state_reg;
  output [2:0]data0_q2_12_reg_0;
  output [2:0]\max_reg_reg[12] ;
  output [2:0]\min_reg_reg[12] ;
  output [2:0]\min_reg_reg[12]_0 ;
  output \current_state_reg[0]_2 ;
  output \current_state_reg[0]_3 ;
  output [9:0]ADDRARDADDR;
  input clk_IBUF_BUFG;
  input ad1_driver_ready;
  input ad1_driver_ready_rising;
  input rst_IBUF;
  input [11:0]Q;
  input \test_lut_addr_count_reg[0]_1 ;
  input [11:0]acc_data_in_reg_reg;
  input start_IBUF;
  input [9:0]D;
  input comp_en;
  input [0:0]\max_reg_reg[0] ;
  input comp_en_0;
  input [0:0]\min_reg_reg[0] ;
  input [13:0]max_reg1_carry__0;
  input [13:0]min_reg1_carry__0;
  input mode_IBUF;

  wire [13:0]A;
  wire [9:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [9:0]D;
  wire [3:0]DI;
  wire [11:0]DOADO;
  wire [0:0]E;
  wire [13:0]FSM_sequential_current_state_reg;
  wire [3:0]O;
  wire [11:0]P;
  wire [11:0]Q;
  wire [3:0]S;
  wire [11:0]acc_data_in_reg_reg;
  wire acquisition_ready;
  wire ad1_driver_ready;
  wire ad1_driver_ready_reg;
  wire ad1_driver_ready_rising;
  wire clear;
  wire clk_IBUF_BUFG;
  wire comp_en;
  wire comp_en_0;
  wire [1:0]current_state;
  wire \current_state_reg[0] ;
  wire \current_state_reg[0]_0 ;
  wire [13:0]\current_state_reg[0]_1 ;
  wire \current_state_reg[0]_2 ;
  wire \current_state_reg[0]_3 ;
  wire \current_state_reg[4] ;
  wire [2:0]data0_q2_12_reg_0;
  wire data0_q2_12_reg_i_2_n_0;
  wire data0_q2_12_reg_n_96;
  wire data0_q2_12_reg_n_97;
  wire [3:0]data_out_reg;
  wire [3:0]data_out_reg_0;
  wire [1:0]data_out_reg__0;
  wire fsm_samples_n_2;
  wire last_sample;
  wire \m_samples[10]_i_1_n_0 ;
  wire \m_samples[3]_i_1_n_0 ;
  wire \m_samples[4]_i_1_n_0 ;
  wire \m_samples[5]_i_1_n_0 ;
  wire \m_samples[6]_i_3_n_0 ;
  wire \m_samples[6]_i_4_n_0 ;
  wire \m_samples_reg_n_0_[0] ;
  wire \m_samples_reg_n_0_[10] ;
  wire \m_samples_reg_n_0_[1] ;
  wire \m_samples_reg_n_0_[2] ;
  wire \m_samples_reg_n_0_[3] ;
  wire \m_samples_reg_n_0_[4] ;
  wire \m_samples_reg_n_0_[5] ;
  wire \m_samples_reg_n_0_[6] ;
  wire [13:0]max_reg1_carry__0;
  wire [0:0]\max_reg_reg[0] ;
  wire [2:0]\max_reg_reg[12] ;
  wire [13:0]min_reg1_carry__0;
  wire [0:0]\min_reg_reg[0] ;
  wire [2:0]\min_reg_reg[12] ;
  wire [2:0]\min_reg_reg[12]_0 ;
  wire [3:0]\min_reg_reg[6] ;
  wire [3:0]\min_reg_reg[6]_0 ;
  wire mode_IBUF;
  wire [9:0]n_samples;
  wire rst_IBUF;
  wire scale_pipe_fsm_ready;
  wire scale_pipe_fsm_ready_reg;
  wire [0:0]scale_pipe_fsm_ready_reg_reg_0;
  wire start_IBUF;
  wire \test_lut_addr_count[1]_i_1_n_0 ;
  wire \test_lut_addr_count[2]_i_1_n_0 ;
  wire \test_lut_addr_count[3]_i_1_n_0 ;
  wire \test_lut_addr_count[4]_i_1_n_0 ;
  wire \test_lut_addr_count[5]_i_1_n_0 ;
  wire \test_lut_addr_count[6]_i_1_n_0 ;
  wire \test_lut_addr_count[7]_i_1_n_0 ;
  wire \test_lut_addr_count[8]_i_1_n_0 ;
  wire \test_lut_addr_count[9]_i_2_n_0 ;
  wire \test_lut_addr_count[9]_i_3_n_0 ;
  wire [9:1]test_lut_addr_count_reg;
  wire [0:0]\test_lut_addr_count_reg[0]_0 ;
  wire \test_lut_addr_count_reg[0]_1 ;
  wire NLW_data0_q2_12_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data0_q2_12_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data0_q2_12_reg_OVERFLOW_UNCONNECTED;
  wire NLW_data0_q2_12_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data0_q2_12_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_data0_q2_12_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data0_q2_12_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data0_q2_12_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data0_q2_12_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_data0_q2_12_reg_P_UNCONNECTED;
  wire [47:0]NLW_data0_q2_12_reg_PCOUT_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    ad1_driver_ready_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ad1_driver_ready),
        .Q(ad1_driver_ready_reg),
        .R(1'b0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    data0_q2_12_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_data0_q2_12_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data0_q2_12_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data0_q2_12_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data0_q2_12_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ad1_driver_ready_rising),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(data0_q2_12_reg_i_2_n_0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data0_q2_12_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data0_q2_12_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_data0_q2_12_reg_P_UNCONNECTED[47:22],P,data0_q2_12_reg_n_96,data0_q2_12_reg_n_97,NLW_data0_q2_12_reg_P_UNCONNECTED[7:0]}),
        .PATTERNBDETECT(NLW_data0_q2_12_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data0_q2_12_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_data0_q2_12_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_data0_q2_12_reg_UNDERFLOW_UNCONNECTED));
  LUT1 #(
    .INIT(2'h1)) 
    data0_q2_12_reg_i_2
       (.I0(rst_IBUF),
        .O(data0_q2_12_reg_i_2_n_0));
  mode_fsm fsm_mode
       (.A(A),
        .CO(CO),
        .DI(DI),
        .DOADO({DOADO,data_out_reg__0}),
        .FSM_sequential_current_state_reg(FSM_sequential_current_state_reg),
        .\FSM_sequential_current_state_reg[0]_0 (current_state[0]),
        .\FSM_sequential_current_state_reg[0]_1 (\current_state_reg[4] ),
        .\FSM_sequential_current_state_reg[1]_0 (current_state[1]),
        .O(O),
        .P({P,data0_q2_12_reg_n_96,data0_q2_12_reg_n_97}),
        .S(S),
        .acc_data_in_reg_reg(acc_data_in_reg_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .comp_en(comp_en),
        .comp_en_0(comp_en_0),
        .\current_state_reg[0] (\current_state_reg[0]_1 ),
        .data0_q2_12_reg(data0_q2_12_reg_0),
        .data_out_reg(data_out_reg),
        .data_out_reg_0(data_out_reg_0),
        .max_reg1_carry__0(max_reg1_carry__0),
        .\max_reg_reg[12] (\max_reg_reg[12] ),
        .\max_reg_reg[13] (\max_reg_reg[0] ),
        .min_reg1_carry__0(min_reg1_carry__0),
        .\min_reg_reg[12] (\min_reg_reg[12] ),
        .\min_reg_reg[12]_0 (\min_reg_reg[12]_0 ),
        .\min_reg_reg[13] (\current_state_reg[0] ),
        .\min_reg_reg[13]_0 (scale_pipe_fsm_ready_reg),
        .\min_reg_reg[13]_1 (\min_reg_reg[0] ),
        .\min_reg_reg[6] (\min_reg_reg[6] ),
        .\min_reg_reg[6]_0 (\min_reg_reg[6]_0 ),
        .mode_IBUF(mode_IBUF),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF));
  samples_fsm fsm_samples
       (.D(D[9:7]),
        .E(acquisition_ready),
        .Q({\m_samples_reg_n_0_[6] ,\m_samples_reg_n_0_[5] ,\m_samples_reg_n_0_[4] ,\m_samples_reg_n_0_[3] ,\m_samples_reg_n_0_[2] ,\m_samples_reg_n_0_[1] ,\m_samples_reg_n_0_[0] }),
        .SR(fsm_samples_n_2),
        .ad1_driver_ready_rising(ad1_driver_ready_rising),
        .clear(clear),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[4]_0 (\current_state_reg[4] ),
        .\m_samples_reg[0] (\m_samples[6]_i_4_n_0 ),
        .next_state1_carry__0_0(\m_samples_reg_n_0_[10] ),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF));
  scale_pipe_fsm fsm_scale_pipe
       (.E(E),
        .ad1_driver_ready_rising(ad1_driver_ready_rising),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .comp_en(comp_en),
        .comp_en_0(comp_en_0),
        .\current_state_reg[0]_0 (\current_state_reg[0] ),
        .\current_state_reg[0]_1 (\current_state_reg[0]_0 ),
        .\current_state_reg[0]_2 (\current_state_reg[0]_2 ),
        .\current_state_reg[0]_3 (\current_state_reg[0]_3 ),
        .last_sample(last_sample),
        .last_sample_reg0_reg(\current_state_reg[4] ),
        .\max_reg_reg[0] (\max_reg_reg[0] ),
        .\min_reg_reg[0] (scale_pipe_fsm_ready_reg),
        .\min_reg_reg[0]_0 (\min_reg_reg[0] ),
        .rst_IBUF(rst_IBUF),
        .scale_pipe_fsm_ready(scale_pipe_fsm_ready),
        .scale_pipe_fsm_ready_reg_reg(scale_pipe_fsm_ready_reg_reg_0));
  test_lut lut_test
       (.DOADO({DOADO,data_out_reg__0}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_out_reg_0(\test_lut_addr_count_reg[0]_0 ),
        .rst_IBUF(rst_IBUF),
        .test_lut_addr_count_reg(test_lut_addr_count_reg));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \m_samples[10]_i_1 
       (.I0(\m_samples[6]_i_4_n_0 ),
        .I1(D[8]),
        .I2(D[9]),
        .I3(D[7]),
        .I4(\current_state_reg[4] ),
        .I5(\m_samples_reg_n_0_[10] ),
        .O(\m_samples[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_samples[3]_i_1 
       (.I0(D[3]),
        .O(\m_samples[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_samples[4]_i_1 
       (.I0(D[3]),
        .I1(D[4]),
        .O(\m_samples[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \m_samples[5]_i_1 
       (.I0(D[3]),
        .I1(D[4]),
        .I2(D[5]),
        .O(\m_samples[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \m_samples[6]_i_3 
       (.I0(D[5]),
        .I1(D[4]),
        .I2(D[3]),
        .I3(D[6]),
        .O(\m_samples[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE0000000)) 
    \m_samples[6]_i_4 
       (.I0(D[3]),
        .I1(D[2]),
        .I2(D[6]),
        .I3(D[5]),
        .I4(D[4]),
        .O(\m_samples[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_samples_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[0]),
        .Q(\m_samples_reg_n_0_[0] ),
        .R(fsm_samples_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \m_samples_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\m_samples[10]_i_1_n_0 ),
        .Q(\m_samples_reg_n_0_[10] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \m_samples_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[1]),
        .Q(\m_samples_reg_n_0_[1] ),
        .R(fsm_samples_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \m_samples_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[2]),
        .Q(\m_samples_reg_n_0_[2] ),
        .R(fsm_samples_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \m_samples_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(\m_samples[3]_i_1_n_0 ),
        .Q(\m_samples_reg_n_0_[3] ),
        .R(fsm_samples_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \m_samples_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(\m_samples[4]_i_1_n_0 ),
        .Q(\m_samples_reg_n_0_[4] ),
        .R(fsm_samples_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \m_samples_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(\m_samples[5]_i_1_n_0 ),
        .Q(\m_samples_reg_n_0_[5] ),
        .R(fsm_samples_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \m_samples_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(\m_samples[6]_i_3_n_0 ),
        .Q(\m_samples_reg_n_0_[6] ),
        .R(fsm_samples_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \n_samples_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[0]),
        .Q(n_samples[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \n_samples_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[1]),
        .Q(n_samples[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \n_samples_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[2]),
        .Q(n_samples[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \n_samples_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[3]),
        .Q(n_samples[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \n_samples_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[4]),
        .Q(n_samples[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \n_samples_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[5]),
        .Q(n_samples[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \n_samples_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[6]),
        .Q(n_samples[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \n_samples_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[7]),
        .Q(n_samples[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \n_samples_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[8]),
        .Q(n_samples[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \n_samples_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(acquisition_ready),
        .D(D[9]),
        .Q(n_samples[9]),
        .R(rst_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    n_samples_reg_reg_i_10
       (.I0(n_samples[1]),
        .I1(rst_IBUF),
        .O(ADDRARDADDR[1]));
  LUT2 #(
    .INIT(4'h2)) 
    n_samples_reg_reg_i_11
       (.I0(n_samples[0]),
        .I1(rst_IBUF),
        .O(ADDRARDADDR[0]));
  LUT2 #(
    .INIT(4'h2)) 
    n_samples_reg_reg_i_2
       (.I0(n_samples[9]),
        .I1(rst_IBUF),
        .O(ADDRARDADDR[9]));
  LUT2 #(
    .INIT(4'h2)) 
    n_samples_reg_reg_i_3
       (.I0(n_samples[8]),
        .I1(rst_IBUF),
        .O(ADDRARDADDR[8]));
  LUT2 #(
    .INIT(4'h2)) 
    n_samples_reg_reg_i_4
       (.I0(n_samples[7]),
        .I1(rst_IBUF),
        .O(ADDRARDADDR[7]));
  LUT2 #(
    .INIT(4'h2)) 
    n_samples_reg_reg_i_5
       (.I0(n_samples[6]),
        .I1(rst_IBUF),
        .O(ADDRARDADDR[6]));
  LUT2 #(
    .INIT(4'h2)) 
    n_samples_reg_reg_i_6
       (.I0(n_samples[5]),
        .I1(rst_IBUF),
        .O(ADDRARDADDR[5]));
  LUT2 #(
    .INIT(4'h2)) 
    n_samples_reg_reg_i_7
       (.I0(n_samples[4]),
        .I1(rst_IBUF),
        .O(ADDRARDADDR[4]));
  LUT2 #(
    .INIT(4'h2)) 
    n_samples_reg_reg_i_8
       (.I0(n_samples[3]),
        .I1(rst_IBUF),
        .O(ADDRARDADDR[3]));
  LUT2 #(
    .INIT(4'h2)) 
    n_samples_reg_reg_i_9
       (.I0(n_samples[2]),
        .I1(rst_IBUF),
        .O(ADDRARDADDR[2]));
  FDRE #(
    .INIT(1'b0)) 
    scale_pipe_fsm_ready_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(scale_pipe_fsm_ready),
        .Q(scale_pipe_fsm_ready_reg),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    \test_lut_addr_count[1]_i_1 
       (.I0(ad1_driver_ready_rising),
        .I1(\test_lut_addr_count_reg[0]_0 ),
        .I2(test_lut_addr_count_reg[1]),
        .O(\test_lut_addr_count[1]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \test_lut_addr_count[2]_i_1 
       (.I0(test_lut_addr_count_reg[1]),
        .I1(\test_lut_addr_count_reg[0]_0 ),
        .I2(ad1_driver_ready_rising),
        .I3(test_lut_addr_count_reg[2]),
        .O(\test_lut_addr_count[2]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \test_lut_addr_count[3]_i_1 
       (.I0(test_lut_addr_count_reg[2]),
        .I1(ad1_driver_ready_rising),
        .I2(\test_lut_addr_count_reg[0]_0 ),
        .I3(test_lut_addr_count_reg[1]),
        .I4(test_lut_addr_count_reg[3]),
        .O(\test_lut_addr_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \test_lut_addr_count[4]_i_1 
       (.I0(test_lut_addr_count_reg[3]),
        .I1(test_lut_addr_count_reg[1]),
        .I2(\test_lut_addr_count_reg[0]_0 ),
        .I3(ad1_driver_ready_rising),
        .I4(test_lut_addr_count_reg[2]),
        .I5(test_lut_addr_count_reg[4]),
        .O(\test_lut_addr_count[4]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \test_lut_addr_count[5]_i_1 
       (.I0(\test_lut_addr_count[9]_i_3_n_0 ),
        .I1(test_lut_addr_count_reg[5]),
        .O(\test_lut_addr_count[5]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \test_lut_addr_count[6]_i_1 
       (.I0(test_lut_addr_count_reg[5]),
        .I1(\test_lut_addr_count[9]_i_3_n_0 ),
        .I2(test_lut_addr_count_reg[6]),
        .O(\test_lut_addr_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \test_lut_addr_count[7]_i_1 
       (.I0(test_lut_addr_count_reg[6]),
        .I1(\test_lut_addr_count[9]_i_3_n_0 ),
        .I2(test_lut_addr_count_reg[5]),
        .I3(test_lut_addr_count_reg[7]),
        .O(\test_lut_addr_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \test_lut_addr_count[8]_i_1 
       (.I0(test_lut_addr_count_reg[7]),
        .I1(test_lut_addr_count_reg[5]),
        .I2(\test_lut_addr_count[9]_i_3_n_0 ),
        .I3(test_lut_addr_count_reg[6]),
        .I4(test_lut_addr_count_reg[8]),
        .O(\test_lut_addr_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \test_lut_addr_count[9]_i_2 
       (.I0(test_lut_addr_count_reg[8]),
        .I1(test_lut_addr_count_reg[6]),
        .I2(\test_lut_addr_count[9]_i_3_n_0 ),
        .I3(test_lut_addr_count_reg[5]),
        .I4(test_lut_addr_count_reg[7]),
        .I5(test_lut_addr_count_reg[9]),
        .O(\test_lut_addr_count[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \test_lut_addr_count[9]_i_3 
       (.I0(ad1_driver_ready_rising),
        .I1(test_lut_addr_count_reg[4]),
        .I2(\test_lut_addr_count_reg[0]_0 ),
        .I3(test_lut_addr_count_reg[3]),
        .I4(test_lut_addr_count_reg[1]),
        .I5(test_lut_addr_count_reg[2]),
        .O(\test_lut_addr_count[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \test_lut_addr_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\test_lut_addr_count_reg[0]_1 ),
        .Q(\test_lut_addr_count_reg[0]_0 ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \test_lut_addr_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\test_lut_addr_count[1]_i_1_n_0 ),
        .Q(test_lut_addr_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \test_lut_addr_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\test_lut_addr_count[2]_i_1_n_0 ),
        .Q(test_lut_addr_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \test_lut_addr_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\test_lut_addr_count[3]_i_1_n_0 ),
        .Q(test_lut_addr_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \test_lut_addr_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\test_lut_addr_count[4]_i_1_n_0 ),
        .Q(test_lut_addr_count_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \test_lut_addr_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\test_lut_addr_count[5]_i_1_n_0 ),
        .Q(test_lut_addr_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \test_lut_addr_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\test_lut_addr_count[6]_i_1_n_0 ),
        .Q(test_lut_addr_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \test_lut_addr_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\test_lut_addr_count[7]_i_1_n_0 ),
        .Q(test_lut_addr_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \test_lut_addr_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\test_lut_addr_count[8]_i_1_n_0 ),
        .Q(test_lut_addr_count_reg[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \test_lut_addr_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\test_lut_addr_count[9]_i_2_n_0 ),
        .Q(test_lut_addr_count_reg[9]),
        .R(clear));
endmodule

module ad1_driver
   (sclk_reg_0,
    cs_OBUF,
    ad1_driver_ready_reg_reg,
    ad1_driver_ready_rising,
    ad1_driver_ready,
    Q,
    rst_IBUF,
    sclk_reg_1,
    clk_IBUF_BUFG,
    ad1_driver_divclk,
    start_IBUF,
    \current_state_reg[0]_0 ,
    ad1_driver_ready_reg,
    \test_lut_addr_count_reg[0] ,
    D);
  output sclk_reg_0;
  output cs_OBUF;
  output ad1_driver_ready_reg_reg;
  output ad1_driver_ready_rising;
  output ad1_driver_ready;
  output [11:0]Q;
  input rst_IBUF;
  input sclk_reg_1;
  input clk_IBUF_BUFG;
  input ad1_driver_divclk;
  input start_IBUF;
  input \current_state_reg[0]_0 ;
  input ad1_driver_ready_reg;
  input [0:0]\test_lut_addr_count_reg[0] ;
  input [0:0]D;

  wire [0:0]D;
  wire [11:0]Q;
  wire ad1_driver_divclk;
  wire ad1_driver_ready;
  wire ad1_driver_ready_reg;
  wire ad1_driver_ready_reg_reg;
  wire ad1_driver_ready_rising;
  wire clk_IBUF_BUFG;
  wire cs_OBUF;
  wire current_state;
  wire \current_state_reg[0]_0 ;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[1] ;
  wire \current_state_reg_n_0_[2] ;
  wire \current_state_reg_n_0_[3] ;
  wire data00;
  wire [3:0]next_state;
  wire rst_IBUF;
  wire sclk_reg_0;
  wire sclk_reg_1;
  wire start_IBUF;
  wire [0:0]\test_lut_addr_count_reg[0] ;

  LUT4 #(
    .INIT(16'h0001)) 
    ad1_driver_ready_reg_i_1
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .O(ad1_driver_ready));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cs_OBUF_inst_i_1
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[0] ),
        .O(cs_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \current_state[0]_i_1__1 
       (.I0(\current_state_reg_n_0_[0] ),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \current_state[1]_i_1__0 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \current_state[2]_i_1__0 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .O(next_state[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h00E000F0)) 
    \current_state[3]_i_1 
       (.I0(start_IBUF),
        .I1(cs_OBUF),
        .I2(ad1_driver_divclk),
        .I3(sclk_reg_0),
        .I4(\current_state_reg[0]_0 ),
        .O(current_state));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \current_state[3]_i_2 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .O(next_state[3]));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(next_state[0]),
        .Q(\current_state_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(next_state[1]),
        .Q(\current_state_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(next_state[2]),
        .Q(\current_state_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(next_state[3]),
        .Q(\current_state_reg_n_0_[3] ),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \data0[11]_i_1 
       (.I0(sclk_reg_0),
        .I1(ad1_driver_divclk),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(data00));
  LUT5 #(
    .INIT(32'h00000001)) 
    data0_q2_12_reg_i_1
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(ad1_driver_ready_reg),
        .O(ad1_driver_ready_rising));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(D),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(Q[9]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(Q[10]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(Q[0]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(Q[1]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(Q[2]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(Q[3]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(Q[4]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(Q[5]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(Q[6]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(Q[7]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data0_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(data00),
        .D(Q[8]),
        .Q(Q[9]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sclk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sclk_reg_1),
        .Q(sclk_reg_0),
        .S(rst_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \test_lut_addr_count[0]_i_1 
       (.I0(ad1_driver_ready_reg),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\test_lut_addr_count_reg[0] ),
        .O(ad1_driver_ready_reg_reg));
endmodule

module ad1_thread
   (sclk_OBUF,
    cs_OBUF,
    ad1_driver_ready_reg_reg,
    ad1_driver_ready_rising,
    ad1_driver_ready,
    Q,
    rst_IBUF,
    clk_IBUF_BUFG,
    start_IBUF,
    \current_state_reg[0] ,
    ad1_driver_ready_reg,
    \test_lut_addr_count_reg[0] ,
    D);
  output sclk_OBUF;
  output cs_OBUF;
  output ad1_driver_ready_reg_reg;
  output ad1_driver_ready_rising;
  output ad1_driver_ready;
  output [11:0]Q;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input start_IBUF;
  input \current_state_reg[0] ;
  input ad1_driver_ready_reg;
  input [0:0]\test_lut_addr_count_reg[0] ;
  input [0:0]D;

  wire [0:0]D;
  wire [11:0]Q;
  wire ad1_driver_clk_n_1;
  wire ad1_driver_divclk;
  wire ad1_driver_ready;
  wire ad1_driver_ready_reg;
  wire ad1_driver_ready_reg_reg;
  wire ad1_driver_ready_rising;
  wire clk_IBUF_BUFG;
  wire cs_OBUF;
  wire \current_state_reg[0] ;
  wire rst_IBUF;
  wire sclk_OBUF;
  wire start_IBUF;
  wire [0:0]\test_lut_addr_count_reg[0] ;

  clk_divider ad1_driver_clk
       (.ad1_driver_divclk(ad1_driver_divclk),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\counter_reg[0]_0 (ad1_driver_clk_n_1),
        .rst_IBUF(rst_IBUF),
        .sclk_reg(sclk_OBUF));
  ad1_driver ad1_driver_inst
       (.D(D),
        .Q(Q),
        .ad1_driver_divclk(ad1_driver_divclk),
        .ad1_driver_ready(ad1_driver_ready),
        .ad1_driver_ready_reg(ad1_driver_ready_reg),
        .ad1_driver_ready_reg_reg(ad1_driver_ready_reg_reg),
        .ad1_driver_ready_rising(ad1_driver_ready_rising),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cs_OBUF(cs_OBUF),
        .\current_state_reg[0]_0 (\current_state_reg[0] ),
        .rst_IBUF(rst_IBUF),
        .sclk_reg_0(sclk_OBUF),
        .sclk_reg_1(ad1_driver_clk_n_1),
        .start_IBUF(start_IBUF),
        .\test_lut_addr_count_reg[0] (\test_lut_addr_count_reg[0] ));
endmodule

module bin2bcd
   (Q,
    SR,
    clk_IBUF_BUFG,
    \q_reg[0]_0 );
  output [3:0]Q;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input [0:0]\q_reg[0]_0 ;

  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [3:1]q;
  wire [0:0]\q_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hE518)) 
    \q[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(q[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF0B2)) 
    \q[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(q[2]));
  LUT4 #(
    .INIT(16'hCE04)) 
    \q[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(q[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q_reg[0]_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[3]),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "bin2bcd" *) 
module bin2bcd_3
   (Q,
    SR,
    clk_IBUF_BUFG,
    D);
  output [3:0]Q;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input [0:0]D;

  wire [0:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [3:1]q;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE518)) 
    \q[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(q[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF0B2)) 
    \q[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(q[2]));
  LUT4 #(
    .INIT(16'hCE04)) 
    \q[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(q[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[3]),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "bin2bcd" *) 
module bin2bcd_4
   (Q,
    SR,
    clk_IBUF_BUFG,
    D);
  output [3:0]Q;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input [0:0]D;

  wire [0:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [3:1]q;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hE518)) 
    \q[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(q[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF0B2)) 
    \q[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(q[2]));
  LUT4 #(
    .INIT(16'hCE04)) 
    \q[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(q[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[3]),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "bin2bcd" *) 
module bin2bcd_5
   (Q,
    SR,
    clk_IBUF_BUFG,
    D);
  output [3:0]Q;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input [0:0]D;

  wire [0:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [3:1]q;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hE518)) 
    \q[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(q[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF0B2)) 
    \q[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(q[2]));
  LUT4 #(
    .INIT(16'hCE04)) 
    \q[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(q[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q[3]),
        .Q(Q[3]),
        .R(SR));
endmodule

module bin2bcd_multi
   (Q,
    clk_IBUF_BUFG,
    P);
  output [15:0]Q;
  input clk_IBUF_BUFG;
  input [11:0]P;

  wire [11:0]P;
  wire [15:0]Q;
  wire \bcd[15]_i_1_n_0 ;
  wire clk_IBUF_BUFG;
  wire [3:0]data5;
  wire data50;
  wire \dig[0]/_n_0 ;
  wire \dig[1]/_n_0 ;
  wire \dig_n_0_[0] ;
  wire \dig_n_0_[1] ;
  wire \dig_n_0_[2] ;
  wire \dig_n_0_[3] ;
  wire \dig_n_1_[0] ;
  wire \dig_n_1_[1] ;
  wire \dig_n_1_[2] ;
  wire \dig_n_2_[0] ;
  wire \dig_n_2_[1] ;
  wire \dig_n_2_[2] ;
  wire \dig_n_3_[0] ;
  wire \dig_n_3_[1] ;
  wire \dig_n_3_[2] ;
  wire reset;
  wire reset_i_1_n_0;
  wire \shiftReg[0]_i_1_n_0 ;
  wire \shiftReg[10]_i_1_n_0 ;
  wire \shiftReg[11]_i_1_n_0 ;
  wire \shiftReg[11]_i_2_n_0 ;
  wire \shiftReg[1]_i_1_n_0 ;
  wire \shiftReg[2]_i_1_n_0 ;
  wire \shiftReg[3]_i_1_n_0 ;
  wire \shiftReg[4]_i_1_n_0 ;
  wire \shiftReg[5]_i_1_n_0 ;
  wire \shiftReg[6]_i_1_n_0 ;
  wire \shiftReg[7]_i_1_n_0 ;
  wire \shiftReg[8]_i_1_n_0 ;
  wire \shiftReg[9]_i_1_n_0 ;
  wire \shiftReg_reg_n_0_[0] ;
  wire \shiftReg_reg_n_0_[10] ;
  wire \shiftReg_reg_n_0_[1] ;
  wire \shiftReg_reg_n_0_[2] ;
  wire \shiftReg_reg_n_0_[3] ;
  wire \shiftReg_reg_n_0_[4] ;
  wire \shiftReg_reg_n_0_[5] ;
  wire \shiftReg_reg_n_0_[6] ;
  wire \shiftReg_reg_n_0_[7] ;
  wire \shiftReg_reg_n_0_[8] ;
  wire \shiftReg_reg_n_0_[9] ;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;

  LUT4 #(
    .INIT(16'hE000)) 
    \bcd[15]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\bcd[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_3_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_1_[2] ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_0_[2] ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(data5[1]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(data5[2]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(data5[3]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_0_[3] ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_2_[0] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_1_[0] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_0_[0] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_3_[1] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_2_[1] ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_1_[1] ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_0_[1] ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_3_[2] ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\bcd[15]_i_1_n_0 ),
        .D(\dig_n_2_[2] ),
        .Q(Q[9]),
        .R(1'b0));
  bin2bcd \dig[0] 
       (.Q({\dig_n_0_[0] ,\dig_n_1_[0] ,\dig_n_2_[0] ,\dig_n_3_[0] }),
        .SR(reset),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\q_reg[0]_0 (data50));
  LUT4 #(
    .INIT(16'hEEEA)) 
    \dig[0]/ 
       (.I0(\dig_n_0_[0] ),
        .I1(\dig_n_1_[0] ),
        .I2(\dig_n_2_[0] ),
        .I3(\dig_n_3_[0] ),
        .O(\dig[0]/_n_0 ));
  bin2bcd_3 \dig[1] 
       (.D(\dig[0]/_n_0 ),
        .Q({\dig_n_0_[1] ,\dig_n_1_[1] ,\dig_n_2_[1] ,\dig_n_3_[1] }),
        .SR(reset),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  LUT4 #(
    .INIT(16'hEEEA)) 
    \dig[1]/ 
       (.I0(\dig_n_0_[1] ),
        .I1(\dig_n_1_[1] ),
        .I2(\dig_n_2_[1] ),
        .I3(\dig_n_3_[1] ),
        .O(\dig[1]/_n_0 ));
  bin2bcd_4 \dig[2] 
       (.D(\dig[1]/_n_0 ),
        .Q({\dig_n_0_[2] ,\dig_n_1_[2] ,\dig_n_2_[2] ,\dig_n_3_[2] }),
        .SR(reset),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  LUT4 #(
    .INIT(16'hEEEA)) 
    \dig[2]/ 
       (.I0(\dig_n_0_[2] ),
        .I1(\dig_n_1_[2] ),
        .I2(\dig_n_2_[2] ),
        .I3(\dig_n_3_[2] ),
        .O(data5[0]));
  bin2bcd_5 \dig[3] 
       (.D(data5[0]),
        .Q({\dig_n_0_[3] ,data5[3:1]}),
        .SR(reset),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  LUT4 #(
    .INIT(16'hA800)) 
    reset_i_1
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(reset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reset_i_1_n_0),
        .Q(reset),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000100)) 
    \shiftReg[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(P[0]),
        .I4(\state_reg_n_0_[0] ),
        .O(\shiftReg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shiftReg[10]_i_1 
       (.I0(\shiftReg_reg_n_0_[9] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(P[10]),
        .O(\shiftReg[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h777F)) 
    \shiftReg[11]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\shiftReg[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shiftReg[11]_i_2 
       (.I0(\shiftReg_reg_n_0_[10] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(P[11]),
        .O(\shiftReg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shiftReg[1]_i_1 
       (.I0(\shiftReg_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(P[1]),
        .O(\shiftReg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shiftReg[2]_i_1 
       (.I0(\shiftReg_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(P[2]),
        .O(\shiftReg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shiftReg[3]_i_1 
       (.I0(\shiftReg_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(P[3]),
        .O(\shiftReg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shiftReg[4]_i_1 
       (.I0(\shiftReg_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(P[4]),
        .O(\shiftReg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shiftReg[5]_i_1 
       (.I0(\shiftReg_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(P[5]),
        .O(\shiftReg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shiftReg[6]_i_1 
       (.I0(\shiftReg_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(P[6]),
        .O(\shiftReg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shiftReg[7]_i_1 
       (.I0(\shiftReg_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(P[7]),
        .O(\shiftReg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shiftReg[8]_i_1 
       (.I0(\shiftReg_reg_n_0_[7] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(P[8]),
        .O(\shiftReg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \shiftReg[9]_i_1 
       (.I0(\shiftReg_reg_n_0_[8] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(P[9]),
        .O(\shiftReg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[0]_i_1_n_0 ),
        .Q(\shiftReg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[10]_i_1_n_0 ),
        .Q(\shiftReg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[11]_i_2_n_0 ),
        .Q(data50),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[1]_i_1_n_0 ),
        .Q(\shiftReg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[2]_i_1_n_0 ),
        .Q(\shiftReg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[3]_i_1_n_0 ),
        .Q(\shiftReg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[4]_i_1_n_0 ),
        .Q(\shiftReg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[5]_i_1_n_0 ),
        .Q(\shiftReg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[6]_i_1_n_0 ),
        .Q(\shiftReg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[7]_i_1_n_0 ),
        .Q(\shiftReg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[8]_i_1_n_0 ),
        .Q(\shiftReg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftReg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftReg[11]_i_1_n_0 ),
        .D(\shiftReg[9]_i_1_n_0 ),
        .Q(\shiftReg_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h007F)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0770)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h344C)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h622A)) 
    \state[3]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\state[3]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .S(\state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(\state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(\state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[3]_i_2_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(\state[3]_i_1_n_0 ));
endmodule

module binto7seg
   (dp0,
    seg_OBUF,
    an_OBUF,
    clk_IBUF_BUFG,
    dp_reg,
    P);
  output dp0;
  output [6:0]seg_OBUF;
  output [3:0]an_OBUF;
  input clk_IBUF_BUFG;
  input dp_reg;
  input [11:0]P;

  wire [11:0]P;
  wire [3:0]an_OBUF;
  wire bin2bcd_multi1_n_0;
  wire bin2bcd_multi1_n_1;
  wire bin2bcd_multi1_n_12;
  wire bin2bcd_multi1_n_13;
  wire bin2bcd_multi1_n_14;
  wire bin2bcd_multi1_n_15;
  wire bin2bcd_multi1_n_2;
  wire bin2bcd_multi1_n_3;
  wire bin2bcd_multi1_n_4;
  wire bin2bcd_multi1_n_5;
  wire bin2bcd_multi1_n_6;
  wire bin2bcd_multi1_n_7;
  wire clk_IBUF_BUFG;
  wire clk_slow;
  wire dp0;
  wire dp_reg;
  wire [14:0]inSeg;
  wire seg3_n_0;
  wire seg3_n_1;
  wire seg3_n_2;
  wire seg3_n_3;
  wire seg3_n_4;
  wire seg3_n_5;
  wire seg3_n_6;
  wire seg4_n_0;
  wire seg4_n_1;
  wire seg4_n_2;
  wire seg4_n_3;
  wire seg4_n_4;
  wire seg4_n_5;
  wire seg4_n_6;
  wire [6:0]seg_OBUF;
  wire [3:0]sel0;

  bin2bcd_multi bin2bcd_multi1
       (.P(P),
        .Q({bin2bcd_multi1_n_0,bin2bcd_multi1_n_1,bin2bcd_multi1_n_2,bin2bcd_multi1_n_3,bin2bcd_multi1_n_4,bin2bcd_multi1_n_5,bin2bcd_multi1_n_6,bin2bcd_multi1_n_7,sel0,bin2bcd_multi1_n_12,bin2bcd_multi1_n_13,bin2bcd_multi1_n_14,bin2bcd_multi1_n_15}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  clockDivider clk_div
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_slow(clk_slow));
  displayDriver disp_driver
       (.Q({seg4_n_0,seg4_n_1,seg4_n_2,seg4_n_3,seg4_n_4,seg4_n_5,seg4_n_6}),
        .an_OBUF(an_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_slow(clk_slow),
        .dp0(dp0),
        .dp_reg(dp_reg),
        .inSeg({inSeg[14:8],inSeg[6:0]}),
        .\seg[6] ({seg3_n_0,seg3_n_1,seg3_n_2,seg3_n_3,seg3_n_4,seg3_n_5,seg3_n_6}),
        .seg_OBUF(seg_OBUF));
  seven_seg seg1
       (.Q({bin2bcd_multi1_n_12,bin2bcd_multi1_n_13,bin2bcd_multi1_n_14,bin2bcd_multi1_n_15}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\seg_reg[6]_0 (inSeg[6:0]));
  seven_seg_0 seg2
       (.Q(sel0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\seg_reg[6]_0 (inSeg[14:8]));
  seven_seg_1 seg3
       (.Q({bin2bcd_multi1_n_4,bin2bcd_multi1_n_5,bin2bcd_multi1_n_6,bin2bcd_multi1_n_7}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\seg_reg[6]_0 ({seg3_n_0,seg3_n_1,seg3_n_2,seg3_n_3,seg3_n_4,seg3_n_5,seg3_n_6}));
  seven_seg_2 seg4
       (.Q({bin2bcd_multi1_n_0,bin2bcd_multi1_n_1,bin2bcd_multi1_n_2,bin2bcd_multi1_n_3}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\seg_reg[6]_0 ({seg4_n_0,seg4_n_1,seg4_n_2,seg4_n_3,seg4_n_4,seg4_n_5,seg4_n_6}));
endmodule

module clk_divider
   (ad1_driver_divclk,
    \counter_reg[0]_0 ,
    rst_IBUF,
    clk_IBUF_BUFG,
    sclk_reg);
  output ad1_driver_divclk;
  output \counter_reg[0]_0 ;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input sclk_reg;

  wire ad1_driver_divclk;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter_reg[0]_0 ;
  wire rst_IBUF;
  wire sclk_reg;

  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(ad1_driver_divclk),
        .O(\counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(ad1_driver_divclk),
        .R(rst_IBUF));
  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    sclk_i_1
       (.I0(ad1_driver_divclk),
        .I1(sclk_reg),
        .O(\counter_reg[0]_0 ));
endmodule

module clockDivider
   (clk_slow,
    clk_IBUF_BUFG);
  output clk_slow;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire clk_slow;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire [10:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [2:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[8]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h80000000)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counter_reg[2]),
        .O(clk_slow));
  LUT4 #(
    .INIT(16'h0400)) 
    \counter[0]_i_3 
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .O(\counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \counter[0]_i_4 
       (.I0(counter_reg[10]),
        .I1(counter_reg[9]),
        .I2(counter_reg[8]),
        .I3(counter_reg[7]),
        .O(\counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_5 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(clk_slow));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(clk_slow));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(clk_slow));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(clk_slow));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO(\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[8]_i_1_O_UNCONNECTED [3],\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({1'b0,counter_reg[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(clk_slow));
endmodule

module comp_fsm
   (comp_en_0,
    metrics_ready,
    rst_IBUF,
    FSM_sequential_current_state_reg_0,
    clk_IBUF_BUFG,
    comp_en,
    mean_ready,
    Q,
    metrics_ready_reg_reg);
  output comp_en_0;
  output metrics_ready;
  input rst_IBUF;
  input FSM_sequential_current_state_reg_0;
  input clk_IBUF_BUFG;
  input comp_en;
  input mean_ready;
  input [0:0]Q;
  input metrics_ready_reg_reg;

  wire FSM_sequential_current_state_reg_0;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire comp_en;
  wire comp_en_0;
  wire mean_ready;
  wire metrics_ready;
  wire metrics_ready_reg_reg;
  wire rst_IBUF;

  (* FSM_ENCODED_STATES = "IDLE:0,COMP:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_current_state_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(FSM_sequential_current_state_reg_0),
        .Q(comp_en_0),
        .R(rst_IBUF));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    metrics_ready_reg_i_1
       (.I0(comp_en_0),
        .I1(comp_en),
        .I2(mean_ready),
        .I3(Q),
        .I4(metrics_ready_reg_reg),
        .O(metrics_ready));
endmodule

(* ORIG_REF_NAME = "comp_fsm" *) 
module comp_fsm_6
   (comp_en,
    rst_IBUF,
    FSM_sequential_current_state_reg_0,
    clk_IBUF_BUFG);
  output comp_en;
  input rst_IBUF;
  input FSM_sequential_current_state_reg_0;
  input clk_IBUF_BUFG;

  wire FSM_sequential_current_state_reg_0;
  wire clk_IBUF_BUFG;
  wire comp_en;
  wire rst_IBUF;

  (* FSM_ENCODED_STATES = "IDLE:0,COMP:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_current_state_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(FSM_sequential_current_state_reg_0),
        .Q(comp_en),
        .R(rst_IBUF));
endmodule

module displayDriver
   (dp0,
    seg_OBUF,
    an_OBUF,
    dp_reg,
    inSeg,
    Q,
    \seg[6] ,
    clk_slow,
    clk_IBUF_BUFG);
  output dp0;
  output [6:0]seg_OBUF;
  output [3:0]an_OBUF;
  input dp_reg;
  input [13:0]inSeg;
  input [6:0]Q;
  input [6:0]\seg[6] ;
  input clk_slow;
  input clk_IBUF_BUFG;

  wire [6:0]Q;
  wire [3:0]an_OBUF;
  wire clk_IBUF_BUFG;
  wire clk_slow;
  wire [1:0]displayCnt;
  wire \displayCnt[0]_i_1_n_0 ;
  wire \displayCnt[1]_i_1_n_0 ;
  wire dp0;
  wire dp_reg;
  wire [13:0]inSeg;
  wire [6:0]\seg[6] ;
  wire [6:0]seg_OBUF;

  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(displayCnt[0]),
        .I1(displayCnt[1]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(displayCnt[1]),
        .I1(displayCnt[0]),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(displayCnt[0]),
        .I1(displayCnt[1]),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(displayCnt[0]),
        .I1(displayCnt[1]),
        .O(an_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \displayCnt[0]_i_1 
       (.I0(clk_slow),
        .I1(displayCnt[0]),
        .O(\displayCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \displayCnt[1]_i_1 
       (.I0(displayCnt[0]),
        .I1(clk_slow),
        .I2(displayCnt[1]),
        .O(\displayCnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \displayCnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\displayCnt[0]_i_1_n_0 ),
        .Q(displayCnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \displayCnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\displayCnt[1]_i_1_n_0 ),
        .Q(displayCnt[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h7F)) 
    dp_i_1
       (.I0(displayCnt[1]),
        .I1(displayCnt[0]),
        .I2(dp_reg),
        .O(dp0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(inSeg[7]),
        .I1(inSeg[0]),
        .I2(Q[0]),
        .I3(displayCnt[1]),
        .I4(displayCnt[0]),
        .I5(\seg[6] [0]),
        .O(seg_OBUF[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(inSeg[8]),
        .I1(inSeg[1]),
        .I2(Q[1]),
        .I3(displayCnt[1]),
        .I4(displayCnt[0]),
        .I5(\seg[6] [1]),
        .O(seg_OBUF[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(inSeg[9]),
        .I1(inSeg[2]),
        .I2(Q[2]),
        .I3(displayCnt[1]),
        .I4(displayCnt[0]),
        .I5(\seg[6] [2]),
        .O(seg_OBUF[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(inSeg[10]),
        .I1(inSeg[3]),
        .I2(Q[3]),
        .I3(displayCnt[1]),
        .I4(displayCnt[0]),
        .I5(\seg[6] [3]),
        .O(seg_OBUF[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(inSeg[11]),
        .I1(inSeg[4]),
        .I2(Q[4]),
        .I3(displayCnt[1]),
        .I4(displayCnt[0]),
        .I5(\seg[6] [4]),
        .O(seg_OBUF[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(inSeg[12]),
        .I1(inSeg[5]),
        .I2(Q[5]),
        .I3(displayCnt[1]),
        .I4(displayCnt[0]),
        .I5(\seg[6] [5]),
        .O(seg_OBUF[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(inSeg[13]),
        .I1(inSeg[6]),
        .I2(Q[6]),
        .I3(displayCnt[1]),
        .I4(displayCnt[0]),
        .I5(\seg[6] [6]),
        .O(seg_OBUF[6]));
endmodule

module display_fsm
   (FSM_sequential_current_state_reg_0,
    FSM_sequential_current_state_reg_1,
    rst_IBUF,
    clk_IBUF_BUFG,
    FSM_sequential_current_state_reg_2,
    FSM_sequential_current_state_reg_3,
    start_acquisition_reg,
    start_IBUF);
  output FSM_sequential_current_state_reg_0;
  output FSM_sequential_current_state_reg_1;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input FSM_sequential_current_state_reg_2;
  input FSM_sequential_current_state_reg_3;
  input start_acquisition_reg;
  input start_IBUF;

  wire FSM_sequential_current_state_i_1_n_0;
  wire FSM_sequential_current_state_reg_0;
  wire FSM_sequential_current_state_reg_1;
  wire FSM_sequential_current_state_reg_2;
  wire FSM_sequential_current_state_reg_3;
  wire clk_IBUF_BUFG;
  wire rst_IBUF;
  wire start_IBUF;
  wire start_acquisition_reg;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h70778888)) 
    FSM_sequential_current_state_i_1
       (.I0(FSM_sequential_current_state_reg_2),
        .I1(FSM_sequential_current_state_reg_3),
        .I2(start_acquisition_reg),
        .I3(start_IBUF),
        .I4(FSM_sequential_current_state_reg_0),
        .O(FSM_sequential_current_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDLE:0,DISPLAY:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_current_state_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(FSM_sequential_current_state_i_1_n_0),
        .Q(FSM_sequential_current_state_reg_0),
        .R(rst_IBUF));
  LUT2 #(
    .INIT(4'hB)) 
    metric_scaled_reg_reg_i_1
       (.I0(rst_IBUF),
        .I1(FSM_sequential_current_state_reg_0),
        .O(FSM_sequential_current_state_reg_1));
endmodule

module div_lut
   (S,
    Q,
    div_data0__0_carry,
    rst_IBUF,
    D,
    clk_IBUF_BUFG);
  output [2:0]S;
  output [2:0]Q;
  input [2:0]div_data0__0_carry;
  input rst_IBUF;
  input [2:0]D;
  input clk_IBUF_BUFG;

  wire [2:0]D;
  wire [2:0]Q;
  wire [2:0]S;
  wire clk_IBUF_BUFG;
  wire [2:0]div_data0__0_carry;
  wire rst_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry_i_5
       (.I0(Q[2]),
        .I1(div_data0__0_carry[0]),
        .I2(Q[1]),
        .I3(div_data0__0_carry[1]),
        .I4(Q[0]),
        .I5(div_data0__0_carry[2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h7888)) 
    div_data0__0_carry_i_6
       (.I0(Q[0]),
        .I1(div_data0__0_carry[1]),
        .I2(div_data0__0_carry[0]),
        .I3(Q[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    div_data0__0_carry_i_7
       (.I0(Q[0]),
        .I1(div_data0__0_carry[0]),
        .O(S[0]));
endmodule

module max
   (data0_q2_12_reg,
    comp_en,
    \max_reg_reg[13]_0 ,
    DI,
    S,
    \max_reg_reg[0]_0 ,
    \max_reg_reg[0]_1 ,
    rst_IBUF,
    FSM_sequential_current_state_reg,
    clk_IBUF_BUFG,
    E,
    D);
  output [0:0]data0_q2_12_reg;
  output comp_en;
  output [13:0]\max_reg_reg[13]_0 ;
  input [3:0]DI;
  input [3:0]S;
  input [2:0]\max_reg_reg[0]_0 ;
  input [2:0]\max_reg_reg[0]_1 ;
  input rst_IBUF;
  input FSM_sequential_current_state_reg;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input [13:0]D;

  wire [13:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire FSM_sequential_current_state_reg;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire comp_en;
  wire [0:0]data0_q2_12_reg;
  wire max_reg1_carry_n_0;
  wire [2:0]\max_reg_reg[0]_0 ;
  wire [2:0]\max_reg_reg[0]_1 ;
  wire [13:0]\max_reg_reg[13]_0 ;
  wire rst_IBUF;
  wire [2:0]NLW_max_reg1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_max_reg1_carry_O_UNCONNECTED;
  wire [3:0]NLW_max_reg1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_max_reg1_carry__0_O_UNCONNECTED;

  comp_fsm_6 max_fsm
       (.FSM_sequential_current_state_reg_0(FSM_sequential_current_state_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .comp_en(comp_en),
        .rst_IBUF(rst_IBUF));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 max_reg1_carry
       (.CI(1'b0),
        .CO({max_reg1_carry_n_0,NLW_max_reg1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_max_reg1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 max_reg1_carry__0
       (.CI(max_reg1_carry_n_0),
        .CO({NLW_max_reg1_carry__0_CO_UNCONNECTED[3],data0_q2_12_reg,NLW_max_reg1_carry__0_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\max_reg_reg[0]_0 }),
        .O(NLW_max_reg1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,\max_reg_reg[0]_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(\max_reg_reg[13]_0 [0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[10]),
        .Q(\max_reg_reg[13]_0 [10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[11]),
        .Q(\max_reg_reg[13]_0 [11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[12]),
        .Q(\max_reg_reg[13]_0 [12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[13]),
        .Q(\max_reg_reg[13]_0 [13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(\max_reg_reg[13]_0 [1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(\max_reg_reg[13]_0 [2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(\max_reg_reg[13]_0 [3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(\max_reg_reg[13]_0 [4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(\max_reg_reg[13]_0 [5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(\max_reg_reg[13]_0 [6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(\max_reg_reg[13]_0 [7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[8]),
        .Q(\max_reg_reg[13]_0 [8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[9]),
        .Q(\max_reg_reg[13]_0 [9]),
        .R(rst_IBUF));
endmodule

module mean
   (\acc_data_in_reg_reg[11]_0 ,
    \div_data_reg_reg[13]_0 ,
    \div_data0[-1111111109]_0 ,
    mean_ready,
    clk_IBUF_BUFG,
    rst_IBUF,
    DOADO,
    O,
    \acc_data_in_reg_reg[7]_0 ,
    \acc_data_in_reg_reg[11]_1 ,
    S,
    CO,
    P,
    metric_sel_IBUF,
    Q,
    metric_scaled_reg_reg,
    div_data0__0_carry__0_0,
    scale_pipe_fsm_ready_reg,
    \FSM_onehot_current_state_reg[1] ,
    last_sample_reg,
    div_data0_0,
    current_state,
    div_data0_1);
  output [11:0]\acc_data_in_reg_reg[11]_0 ;
  output [13:0]\div_data_reg_reg[13]_0 ;
  output [2:0]\div_data0[-1111111109]_0 ;
  output mean_ready;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input [16:0]DOADO;
  input [3:0]O;
  input [3:0]\acc_data_in_reg_reg[7]_0 ;
  input [3:0]\acc_data_in_reg_reg[11]_1 ;
  input [2:0]S;
  input [0:0]CO;
  input [13:0]P;
  input [1:0]metric_sel_IBUF;
  input [13:0]Q;
  input [13:0]metric_scaled_reg_reg;
  input [2:0]div_data0__0_carry__0_0;
  input scale_pipe_fsm_ready_reg;
  input \FSM_onehot_current_state_reg[1] ;
  input last_sample_reg;
  input [11:0]div_data0_0;
  input [1:0]current_state;
  input [11:0]div_data0_1;

  wire [0:0]CO;
  wire [16:0]DOADO;
  wire \FSM_onehot_current_state_reg[1] ;
  wire [3:0]O;
  wire [13:0]P;
  wire [13:0]Q;
  wire [2:0]S;
  wire [21:12]acc_data_in_reg_reg;
  wire [11:0]\acc_data_in_reg_reg[11]_0 ;
  wire [3:0]\acc_data_in_reg_reg[11]_1 ;
  wire \acc_data_in_reg_reg[12]_i_1_n_0 ;
  wire \acc_data_in_reg_reg[12]_i_1_n_4 ;
  wire \acc_data_in_reg_reg[12]_i_1_n_5 ;
  wire \acc_data_in_reg_reg[12]_i_1_n_6 ;
  wire \acc_data_in_reg_reg[12]_i_1_n_7 ;
  wire \acc_data_in_reg_reg[16]_i_1_n_0 ;
  wire \acc_data_in_reg_reg[16]_i_1_n_4 ;
  wire \acc_data_in_reg_reg[16]_i_1_n_5 ;
  wire \acc_data_in_reg_reg[16]_i_1_n_6 ;
  wire \acc_data_in_reg_reg[16]_i_1_n_7 ;
  wire \acc_data_in_reg_reg[20]_i_1_n_6 ;
  wire \acc_data_in_reg_reg[20]_i_1_n_7 ;
  wire [3:0]\acc_data_in_reg_reg[7]_0 ;
  wire acc_en;
  wire clk_IBUF_BUFG;
  wire [1:0]current_state;
  wire [13:0]div_data;
  wire \div_data0[-1111111097]_i_2_n_0 ;
  wire \div_data0[-1111111097]_i_2_n_4 ;
  wire \div_data0[-1111111097]_i_2_n_5 ;
  wire \div_data0[-1111111097]_i_2_n_6 ;
  wire \div_data0[-1111111097]_i_2_n_7 ;
  wire \div_data0[-1111111100]_i_1_n_0 ;
  wire \div_data0[-1111111100]_i_1_n_4 ;
  wire \div_data0[-1111111100]_i_1_n_5 ;
  wire \div_data0[-1111111100]_i_1_n_6 ;
  wire \div_data0[-1111111100]_i_1_n_7 ;
  wire \div_data0[-1111111100]_i_2_n_0 ;
  wire \div_data0[-1111111100]_i_3_n_0 ;
  wire \div_data0[-1111111100]_i_4_n_0 ;
  wire \div_data0[-1111111100]_i_5_n_0 ;
  wire \div_data0[-1111111104]_i_1_n_0 ;
  wire \div_data0[-1111111104]_i_1_n_4 ;
  wire \div_data0[-1111111104]_i_1_n_5 ;
  wire \div_data0[-1111111104]_i_1_n_6 ;
  wire \div_data0[-1111111104]_i_1_n_7 ;
  wire \div_data0[-1111111104]_i_2_n_0 ;
  wire \div_data0[-1111111104]_i_3_n_0 ;
  wire \div_data0[-1111111104]_i_4_n_0 ;
  wire \div_data0[-1111111104]_i_5_n_0 ;
  wire \div_data0[-1111111108]_i_1_n_0 ;
  wire \div_data0[-1111111108]_i_1_n_4 ;
  wire \div_data0[-1111111108]_i_1_n_5 ;
  wire \div_data0[-1111111108]_i_1_n_6 ;
  wire \div_data0[-1111111108]_i_1_n_7 ;
  wire \div_data0[-1111111108]_i_2_n_0 ;
  wire \div_data0[-1111111108]_i_3_n_0 ;
  wire \div_data0[-1111111108]_i_4_n_0 ;
  wire \div_data0[-1111111108]_i_5_n_0 ;
  wire [2:0]\div_data0[-1111111109]_0 ;
  wire \div_data0[-_n_0_1111111097] ;
  wire \div_data0[-_n_0_1111111098] ;
  wire \div_data0[-_n_0_1111111099] ;
  wire \div_data0[-_n_0_1111111100] ;
  wire \div_data0[-_n_0_1111111101] ;
  wire \div_data0[-_n_0_1111111102] ;
  wire \div_data0[-_n_0_1111111103] ;
  wire \div_data0[-_n_0_1111111104] ;
  wire \div_data0[-_n_0_1111111105] ;
  wire \div_data0[-_n_0_1111111106] ;
  wire \div_data0[-_n_0_1111111107] ;
  wire \div_data0[-_n_0_1111111108] ;
  wire [11:0]div_data0_0;
  wire [11:0]div_data0_1;
  wire [12:0]div_data0__0;
  wire [2:0]div_data0__0_carry__0_0;
  wire div_data0__0_carry__0_i_10_n_0;
  wire div_data0__0_carry__0_i_11_n_0;
  wire div_data0__0_carry__0_i_12_n_0;
  wire div_data0__0_carry__0_i_1_n_0;
  wire div_data0__0_carry__0_i_2_n_0;
  wire div_data0__0_carry__0_i_3_n_0;
  wire div_data0__0_carry__0_i_4_n_0;
  wire div_data0__0_carry__0_i_5_n_0;
  wire div_data0__0_carry__0_i_6_n_0;
  wire div_data0__0_carry__0_i_7_n_0;
  wire div_data0__0_carry__0_i_8_n_0;
  wire div_data0__0_carry__0_i_9_n_0;
  wire div_data0__0_carry__0_n_0;
  wire div_data0__0_carry__1_i_10_n_0;
  wire div_data0__0_carry__1_i_11_n_0;
  wire div_data0__0_carry__1_i_12_n_0;
  wire div_data0__0_carry__1_i_1_n_0;
  wire div_data0__0_carry__1_i_2_n_0;
  wire div_data0__0_carry__1_i_3_n_0;
  wire div_data0__0_carry__1_i_4_n_0;
  wire div_data0__0_carry__1_i_5_n_0;
  wire div_data0__0_carry__1_i_6_n_0;
  wire div_data0__0_carry__1_i_7_n_0;
  wire div_data0__0_carry__1_i_8_n_0;
  wire div_data0__0_carry__1_i_9_n_0;
  wire div_data0__0_carry__1_n_0;
  wire div_data0__0_carry__2_i_1_n_0;
  wire div_data0__0_carry__2_i_2_n_0;
  wire div_data0__0_carry__2_i_3_n_0;
  wire div_data0__0_carry__2_i_4_n_0;
  wire div_data0__0_carry__2_i_5_n_0;
  wire div_data0__0_carry__2_i_6_n_0;
  wire div_data0__0_carry__2_i_7_n_0;
  wire div_data0__0_carry__2_i_8_n_0;
  wire div_data0__0_carry__2_i_9_n_0;
  wire div_data0__0_carry__2_n_5;
  wire div_data0__0_carry__2_n_6;
  wire div_data0__0_carry_i_1_n_0;
  wire div_data0__0_carry_i_2_n_0;
  wire div_data0__0_carry_i_3_n_0;
  wire div_data0__0_carry_i_4_n_0;
  wire div_data0__0_carry_n_0;
  wire div_data0_i_1_n_6;
  wire div_data0_i_1_n_7;
  wire div_data0_i_2_n_0;
  wire div_data0_i_2_n_4;
  wire div_data0_i_2_n_5;
  wire div_data0_i_2_n_6;
  wire div_data0_i_2_n_7;
  wire \div_data0_inferred__0/i__carry__0_n_0 ;
  wire \div_data0_inferred__0/i__carry__1_n_0 ;
  wire \div_data0_inferred__0/i__carry_n_0 ;
  wire div_data0_n_74;
  wire div_data0_n_75;
  wire div_data0_n_76;
  wire div_data0_n_77;
  wire div_data0_n_78;
  wire div_data0_n_79;
  wire div_data0_n_80;
  wire div_data0_n_81;
  wire div_data0_n_82;
  wire div_data0_n_83;
  wire div_data0_n_84;
  wire div_data0_n_85;
  wire div_data0_n_86;
  wire div_data0_n_87;
  wire div_data0_n_88;
  wire [13:0]div_data_reg;
  wire [13:0]\div_data_reg_reg[13]_0 ;
  wire div_en;
  wire fsm_mean_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire last_sample_reg;
  wire mean_ready;
  wire [13:0]metric_scaled_reg_reg;
  wire [1:0]metric_sel_IBUF;
  wire rst_IBUF;
  wire scale_pipe_fsm_ready_reg;
  wire [2:0]\NLW_acc_data_in_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_data_in_reg_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_acc_data_in_reg_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_data_in_reg_reg[20]_i_1_O_UNCONNECTED ;
  wire NLW_div_data0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_div_data0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_div_data0_OVERFLOW_UNCONNECTED;
  wire NLW_div_data0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_div_data0_PATTERNDETECT_UNCONNECTED;
  wire NLW_div_data0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_div_data0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_div_data0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_div_data0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_div_data0_P_UNCONNECTED;
  wire [47:0]NLW_div_data0_PCOUT_UNCONNECTED;
  wire [2:0]\NLW_div_data0[-1111111097]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_div_data0[-1111111100]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_div_data0[-1111111104]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_div_data0[-1111111108]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_div_data0__0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_div_data0__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_div_data0__0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_div_data0__0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_div_data0__0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_div_data0_i_1_CO_UNCONNECTED;
  wire [3:2]NLW_div_data0_i_1_O_UNCONNECTED;
  wire [2:0]NLW_div_data0_i_2_CO_UNCONNECTED;
  wire [2:0]\NLW_div_data0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [0:0]\NLW_div_data0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_div_data0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_div_data0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_div_data0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_div_data0_inferred__0/i__carry__2_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(O[0]),
        .Q(\acc_data_in_reg_reg[11]_0 [0]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[11]_1 [2]),
        .Q(\acc_data_in_reg_reg[11]_0 [10]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[11]_1 [3]),
        .Q(\acc_data_in_reg_reg[11]_0 [11]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[12]_i_1_n_7 ),
        .Q(acc_data_in_reg_reg[12]),
        .R(fsm_mean_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_data_in_reg_reg[12]_i_1 
       (.CI(CO),
        .CO({\acc_data_in_reg_reg[12]_i_1_n_0 ,\NLW_acc_data_in_reg_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\acc_data_in_reg_reg[12]_i_1_n_4 ,\acc_data_in_reg_reg[12]_i_1_n_5 ,\acc_data_in_reg_reg[12]_i_1_n_6 ,\acc_data_in_reg_reg[12]_i_1_n_7 }),
        .S(acc_data_in_reg_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[12]_i_1_n_6 ),
        .Q(acc_data_in_reg_reg[13]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[12]_i_1_n_5 ),
        .Q(acc_data_in_reg_reg[14]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[12]_i_1_n_4 ),
        .Q(acc_data_in_reg_reg[15]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[16]_i_1_n_7 ),
        .Q(acc_data_in_reg_reg[16]),
        .R(fsm_mean_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_data_in_reg_reg[16]_i_1 
       (.CI(\acc_data_in_reg_reg[12]_i_1_n_0 ),
        .CO({\acc_data_in_reg_reg[16]_i_1_n_0 ,\NLW_acc_data_in_reg_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\acc_data_in_reg_reg[16]_i_1_n_4 ,\acc_data_in_reg_reg[16]_i_1_n_5 ,\acc_data_in_reg_reg[16]_i_1_n_6 ,\acc_data_in_reg_reg[16]_i_1_n_7 }),
        .S(acc_data_in_reg_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[16]_i_1_n_6 ),
        .Q(acc_data_in_reg_reg[17]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[16]_i_1_n_5 ),
        .Q(acc_data_in_reg_reg[18]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[16]_i_1_n_4 ),
        .Q(acc_data_in_reg_reg[19]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(O[1]),
        .Q(\acc_data_in_reg_reg[11]_0 [1]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[20]_i_1_n_7 ),
        .Q(acc_data_in_reg_reg[20]),
        .R(fsm_mean_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_data_in_reg_reg[20]_i_1 
       (.CI(\acc_data_in_reg_reg[16]_i_1_n_0 ),
        .CO(\NLW_acc_data_in_reg_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_acc_data_in_reg_reg[20]_i_1_O_UNCONNECTED [3:2],\acc_data_in_reg_reg[20]_i_1_n_6 ,\acc_data_in_reg_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,acc_data_in_reg_reg[21:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[20]_i_1_n_6 ),
        .Q(acc_data_in_reg_reg[21]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(O[2]),
        .Q(\acc_data_in_reg_reg[11]_0 [2]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(O[3]),
        .Q(\acc_data_in_reg_reg[11]_0 [3]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[7]_0 [0]),
        .Q(\acc_data_in_reg_reg[11]_0 [4]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[7]_0 [1]),
        .Q(\acc_data_in_reg_reg[11]_0 [5]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[7]_0 [2]),
        .Q(\acc_data_in_reg_reg[11]_0 [6]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[7]_0 [3]),
        .Q(\acc_data_in_reg_reg[11]_0 [7]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[11]_1 [0]),
        .Q(\acc_data_in_reg_reg[11]_0 [8]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_data_in_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_data_in_reg_reg[11]_1 [1]),
        .Q(\acc_data_in_reg_reg[11]_0 [9]),
        .R(fsm_mean_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    div_data0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,div_data0_i_1_n_6,div_data0_i_1_n_7,div_data0_i_2_n_4,div_data0_i_2_n_5,div_data0_i_2_n_6,div_data0_i_2_n_7,\div_data0[-1111111097]_i_2_n_4 ,\div_data0[-1111111097]_i_2_n_5 ,\div_data0[-1111111097]_i_2_n_6 ,\div_data0[-1111111097]_i_2_n_7 ,\div_data0[-1111111100]_i_1_n_4 ,\div_data0[-1111111100]_i_1_n_5 ,\div_data0[-1111111100]_i_1_n_6 ,\div_data0[-1111111100]_i_1_n_7 ,\div_data0[-1111111104]_i_1_n_4 ,\div_data0[-1111111104]_i_1_n_5 ,\div_data0[-1111111104]_i_1_n_6 ,\div_data0[-1111111104]_i_1_n_7 ,\div_data0[-1111111108]_i_1_n_4 ,\div_data0[-1111111108]_i_1_n_5 ,\div_data0[-1111111108]_i_1_n_6 ,\div_data0[-1111111108]_i_1_n_7 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_div_data0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,DOADO}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_div_data0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_div_data0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_div_data0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(acc_en),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_div_data0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_div_data0_OVERFLOW_UNCONNECTED),
        .P({NLW_div_data0_P_UNCONNECTED[47:32],div_data0_n_74,div_data0_n_75,div_data0_n_76,div_data0_n_77,div_data0_n_78,div_data0_n_79,div_data0_n_80,div_data0_n_81,div_data0_n_82,div_data0_n_83,div_data0_n_84,div_data0_n_85,div_data0_n_86,div_data0_n_87,div_data0_n_88,NLW_div_data0_P_UNCONNECTED[16:0]}),
        .PATTERNBDETECT(NLW_div_data0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_div_data0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_div_data0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(fsm_mean_n_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_IBUF),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_div_data0_UNDERFLOW_UNCONNECTED));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111097] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111097]_i_2_n_5 ),
        .Q(\div_data0[-_n_0_1111111097] ),
        .R(fsm_mean_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \div_data0[-1111111097]_i_2 
       (.CI(\div_data0[-1111111100]_i_1_n_0 ),
        .CO({\div_data0[-1111111097]_i_2_n_0 ,\NLW_div_data0[-1111111097]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\div_data0[-1111111097]_i_2_n_4 ,\div_data0[-1111111097]_i_2_n_5 ,\div_data0[-1111111097]_i_2_n_6 ,\div_data0[-1111111097]_i_2_n_7 }),
        .S(acc_data_in_reg_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111098] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111097]_i_2_n_6 ),
        .Q(\div_data0[-_n_0_1111111098] ),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111099] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111097]_i_2_n_7 ),
        .Q(\div_data0[-_n_0_1111111099] ),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111100] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111100]_i_1_n_4 ),
        .Q(\div_data0[-_n_0_1111111100] ),
        .R(fsm_mean_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \div_data0[-1111111100]_i_1 
       (.CI(\div_data0[-1111111104]_i_1_n_0 ),
        .CO({\div_data0[-1111111100]_i_1_n_0 ,\NLW_div_data0[-1111111100]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\acc_data_in_reg_reg[11]_0 [11:8]),
        .O({\div_data0[-1111111100]_i_1_n_4 ,\div_data0[-1111111100]_i_1_n_5 ,\div_data0[-1111111100]_i_1_n_6 ,\div_data0[-1111111100]_i_1_n_7 }),
        .S({\div_data0[-1111111100]_i_2_n_0 ,\div_data0[-1111111100]_i_3_n_0 ,\div_data0[-1111111100]_i_4_n_0 ,\div_data0[-1111111100]_i_5_n_0 }));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111100]_i_2 
       (.I0(\acc_data_in_reg_reg[11]_0 [11]),
        .I1(div_data0_0[11]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[11]),
        .O(\div_data0[-1111111100]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111100]_i_3 
       (.I0(\acc_data_in_reg_reg[11]_0 [10]),
        .I1(div_data0_0[10]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[10]),
        .O(\div_data0[-1111111100]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111100]_i_4 
       (.I0(\acc_data_in_reg_reg[11]_0 [9]),
        .I1(div_data0_0[9]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[9]),
        .O(\div_data0[-1111111100]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111100]_i_5 
       (.I0(\acc_data_in_reg_reg[11]_0 [8]),
        .I1(div_data0_0[8]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[8]),
        .O(\div_data0[-1111111100]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111101] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111100]_i_1_n_5 ),
        .Q(\div_data0[-_n_0_1111111101] ),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111102] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111100]_i_1_n_6 ),
        .Q(\div_data0[-_n_0_1111111102] ),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111103] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111100]_i_1_n_7 ),
        .Q(\div_data0[-_n_0_1111111103] ),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111104] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111104]_i_1_n_4 ),
        .Q(\div_data0[-_n_0_1111111104] ),
        .R(fsm_mean_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \div_data0[-1111111104]_i_1 
       (.CI(\div_data0[-1111111108]_i_1_n_0 ),
        .CO({\div_data0[-1111111104]_i_1_n_0 ,\NLW_div_data0[-1111111104]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\acc_data_in_reg_reg[11]_0 [7:4]),
        .O({\div_data0[-1111111104]_i_1_n_4 ,\div_data0[-1111111104]_i_1_n_5 ,\div_data0[-1111111104]_i_1_n_6 ,\div_data0[-1111111104]_i_1_n_7 }),
        .S({\div_data0[-1111111104]_i_2_n_0 ,\div_data0[-1111111104]_i_3_n_0 ,\div_data0[-1111111104]_i_4_n_0 ,\div_data0[-1111111104]_i_5_n_0 }));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111104]_i_2 
       (.I0(\acc_data_in_reg_reg[11]_0 [7]),
        .I1(div_data0_0[7]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[7]),
        .O(\div_data0[-1111111104]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111104]_i_3 
       (.I0(\acc_data_in_reg_reg[11]_0 [6]),
        .I1(div_data0_0[6]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[6]),
        .O(\div_data0[-1111111104]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111104]_i_4 
       (.I0(\acc_data_in_reg_reg[11]_0 [5]),
        .I1(div_data0_0[5]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[5]),
        .O(\div_data0[-1111111104]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111104]_i_5 
       (.I0(\acc_data_in_reg_reg[11]_0 [4]),
        .I1(div_data0_0[4]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[4]),
        .O(\div_data0[-1111111104]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111105] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111104]_i_1_n_5 ),
        .Q(\div_data0[-_n_0_1111111105] ),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111106] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111104]_i_1_n_6 ),
        .Q(\div_data0[-_n_0_1111111106] ),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111107] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111104]_i_1_n_7 ),
        .Q(\div_data0[-_n_0_1111111107] ),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111108] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111108]_i_1_n_4 ),
        .Q(\div_data0[-_n_0_1111111108] ),
        .R(fsm_mean_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \div_data0[-1111111108]_i_1 
       (.CI(1'b0),
        .CO({\div_data0[-1111111108]_i_1_n_0 ,\NLW_div_data0[-1111111108]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\acc_data_in_reg_reg[11]_0 [3:0]),
        .O({\div_data0[-1111111108]_i_1_n_4 ,\div_data0[-1111111108]_i_1_n_5 ,\div_data0[-1111111108]_i_1_n_6 ,\div_data0[-1111111108]_i_1_n_7 }),
        .S({\div_data0[-1111111108]_i_2_n_0 ,\div_data0[-1111111108]_i_3_n_0 ,\div_data0[-1111111108]_i_4_n_0 ,\div_data0[-1111111108]_i_5_n_0 }));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111108]_i_2 
       (.I0(\acc_data_in_reg_reg[11]_0 [3]),
        .I1(div_data0_0[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[3]),
        .O(\div_data0[-1111111108]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111108]_i_3 
       (.I0(\acc_data_in_reg_reg[11]_0 [2]),
        .I1(div_data0_0[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[2]),
        .O(\div_data0[-1111111108]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111108]_i_4 
       (.I0(\acc_data_in_reg_reg[11]_0 [1]),
        .I1(div_data0_0[1]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[1]),
        .O(\div_data0[-1111111108]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h65666A66)) 
    \div_data0[-1111111108]_i_5 
       (.I0(\acc_data_in_reg_reg[11]_0 [0]),
        .I1(div_data0_0[0]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(div_data0_1[0]),
        .O(\div_data0[-1111111108]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111109] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111108]_i_1_n_5 ),
        .Q(\div_data0[-1111111109]_0 [2]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111110] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111108]_i_1_n_6 ),
        .Q(\div_data0[-1111111109]_0 [1]),
        .R(fsm_mean_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \div_data0[-1111111111] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\div_data0[-1111111108]_i_1_n_7 ),
        .Q(\div_data0[-1111111109]_0 [0]),
        .R(fsm_mean_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 div_data0__0_carry
       (.CI(1'b0),
        .CO({div_data0__0_carry_n_0,NLW_div_data0__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({div_data0__0_carry_i_1_n_0,div_data0__0_carry_i_2_n_0,div_data0__0_carry_i_3_n_0,1'b0}),
        .O(div_data0__0[3:0]),
        .S({div_data0__0_carry_i_4_n_0,S}));
  CARRY4 div_data0__0_carry__0
       (.CI(div_data0__0_carry_n_0),
        .CO({div_data0__0_carry__0_n_0,NLW_div_data0__0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({div_data0__0_carry__0_i_1_n_0,div_data0__0_carry__0_i_2_n_0,div_data0__0_carry__0_i_3_n_0,div_data0__0_carry__0_i_4_n_0}),
        .O(div_data0__0[7:4]),
        .S({div_data0__0_carry__0_i_5_n_0,div_data0__0_carry__0_i_6_n_0,div_data0__0_carry__0_i_7_n_0,div_data0__0_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    div_data0__0_carry__0_i_1
       (.I0(\div_data0[-_n_0_1111111105] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(\div_data0[-_n_0_1111111107] ),
        .I3(div_data0__0_carry__0_0[2]),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-_n_0_1111111106] ),
        .O(div_data0__0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry__0_i_10
       (.I0(\div_data0[-_n_0_1111111105] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__0_0[1]),
        .I3(\div_data0[-_n_0_1111111106] ),
        .I4(div_data0__0_carry__0_0[2]),
        .I5(\div_data0[-_n_0_1111111107] ),
        .O(div_data0__0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry__0_i_11
       (.I0(\div_data0[-_n_0_1111111106] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__0_0[1]),
        .I3(\div_data0[-_n_0_1111111107] ),
        .I4(div_data0__0_carry__0_0[2]),
        .I5(\div_data0[-_n_0_1111111108] ),
        .O(div_data0__0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry__0_i_12
       (.I0(\div_data0[-_n_0_1111111107] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__0_0[1]),
        .I3(\div_data0[-_n_0_1111111108] ),
        .I4(div_data0__0_carry__0_0[2]),
        .I5(\div_data0[-1111111109]_0 [2]),
        .O(div_data0__0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    div_data0__0_carry__0_i_2
       (.I0(\div_data0[-_n_0_1111111106] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(\div_data0[-_n_0_1111111108] ),
        .I3(div_data0__0_carry__0_0[2]),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-_n_0_1111111107] ),
        .O(div_data0__0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    div_data0__0_carry__0_i_3
       (.I0(\div_data0[-_n_0_1111111107] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(\div_data0[-1111111109]_0 [2]),
        .I3(div_data0__0_carry__0_0[2]),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-_n_0_1111111108] ),
        .O(div_data0__0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hF880880080800000)) 
    div_data0__0_carry__0_i_4
       (.I0(\div_data0[-_n_0_1111111108] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(\div_data0[-1111111109]_0 [2]),
        .I3(div_data0__0_carry__0_0[2]),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-1111111109]_0 [1]),
        .O(div_data0__0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_data0__0_carry__0_i_5
       (.I0(div_data0__0_carry__0_i_1_n_0),
        .I1(div_data0__0_carry__0_i_9_n_0),
        .O(div_data0__0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_data0__0_carry__0_i_6
       (.I0(div_data0__0_carry__0_i_2_n_0),
        .I1(div_data0__0_carry__0_i_10_n_0),
        .O(div_data0__0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_data0__0_carry__0_i_7
       (.I0(div_data0__0_carry__0_i_3_n_0),
        .I1(div_data0__0_carry__0_i_11_n_0),
        .O(div_data0__0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_data0__0_carry__0_i_8
       (.I0(div_data0__0_carry__0_i_4_n_0),
        .I1(div_data0__0_carry__0_i_12_n_0),
        .O(div_data0__0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry__0_i_9
       (.I0(\div_data0[-_n_0_1111111104] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__0_0[1]),
        .I3(\div_data0[-_n_0_1111111105] ),
        .I4(div_data0__0_carry__0_0[2]),
        .I5(\div_data0[-_n_0_1111111106] ),
        .O(div_data0__0_carry__0_i_9_n_0));
  CARRY4 div_data0__0_carry__1
       (.CI(div_data0__0_carry__0_n_0),
        .CO({div_data0__0_carry__1_n_0,NLW_div_data0__0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({div_data0__0_carry__1_i_1_n_0,div_data0__0_carry__1_i_2_n_0,div_data0__0_carry__1_i_3_n_0,div_data0__0_carry__1_i_4_n_0}),
        .O(div_data0__0[11:8]),
        .S({div_data0__0_carry__1_i_5_n_0,div_data0__0_carry__1_i_6_n_0,div_data0__0_carry__1_i_7_n_0,div_data0__0_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    div_data0__0_carry__1_i_1
       (.I0(\div_data0[-_n_0_1111111101] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(\div_data0[-_n_0_1111111103] ),
        .I3(div_data0__0_carry__0_0[2]),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-_n_0_1111111102] ),
        .O(div_data0__0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry__1_i_10
       (.I0(\div_data0[-_n_0_1111111101] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__0_0[1]),
        .I3(\div_data0[-_n_0_1111111102] ),
        .I4(div_data0__0_carry__0_0[2]),
        .I5(\div_data0[-_n_0_1111111103] ),
        .O(div_data0__0_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry__1_i_11
       (.I0(\div_data0[-_n_0_1111111102] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__0_0[1]),
        .I3(\div_data0[-_n_0_1111111103] ),
        .I4(div_data0__0_carry__0_0[2]),
        .I5(\div_data0[-_n_0_1111111104] ),
        .O(div_data0__0_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry__1_i_12
       (.I0(\div_data0[-_n_0_1111111103] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__0_0[1]),
        .I3(\div_data0[-_n_0_1111111104] ),
        .I4(div_data0__0_carry__0_0[2]),
        .I5(\div_data0[-_n_0_1111111105] ),
        .O(div_data0__0_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    div_data0__0_carry__1_i_2
       (.I0(\div_data0[-_n_0_1111111102] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(\div_data0[-_n_0_1111111104] ),
        .I3(div_data0__0_carry__0_0[2]),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-_n_0_1111111103] ),
        .O(div_data0__0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    div_data0__0_carry__1_i_3
       (.I0(\div_data0[-_n_0_1111111103] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(\div_data0[-_n_0_1111111105] ),
        .I3(div_data0__0_carry__0_0[2]),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-_n_0_1111111104] ),
        .O(div_data0__0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    div_data0__0_carry__1_i_4
       (.I0(\div_data0[-_n_0_1111111104] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(\div_data0[-_n_0_1111111106] ),
        .I3(div_data0__0_carry__0_0[2]),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-_n_0_1111111105] ),
        .O(div_data0__0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_data0__0_carry__1_i_5
       (.I0(div_data0__0_carry__1_i_1_n_0),
        .I1(div_data0__0_carry__1_i_9_n_0),
        .O(div_data0__0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_data0__0_carry__1_i_6
       (.I0(div_data0__0_carry__1_i_2_n_0),
        .I1(div_data0__0_carry__1_i_10_n_0),
        .O(div_data0__0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_data0__0_carry__1_i_7
       (.I0(div_data0__0_carry__1_i_3_n_0),
        .I1(div_data0__0_carry__1_i_11_n_0),
        .O(div_data0__0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_data0__0_carry__1_i_8
       (.I0(div_data0__0_carry__1_i_4_n_0),
        .I1(div_data0__0_carry__1_i_12_n_0),
        .O(div_data0__0_carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry__1_i_9
       (.I0(\div_data0[-_n_0_1111111100] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__0_0[1]),
        .I3(\div_data0[-_n_0_1111111101] ),
        .I4(div_data0__0_carry__0_0[2]),
        .I5(\div_data0[-_n_0_1111111102] ),
        .O(div_data0__0_carry__1_i_9_n_0));
  CARRY4 div_data0__0_carry__2
       (.CI(div_data0__0_carry__1_n_0),
        .CO(NLW_div_data0__0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,div_data0__0_carry__2_i_1_n_0,div_data0__0_carry__2_i_2_n_0}),
        .O({NLW_div_data0__0_carry__2_O_UNCONNECTED[3],div_data0__0_carry__2_n_5,div_data0__0_carry__2_n_6,div_data0__0[12]}),
        .S({1'b0,div_data0__0_carry__2_i_3_n_0,div_data0__0_carry__2_i_4_n_0,div_data0__0_carry__2_i_5_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    div_data0__0_carry__2_i_1
       (.I0(\div_data0[-_n_0_1111111099] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(\div_data0[-_n_0_1111111101] ),
        .I3(div_data0__0_carry__0_0[2]),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-_n_0_1111111100] ),
        .O(div_data0__0_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    div_data0__0_carry__2_i_2
       (.I0(\div_data0[-_n_0_1111111100] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(\div_data0[-_n_0_1111111102] ),
        .I3(div_data0__0_carry__0_0[2]),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-_n_0_1111111101] ),
        .O(div_data0__0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    div_data0__0_carry__2_i_3
       (.I0(div_data0__0_carry__2_i_6_n_0),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__2_i_7_n_0),
        .O(div_data0__0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_data0__0_carry__2_i_4
       (.I0(div_data0__0_carry__2_i_1_n_0),
        .I1(div_data0__0_carry__2_i_8_n_0),
        .O(div_data0__0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_data0__0_carry__2_i_5
       (.I0(div_data0__0_carry__2_i_2_n_0),
        .I1(div_data0__0_carry__2_i_9_n_0),
        .O(div_data0__0_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h95A565A559999555)) 
    div_data0__0_carry__2_i_6
       (.I0(\div_data0[-_n_0_1111111097] ),
        .I1(\div_data0[-_n_0_1111111098] ),
        .I2(div_data0__0_carry__0_0[2]),
        .I3(\div_data0[-_n_0_1111111100] ),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-_n_0_1111111099] ),
        .O(div_data0__0_carry__2_i_6_n_0));
  LUT5 #(
    .INIT(32'h593355FF)) 
    div_data0__0_carry__2_i_7
       (.I0(\div_data0[-_n_0_1111111098] ),
        .I1(div_data0__0_carry__0_0[2]),
        .I2(\div_data0[-_n_0_1111111100] ),
        .I3(div_data0__0_carry__0_0[1]),
        .I4(\div_data0[-_n_0_1111111099] ),
        .O(div_data0__0_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry__2_i_8
       (.I0(\div_data0[-_n_0_1111111098] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__0_0[1]),
        .I3(\div_data0[-_n_0_1111111099] ),
        .I4(div_data0__0_carry__0_0[2]),
        .I5(\div_data0[-_n_0_1111111100] ),
        .O(div_data0__0_carry__2_i_8_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry__2_i_9
       (.I0(\div_data0[-_n_0_1111111099] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__0_0[1]),
        .I3(\div_data0[-_n_0_1111111100] ),
        .I4(div_data0__0_carry__0_0[2]),
        .I5(\div_data0[-_n_0_1111111101] ),
        .O(div_data0__0_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    div_data0__0_carry_i_1
       (.I0(\div_data0[-_n_0_1111111108] ),
        .I1(div_data0__0_carry__0_0[0]),
        .I2(div_data0__0_carry__0_0[2]),
        .I3(\div_data0[-1111111109]_0 [1]),
        .I4(div_data0__0_carry__0_0[1]),
        .I5(\div_data0[-1111111109]_0 [2]),
        .O(div_data0__0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    div_data0__0_carry_i_2
       (.I0(\div_data0[-1111111109]_0 [1]),
        .I1(div_data0__0_carry__0_0[1]),
        .I2(\div_data0[-1111111109]_0 [0]),
        .I3(div_data0__0_carry__0_0[2]),
        .O(div_data0__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    div_data0__0_carry_i_3
       (.I0(\div_data0[-1111111109]_0 [1]),
        .I1(div_data0__0_carry__0_0[0]),
        .O(div_data0__0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    div_data0__0_carry_i_4
       (.I0(div_data0__0_carry_i_1_n_0),
        .I1(\div_data0[-1111111109]_0 [0]),
        .I2(div_data0__0_carry__0_0[1]),
        .I3(div_data0__0_carry__0_0[2]),
        .I4(\div_data0[-1111111109]_0 [1]),
        .O(div_data0__0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_data0_i_1
       (.CI(div_data0_i_2_n_0),
        .CO(NLW_div_data0_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_div_data0_i_1_O_UNCONNECTED[3:2],div_data0_i_1_n_6,div_data0_i_1_n_7}),
        .S({1'b0,1'b0,acc_data_in_reg_reg[21:20]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_data0_i_2
       (.CI(\div_data0[-1111111097]_i_2_n_0 ),
        .CO({div_data0_i_2_n_0,NLW_div_data0_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({div_data0_i_2_n_4,div_data0_i_2_n_5,div_data0_i_2_n_6,div_data0_i_2_n_7}),
        .S(acc_data_in_reg_reg[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \div_data0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\div_data0_inferred__0/i__carry_n_0 ,\NLW_div_data0_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({div_data0_n_85,div_data0_n_86,div_data0_n_87,div_data0_n_88}),
        .O({div_data[2:0],\NLW_div_data0_inferred__0/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \div_data0_inferred__0/i__carry__0 
       (.CI(\div_data0_inferred__0/i__carry_n_0 ),
        .CO({\div_data0_inferred__0/i__carry__0_n_0 ,\NLW_div_data0_inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({div_data0_n_81,div_data0_n_82,div_data0_n_83,div_data0_n_84}),
        .O(div_data[6:3]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \div_data0_inferred__0/i__carry__1 
       (.CI(\div_data0_inferred__0/i__carry__0_n_0 ),
        .CO({\div_data0_inferred__0/i__carry__1_n_0 ,\NLW_div_data0_inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({div_data0_n_77,div_data0_n_78,div_data0_n_79,div_data0_n_80}),
        .O(div_data[10:7]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \div_data0_inferred__0/i__carry__2 
       (.CI(\div_data0_inferred__0/i__carry__1_n_0 ),
        .CO(\NLW_div_data0_inferred__0/i__carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,div_data0_n_75,div_data0_n_76}),
        .O({\NLW_div_data0_inferred__0/i__carry__2_O_UNCONNECTED [3],div_data[13:11]}),
        .S({1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[0]),
        .Q(div_data_reg[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[10]),
        .Q(div_data_reg[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[11]),
        .Q(div_data_reg[11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[12]),
        .Q(div_data_reg[12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[13]),
        .Q(div_data_reg[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[1]),
        .Q(div_data_reg[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[2]),
        .Q(div_data_reg[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[3]),
        .Q(div_data_reg[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[4]),
        .Q(div_data_reg[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[5]),
        .Q(div_data_reg[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[6]),
        .Q(div_data_reg[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[7]),
        .Q(div_data_reg[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[8]),
        .Q(div_data_reg[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_data_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(div_en),
        .D(div_data[9]),
        .Q(div_data_reg[9]),
        .R(rst_IBUF));
  mean_fsm fsm_mean
       (.\FSM_onehot_current_state_reg[0]_0 (mean_ready),
        .\FSM_onehot_current_state_reg[1]_0 (\FSM_onehot_current_state_reg[1] ),
        .SR(fsm_mean_n_0),
        .acc_en(acc_en),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .div_en(div_en),
        .last_sample_reg(last_sample_reg),
        .rst_IBUF(rst_IBUF),
        .scale_pipe_fsm_ready_reg(scale_pipe_fsm_ready_reg));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(div_data0_n_81),
        .I1(div_data0__0[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(div_data0_n_82),
        .I1(div_data0__0[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(div_data0_n_83),
        .I1(div_data0__0[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4
       (.I0(div_data0_n_84),
        .I1(div_data0__0[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1
       (.I0(div_data0_n_77),
        .I1(div_data0__0[11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2
       (.I0(div_data0_n_78),
        .I1(div_data0__0[10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3
       (.I0(div_data0_n_79),
        .I1(div_data0__0[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4
       (.I0(div_data0_n_80),
        .I1(div_data0__0[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(div_data0_n_74),
        .I1(div_data0__0_carry__2_n_5),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_2
       (.I0(div_data0_n_75),
        .I1(div_data0__0_carry__2_n_6),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3
       (.I0(div_data0_n_76),
        .I1(div_data0__0[12]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(div_data0_n_85),
        .I1(div_data0__0[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2
       (.I0(div_data0_n_86),
        .I1(div_data0__0[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3
       (.I0(div_data0_n_87),
        .I1(div_data0__0[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4
       (.I0(div_data0_n_88),
        .I1(div_data0__0[0]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_10
       (.I0(div_data_reg[5]),
        .I1(P[5]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[5]),
        .I5(metric_scaled_reg_reg[5]),
        .O(\div_data_reg_reg[13]_0 [5]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_11
       (.I0(div_data_reg[4]),
        .I1(P[4]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[4]),
        .I5(metric_scaled_reg_reg[4]),
        .O(\div_data_reg_reg[13]_0 [4]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_12
       (.I0(div_data_reg[3]),
        .I1(P[3]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[3]),
        .I5(metric_scaled_reg_reg[3]),
        .O(\div_data_reg_reg[13]_0 [3]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_13
       (.I0(div_data_reg[2]),
        .I1(P[2]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[2]),
        .I5(metric_scaled_reg_reg[2]),
        .O(\div_data_reg_reg[13]_0 [2]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_14
       (.I0(div_data_reg[1]),
        .I1(P[1]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[1]),
        .I5(metric_scaled_reg_reg[1]),
        .O(\div_data_reg_reg[13]_0 [1]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_15
       (.I0(div_data_reg[0]),
        .I1(P[0]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[0]),
        .I5(metric_scaled_reg_reg[0]),
        .O(\div_data_reg_reg[13]_0 [0]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_2
       (.I0(div_data_reg[13]),
        .I1(P[13]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[13]),
        .I5(metric_scaled_reg_reg[13]),
        .O(\div_data_reg_reg[13]_0 [13]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_3
       (.I0(div_data_reg[12]),
        .I1(P[12]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[12]),
        .I5(metric_scaled_reg_reg[12]),
        .O(\div_data_reg_reg[13]_0 [12]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_4
       (.I0(div_data_reg[11]),
        .I1(P[11]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[11]),
        .I5(metric_scaled_reg_reg[11]),
        .O(\div_data_reg_reg[13]_0 [11]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_5
       (.I0(div_data_reg[10]),
        .I1(P[10]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[10]),
        .I5(metric_scaled_reg_reg[10]),
        .O(\div_data_reg_reg[13]_0 [10]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_6
       (.I0(div_data_reg[9]),
        .I1(P[9]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[9]),
        .I5(metric_scaled_reg_reg[9]),
        .O(\div_data_reg_reg[13]_0 [9]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_7
       (.I0(div_data_reg[8]),
        .I1(P[8]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[8]),
        .I5(metric_scaled_reg_reg[8]),
        .O(\div_data_reg_reg[13]_0 [8]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_8
       (.I0(div_data_reg[7]),
        .I1(P[7]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[7]),
        .I5(metric_scaled_reg_reg[7]),
        .O(\div_data_reg_reg[13]_0 [7]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    metric_scaled_reg_reg_i_9
       (.I0(div_data_reg[6]),
        .I1(P[6]),
        .I2(metric_sel_IBUF[1]),
        .I3(metric_sel_IBUF[0]),
        .I4(Q[6]),
        .I5(metric_scaled_reg_reg[6]),
        .O(\div_data_reg_reg[13]_0 [6]));
endmodule

module mean_fsm
   (SR,
    div_en,
    acc_en,
    \FSM_onehot_current_state_reg[0]_0 ,
    rst_IBUF,
    scale_pipe_fsm_ready_reg,
    \FSM_onehot_current_state_reg[1]_0 ,
    last_sample_reg,
    clk_IBUF_BUFG);
  output [0:0]SR;
  output div_en;
  output acc_en;
  output \FSM_onehot_current_state_reg[0]_0 ;
  input rst_IBUF;
  input scale_pipe_fsm_ready_reg;
  input \FSM_onehot_current_state_reg[1]_0 ;
  input last_sample_reg;
  input clk_IBUF_BUFG;

  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg[0]_0 ;
  wire \FSM_onehot_current_state_reg[1]_0 ;
  wire [0:0]SR;
  wire acc_en;
  wire clk_IBUF_BUFG;
  wire div_en;
  wire last_sample_reg;
  wire rst_IBUF;
  wire scale_pipe_fsm_ready_reg;

  LUT6 #(
    .INIT(64'h0374037403740074)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(last_sample_reg),
        .I1(acc_en),
        .I2(div_en),
        .I3(\FSM_onehot_current_state_reg[0]_0 ),
        .I4(scale_pipe_fsm_ready_reg),
        .I5(\FSM_onehot_current_state_reg[1]_0 ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0E0E0F0)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(acc_en),
        .I1(div_en),
        .I2(\FSM_onehot_current_state_reg[0]_0 ),
        .I3(scale_pipe_fsm_ready_reg),
        .I4(\FSM_onehot_current_state_reg[1]_0 ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(last_sample_reg),
        .I1(acc_en),
        .I2(\FSM_onehot_current_state_reg[0]_0 ),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ACC:010,IDLE:001,DIV:100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg[0]_0 ),
        .S(rst_IBUF));
  (* FSM_ENCODED_STATES = "ACC:010,IDLE:001,DIV:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(acc_en),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "ACC:010,IDLE:001,DIV:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(div_en),
        .R(rst_IBUF));
  LUT2 #(
    .INIT(4'hE)) 
    \div_data0[-1111111097]_i_1 
       (.I0(div_en),
        .I1(rst_IBUF),
        .O(SR));
endmodule

module min
   (\min_reg_reg[12]_0 ,
    comp_en_0,
    metrics_ready,
    \min_reg_reg[13]_0 ,
    min_reg1_carry__0_0,
    min_reg1_carry__0_1,
    \min_reg_reg[0]_0 ,
    \min_reg_reg[0]_1 ,
    rst_IBUF,
    FSM_sequential_current_state_reg,
    clk_IBUF_BUFG,
    comp_en,
    mean_ready,
    Q,
    metrics_ready_reg_reg,
    \min_reg_reg[0]_2 ,
    \min_reg_reg[13]_1 );
  output [0:0]\min_reg_reg[12]_0 ;
  output comp_en_0;
  output metrics_ready;
  output [13:0]\min_reg_reg[13]_0 ;
  input [3:0]min_reg1_carry__0_0;
  input [3:0]min_reg1_carry__0_1;
  input [2:0]\min_reg_reg[0]_0 ;
  input [2:0]\min_reg_reg[0]_1 ;
  input rst_IBUF;
  input FSM_sequential_current_state_reg;
  input clk_IBUF_BUFG;
  input comp_en;
  input mean_ready;
  input [0:0]Q;
  input metrics_ready_reg_reg;
  input [0:0]\min_reg_reg[0]_2 ;
  input [13:0]\min_reg_reg[13]_1 ;

  wire FSM_sequential_current_state_reg;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire comp_en;
  wire comp_en_0;
  wire mean_ready;
  wire metrics_ready;
  wire metrics_ready_reg_reg;
  wire [3:0]min_reg1_carry__0_0;
  wire [3:0]min_reg1_carry__0_1;
  wire min_reg1_carry_n_0;
  wire [2:0]\min_reg_reg[0]_0 ;
  wire [2:0]\min_reg_reg[0]_1 ;
  wire [0:0]\min_reg_reg[0]_2 ;
  wire [0:0]\min_reg_reg[12]_0 ;
  wire [13:0]\min_reg_reg[13]_0 ;
  wire [13:0]\min_reg_reg[13]_1 ;
  wire rst_IBUF;
  wire [2:0]NLW_min_reg1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_min_reg1_carry_O_UNCONNECTED;
  wire [3:0]NLW_min_reg1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_min_reg1_carry__0_O_UNCONNECTED;

  comp_fsm min_fsm
       (.FSM_sequential_current_state_reg_0(FSM_sequential_current_state_reg),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .comp_en(comp_en),
        .comp_en_0(comp_en_0),
        .mean_ready(mean_ready),
        .metrics_ready(metrics_ready),
        .metrics_ready_reg_reg(metrics_ready_reg_reg),
        .rst_IBUF(rst_IBUF));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 min_reg1_carry
       (.CI(1'b0),
        .CO({min_reg1_carry_n_0,NLW_min_reg1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(min_reg1_carry__0_0),
        .O(NLW_min_reg1_carry_O_UNCONNECTED[3:0]),
        .S(min_reg1_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 min_reg1_carry__0
       (.CI(min_reg1_carry_n_0),
        .CO({NLW_min_reg1_carry__0_CO_UNCONNECTED[3],\min_reg_reg[12]_0 ,NLW_min_reg1_carry__0_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\min_reg_reg[0]_0 }),
        .O(NLW_min_reg1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,\min_reg_reg[0]_1 }));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [0]),
        .Q(\min_reg_reg[13]_0 [0]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [10]),
        .Q(\min_reg_reg[13]_0 [10]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [11]),
        .Q(\min_reg_reg[13]_0 [11]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [12]),
        .Q(\min_reg_reg[13]_0 [12]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [13]),
        .Q(\min_reg_reg[13]_0 [13]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [1]),
        .Q(\min_reg_reg[13]_0 [1]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [2]),
        .Q(\min_reg_reg[13]_0 [2]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [3]),
        .Q(\min_reg_reg[13]_0 [3]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [4]),
        .Q(\min_reg_reg[13]_0 [4]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [5]),
        .Q(\min_reg_reg[13]_0 [5]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [6]),
        .Q(\min_reg_reg[13]_0 [6]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [7]),
        .Q(\min_reg_reg[13]_0 [7]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [8]),
        .Q(\min_reg_reg[13]_0 [8]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \min_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\min_reg_reg[0]_2 ),
        .D(\min_reg_reg[13]_1 [9]),
        .Q(\min_reg_reg[13]_0 [9]),
        .S(rst_IBUF));
endmodule

module mode_fsm
   (\FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    O,
    data_out_reg,
    CO,
    data_out_reg_0,
    \current_state_reg[0] ,
    A,
    DI,
    S,
    \min_reg_reg[6] ,
    \min_reg_reg[6]_0 ,
    FSM_sequential_current_state_reg,
    data0_q2_12_reg,
    \max_reg_reg[12] ,
    \min_reg_reg[12] ,
    \min_reg_reg[12]_0 ,
    P,
    DOADO,
    acc_data_in_reg_reg,
    \min_reg_reg[13] ,
    \min_reg_reg[13]_0 ,
    comp_en_0,
    \min_reg_reg[13]_1 ,
    max_reg1_carry__0,
    min_reg1_carry__0,
    comp_en,
    \max_reg_reg[13] ,
    mode_IBUF,
    start_IBUF,
    \FSM_sequential_current_state_reg[0]_1 ,
    rst_IBUF,
    clk_IBUF_BUFG);
  output \FSM_sequential_current_state_reg[1]_0 ;
  output \FSM_sequential_current_state_reg[0]_0 ;
  output [3:0]O;
  output [3:0]data_out_reg;
  output [0:0]CO;
  output [3:0]data_out_reg_0;
  output [13:0]\current_state_reg[0] ;
  output [13:0]A;
  output [3:0]DI;
  output [3:0]S;
  output [3:0]\min_reg_reg[6] ;
  output [3:0]\min_reg_reg[6]_0 ;
  output [13:0]FSM_sequential_current_state_reg;
  output [2:0]data0_q2_12_reg;
  output [2:0]\max_reg_reg[12] ;
  output [2:0]\min_reg_reg[12] ;
  output [2:0]\min_reg_reg[12]_0 ;
  input [13:0]P;
  input [13:0]DOADO;
  input [11:0]acc_data_in_reg_reg;
  input \min_reg_reg[13] ;
  input \min_reg_reg[13]_0 ;
  input comp_en_0;
  input [0:0]\min_reg_reg[13]_1 ;
  input [13:0]max_reg1_carry__0;
  input [13:0]min_reg1_carry__0;
  input comp_en;
  input [0:0]\max_reg_reg[13] ;
  input mode_IBUF;
  input start_IBUF;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input rst_IBUF;
  input clk_IBUF_BUFG;

  wire [13:0]A;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [13:0]DOADO;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire [13:0]FSM_sequential_current_state_reg;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire [3:0]O;
  wire [13:0]P;
  wire [3:0]S;
  wire \acc_data_in_reg[0]_i_2_n_0 ;
  wire \acc_data_in_reg[0]_i_3_n_0 ;
  wire \acc_data_in_reg[0]_i_4_n_0 ;
  wire \acc_data_in_reg[0]_i_5_n_0 ;
  wire \acc_data_in_reg[0]_i_6_n_0 ;
  wire \acc_data_in_reg[0]_i_7_n_0 ;
  wire \acc_data_in_reg[0]_i_8_n_0 ;
  wire \acc_data_in_reg[0]_i_9_n_0 ;
  wire \acc_data_in_reg[4]_i_2_n_0 ;
  wire \acc_data_in_reg[4]_i_3_n_0 ;
  wire \acc_data_in_reg[4]_i_4_n_0 ;
  wire \acc_data_in_reg[4]_i_5_n_0 ;
  wire \acc_data_in_reg[4]_i_6_n_0 ;
  wire \acc_data_in_reg[4]_i_7_n_0 ;
  wire \acc_data_in_reg[4]_i_8_n_0 ;
  wire \acc_data_in_reg[4]_i_9_n_0 ;
  wire \acc_data_in_reg[8]_i_2_n_0 ;
  wire \acc_data_in_reg[8]_i_3_n_0 ;
  wire \acc_data_in_reg[8]_i_4_n_0 ;
  wire \acc_data_in_reg[8]_i_5_n_0 ;
  wire \acc_data_in_reg[8]_i_6_n_0 ;
  wire \acc_data_in_reg[8]_i_7_n_0 ;
  wire \acc_data_in_reg[8]_i_8_n_0 ;
  wire \acc_data_in_reg[8]_i_9_n_0 ;
  wire [11:0]acc_data_in_reg_reg;
  wire \acc_data_in_reg_reg[0]_i_1_n_0 ;
  wire \acc_data_in_reg_reg[4]_i_1_n_0 ;
  wire clk_IBUF_BUFG;
  wire comp_en;
  wire comp_en_0;
  wire [13:0]\current_state_reg[0] ;
  wire [2:0]data0_q2_12_reg;
  wire [3:0]data_out_reg;
  wire [3:0]data_out_reg_0;
  wire [13:0]max_reg1_carry__0;
  wire [2:0]\max_reg_reg[12] ;
  wire [0:0]\max_reg_reg[13] ;
  wire [13:0]min_reg1_carry__0;
  wire [2:0]\min_reg_reg[12] ;
  wire [2:0]\min_reg_reg[12]_0 ;
  wire \min_reg_reg[13] ;
  wire \min_reg_reg[13]_0 ;
  wire [0:0]\min_reg_reg[13]_1 ;
  wire [3:0]\min_reg_reg[6] ;
  wire [3:0]\min_reg_reg[6]_0 ;
  wire mode_IBUF;
  wire rst_IBUF;
  wire start_IBUF;
  wire test;
  wire [2:0]\NLW_acc_data_in_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_data_in_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_data_in_reg_reg[8]_i_1_CO_UNCONNECTED ;

  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF0F0088)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(mode_IBUF),
        .I1(start_IBUF),
        .I2(\FSM_sequential_current_state_reg[0]_1 ),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF000F44)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(mode_IBUF),
        .I1(start_IBUF),
        .I2(\FSM_sequential_current_state_reg[0]_1 ),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00,ADC:10,TEST:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_current_state_reg[0]_0 ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "IDLE:00,ADC:10,TEST:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_current_state_reg[1]_0 ),
        .R(rst_IBUF));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[0]_i_2 
       (.I0(DOADO[5]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[5]),
        .O(\acc_data_in_reg[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[0]_i_3 
       (.I0(DOADO[4]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[4]),
        .O(\acc_data_in_reg[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[0]_i_4 
       (.I0(DOADO[3]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[3]),
        .O(\acc_data_in_reg[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[0]_i_5 
       (.I0(DOADO[2]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[2]),
        .O(\acc_data_in_reg[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[0]_i_6 
       (.I0(P[5]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[5]),
        .I4(acc_data_in_reg_reg[3]),
        .O(\acc_data_in_reg[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[0]_i_7 
       (.I0(P[4]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[4]),
        .I4(acc_data_in_reg_reg[2]),
        .O(\acc_data_in_reg[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[0]_i_8 
       (.I0(P[3]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[3]),
        .I4(acc_data_in_reg_reg[1]),
        .O(\acc_data_in_reg[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[0]_i_9 
       (.I0(P[2]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[2]),
        .I4(acc_data_in_reg_reg[0]),
        .O(\acc_data_in_reg[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[4]_i_2 
       (.I0(DOADO[9]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[9]),
        .O(\acc_data_in_reg[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[4]_i_3 
       (.I0(DOADO[8]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[8]),
        .O(\acc_data_in_reg[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[4]_i_4 
       (.I0(DOADO[7]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[7]),
        .O(\acc_data_in_reg[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[4]_i_5 
       (.I0(DOADO[6]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[6]),
        .O(\acc_data_in_reg[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[4]_i_6 
       (.I0(P[9]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[9]),
        .I4(acc_data_in_reg_reg[7]),
        .O(\acc_data_in_reg[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[4]_i_7 
       (.I0(P[8]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[8]),
        .I4(acc_data_in_reg_reg[6]),
        .O(\acc_data_in_reg[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[4]_i_8 
       (.I0(P[7]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[7]),
        .I4(acc_data_in_reg_reg[5]),
        .O(\acc_data_in_reg[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[4]_i_9 
       (.I0(P[6]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[6]),
        .I4(acc_data_in_reg_reg[4]),
        .O(\acc_data_in_reg[4]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[8]_i_2 
       (.I0(DOADO[13]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[13]),
        .O(\acc_data_in_reg[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[8]_i_3 
       (.I0(DOADO[12]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[12]),
        .O(\acc_data_in_reg[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[8]_i_4 
       (.I0(DOADO[11]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[11]),
        .O(\acc_data_in_reg[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data_in_reg[8]_i_5 
       (.I0(DOADO[10]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[10]),
        .O(\acc_data_in_reg[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[8]_i_6 
       (.I0(P[13]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[13]),
        .I4(acc_data_in_reg_reg[11]),
        .O(\acc_data_in_reg[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[8]_i_7 
       (.I0(P[12]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[12]),
        .I4(acc_data_in_reg_reg[10]),
        .O(\acc_data_in_reg[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[8]_i_8 
       (.I0(P[11]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[11]),
        .I4(acc_data_in_reg_reg[9]),
        .O(\acc_data_in_reg[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \acc_data_in_reg[8]_i_9 
       (.I0(P[10]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(DOADO[10]),
        .I4(acc_data_in_reg_reg[8]),
        .O(\acc_data_in_reg[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_data_in_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\acc_data_in_reg_reg[0]_i_1_n_0 ,\NLW_acc_data_in_reg_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc_data_in_reg[0]_i_2_n_0 ,\acc_data_in_reg[0]_i_3_n_0 ,\acc_data_in_reg[0]_i_4_n_0 ,\acc_data_in_reg[0]_i_5_n_0 }),
        .O(O),
        .S({\acc_data_in_reg[0]_i_6_n_0 ,\acc_data_in_reg[0]_i_7_n_0 ,\acc_data_in_reg[0]_i_8_n_0 ,\acc_data_in_reg[0]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_data_in_reg_reg[4]_i_1 
       (.CI(\acc_data_in_reg_reg[0]_i_1_n_0 ),
        .CO({\acc_data_in_reg_reg[4]_i_1_n_0 ,\NLW_acc_data_in_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc_data_in_reg[4]_i_2_n_0 ,\acc_data_in_reg[4]_i_3_n_0 ,\acc_data_in_reg[4]_i_4_n_0 ,\acc_data_in_reg[4]_i_5_n_0 }),
        .O(data_out_reg),
        .S({\acc_data_in_reg[4]_i_6_n_0 ,\acc_data_in_reg[4]_i_7_n_0 ,\acc_data_in_reg[4]_i_8_n_0 ,\acc_data_in_reg[4]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_data_in_reg_reg[8]_i_1 
       (.CI(\acc_data_in_reg_reg[4]_i_1_n_0 ),
        .CO({CO,\NLW_acc_data_in_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc_data_in_reg[8]_i_2_n_0 ,\acc_data_in_reg[8]_i_3_n_0 ,\acc_data_in_reg[8]_i_4_n_0 ,\acc_data_in_reg[8]_i_5_n_0 }),
        .O(data_out_reg_0),
        .S({\acc_data_in_reg[8]_i_6_n_0 ,\acc_data_in_reg[8]_i_7_n_0 ,\acc_data_in_reg[8]_i_8_n_0 ,\acc_data_in_reg[8]_i_9_n_0 }));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    max_reg1_carry__0_i_1
       (.I0(P[12]),
        .I1(test),
        .I2(DOADO[12]),
        .I3(max_reg1_carry__0[12]),
        .I4(max_reg1_carry__0[13]),
        .I5(A[13]),
        .O(data0_q2_12_reg[2]));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    max_reg1_carry__0_i_2
       (.I0(P[10]),
        .I1(test),
        .I2(DOADO[10]),
        .I3(max_reg1_carry__0[10]),
        .I4(max_reg1_carry__0[11]),
        .I5(A[11]),
        .O(data0_q2_12_reg[1]));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    max_reg1_carry__0_i_3
       (.I0(P[8]),
        .I1(test),
        .I2(DOADO[8]),
        .I3(max_reg1_carry__0[8]),
        .I4(max_reg1_carry__0[9]),
        .I5(A[9]),
        .O(data0_q2_12_reg[0]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    max_reg1_carry__0_i_4
       (.I0(max_reg1_carry__0[12]),
        .I1(P[12]),
        .I2(test),
        .I3(DOADO[12]),
        .I4(A[13]),
        .I5(max_reg1_carry__0[13]),
        .O(\max_reg_reg[12] [2]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    max_reg1_carry__0_i_5
       (.I0(max_reg1_carry__0[10]),
        .I1(P[10]),
        .I2(test),
        .I3(DOADO[10]),
        .I4(A[11]),
        .I5(max_reg1_carry__0[11]),
        .O(\max_reg_reg[12] [1]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    max_reg1_carry__0_i_6
       (.I0(max_reg1_carry__0[8]),
        .I1(P[8]),
        .I2(test),
        .I3(DOADO[8]),
        .I4(A[9]),
        .I5(max_reg1_carry__0[9]),
        .O(\max_reg_reg[12] [0]));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    max_reg1_carry_i_1
       (.I0(P[6]),
        .I1(test),
        .I2(DOADO[6]),
        .I3(max_reg1_carry__0[6]),
        .I4(max_reg1_carry__0[7]),
        .I5(A[7]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    max_reg1_carry_i_2
       (.I0(P[4]),
        .I1(test),
        .I2(DOADO[4]),
        .I3(max_reg1_carry__0[4]),
        .I4(max_reg1_carry__0[5]),
        .I5(A[5]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    max_reg1_carry_i_3
       (.I0(P[2]),
        .I1(test),
        .I2(DOADO[2]),
        .I3(max_reg1_carry__0[2]),
        .I4(max_reg1_carry__0[3]),
        .I5(A[3]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    max_reg1_carry_i_4
       (.I0(P[0]),
        .I1(test),
        .I2(DOADO[0]),
        .I3(max_reg1_carry__0[0]),
        .I4(max_reg1_carry__0[1]),
        .I5(A[1]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    max_reg1_carry_i_5
       (.I0(max_reg1_carry__0[6]),
        .I1(P[6]),
        .I2(test),
        .I3(DOADO[6]),
        .I4(A[7]),
        .I5(max_reg1_carry__0[7]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    max_reg1_carry_i_6
       (.I0(max_reg1_carry__0[4]),
        .I1(P[4]),
        .I2(test),
        .I3(DOADO[4]),
        .I4(A[5]),
        .I5(max_reg1_carry__0[5]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    max_reg1_carry_i_7
       (.I0(max_reg1_carry__0[2]),
        .I1(P[2]),
        .I2(test),
        .I3(DOADO[2]),
        .I4(A[3]),
        .I5(max_reg1_carry__0[3]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    max_reg1_carry_i_8
       (.I0(max_reg1_carry__0[0]),
        .I1(P[0]),
        .I2(test),
        .I3(DOADO[0]),
        .I4(A[1]),
        .I5(max_reg1_carry__0[1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h2)) 
    max_reg1_carry_i_9
       (.I0(\FSM_sequential_current_state_reg[0]_0 ),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .O(test));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[0]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[0]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[0]),
        .O(FSM_sequential_current_state_reg[0]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[10]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[10]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[10]),
        .O(FSM_sequential_current_state_reg[10]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[11]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[11]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[11]),
        .O(FSM_sequential_current_state_reg[11]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[12]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[12]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[12]),
        .O(FSM_sequential_current_state_reg[12]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[13]_i_2 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[13]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[13]),
        .O(FSM_sequential_current_state_reg[13]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[1]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[1]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[1]),
        .O(FSM_sequential_current_state_reg[1]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[2]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[2]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[2]),
        .O(FSM_sequential_current_state_reg[2]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[3]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[3]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[3]),
        .O(FSM_sequential_current_state_reg[3]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[4]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[4]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[4]),
        .O(FSM_sequential_current_state_reg[4]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[5]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[5]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[5]),
        .O(FSM_sequential_current_state_reg[5]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[6]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[6]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[6]),
        .O(FSM_sequential_current_state_reg[6]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[7]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[7]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[7]),
        .O(FSM_sequential_current_state_reg[7]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[8]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[8]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[8]),
        .O(FSM_sequential_current_state_reg[8]));
  LUT6 #(
    .INIT(64'h8088808080008080)) 
    \max_reg[9]_i_1 
       (.I0(comp_en),
        .I1(\max_reg_reg[13] ),
        .I2(P[9]),
        .I3(\FSM_sequential_current_state_reg[1]_0 ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(DOADO[9]),
        .O(FSM_sequential_current_state_reg[9]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    min_reg1_carry__0_i_1
       (.I0(min_reg1_carry__0[12]),
        .I1(P[12]),
        .I2(test),
        .I3(DOADO[12]),
        .I4(A[13]),
        .I5(min_reg1_carry__0[13]),
        .O(\min_reg_reg[12] [2]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    min_reg1_carry__0_i_2
       (.I0(min_reg1_carry__0[10]),
        .I1(P[10]),
        .I2(test),
        .I3(DOADO[10]),
        .I4(A[11]),
        .I5(min_reg1_carry__0[11]),
        .O(\min_reg_reg[12] [1]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    min_reg1_carry__0_i_3
       (.I0(min_reg1_carry__0[8]),
        .I1(P[8]),
        .I2(test),
        .I3(DOADO[8]),
        .I4(A[9]),
        .I5(min_reg1_carry__0[9]),
        .O(\min_reg_reg[12] [0]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    min_reg1_carry__0_i_4
       (.I0(min_reg1_carry__0[12]),
        .I1(P[12]),
        .I2(test),
        .I3(DOADO[12]),
        .I4(A[13]),
        .I5(min_reg1_carry__0[13]),
        .O(\min_reg_reg[12]_0 [2]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    min_reg1_carry__0_i_5
       (.I0(min_reg1_carry__0[10]),
        .I1(P[10]),
        .I2(test),
        .I3(DOADO[10]),
        .I4(A[11]),
        .I5(min_reg1_carry__0[11]),
        .O(\min_reg_reg[12]_0 [1]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    min_reg1_carry__0_i_6
       (.I0(min_reg1_carry__0[8]),
        .I1(P[8]),
        .I2(test),
        .I3(DOADO[8]),
        .I4(A[9]),
        .I5(min_reg1_carry__0[9]),
        .O(\min_reg_reg[12]_0 [0]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    min_reg1_carry_i_1
       (.I0(min_reg1_carry__0[6]),
        .I1(P[6]),
        .I2(test),
        .I3(DOADO[6]),
        .I4(A[7]),
        .I5(min_reg1_carry__0[7]),
        .O(\min_reg_reg[6] [3]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    min_reg1_carry_i_2
       (.I0(min_reg1_carry__0[4]),
        .I1(P[4]),
        .I2(test),
        .I3(DOADO[4]),
        .I4(A[5]),
        .I5(min_reg1_carry__0[5]),
        .O(\min_reg_reg[6] [2]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    min_reg1_carry_i_3
       (.I0(min_reg1_carry__0[2]),
        .I1(P[2]),
        .I2(test),
        .I3(DOADO[2]),
        .I4(A[3]),
        .I5(min_reg1_carry__0[3]),
        .O(\min_reg_reg[6] [1]));
  LUT6 #(
    .INIT(64'h02A2FFFF000002A2)) 
    min_reg1_carry_i_4
       (.I0(min_reg1_carry__0[0]),
        .I1(P[0]),
        .I2(test),
        .I3(DOADO[0]),
        .I4(A[1]),
        .I5(min_reg1_carry__0[1]),
        .O(\min_reg_reg[6] [0]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    min_reg1_carry_i_5
       (.I0(min_reg1_carry__0[6]),
        .I1(P[6]),
        .I2(test),
        .I3(DOADO[6]),
        .I4(A[7]),
        .I5(min_reg1_carry__0[7]),
        .O(\min_reg_reg[6]_0 [3]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    min_reg1_carry_i_6
       (.I0(min_reg1_carry__0[4]),
        .I1(P[4]),
        .I2(test),
        .I3(DOADO[4]),
        .I4(A[5]),
        .I5(min_reg1_carry__0[5]),
        .O(\min_reg_reg[6]_0 [2]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    min_reg1_carry_i_7
       (.I0(min_reg1_carry__0[2]),
        .I1(P[2]),
        .I2(test),
        .I3(DOADO[2]),
        .I4(A[3]),
        .I5(min_reg1_carry__0[3]),
        .O(\min_reg_reg[6]_0 [1]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    min_reg1_carry_i_8
       (.I0(min_reg1_carry__0[0]),
        .I1(P[0]),
        .I2(test),
        .I3(DOADO[0]),
        .I4(A[1]),
        .I5(min_reg1_carry__0[1]),
        .O(\min_reg_reg[6]_0 [0]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[0]_i_1 
       (.I0(A[0]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [0]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[10]_i_1 
       (.I0(A[10]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [10]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[11]_i_1 
       (.I0(A[11]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [11]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[12]_i_1 
       (.I0(A[12]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [12]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[13]_i_2 
       (.I0(A[13]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [13]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[1]_i_1 
       (.I0(A[1]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [1]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[2]_i_1 
       (.I0(A[2]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [2]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[3]_i_1 
       (.I0(A[3]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [3]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[4]_i_1 
       (.I0(A[4]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [4]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[5]_i_1 
       (.I0(A[5]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [5]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[6]_i_1 
       (.I0(A[6]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [6]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[7]_i_1 
       (.I0(A[7]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [7]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[8]_i_1 
       (.I0(A[8]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [8]));
  LUT5 #(
    .INIT(32'hAA030003)) 
    \min_reg[9]_i_1 
       (.I0(A[9]),
        .I1(\min_reg_reg[13] ),
        .I2(\min_reg_reg[13]_0 ),
        .I3(comp_en_0),
        .I4(\min_reg_reg[13]_1 ),
        .O(\current_state_reg[0] [9]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_1
       (.I0(DOADO[13]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[13]),
        .O(A[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_10
       (.I0(DOADO[4]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[4]),
        .O(A[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_11
       (.I0(DOADO[3]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[3]),
        .O(A[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_12
       (.I0(DOADO[2]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[2]),
        .O(A[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_13
       (.I0(DOADO[1]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[1]),
        .O(A[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_14
       (.I0(DOADO[0]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[0]),
        .O(A[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_2
       (.I0(DOADO[12]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[12]),
        .O(A[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_3
       (.I0(DOADO[11]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[11]),
        .O(A[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_4
       (.I0(DOADO[10]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[10]),
        .O(A[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_5
       (.I0(DOADO[9]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[9]),
        .O(A[9]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_6
       (.I0(DOADO[8]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[8]),
        .O(A[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_7
       (.I0(DOADO[7]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[7]),
        .O(A[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_8
       (.I0(DOADO[6]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[6]),
        .O(A[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    x20_i_9
       (.I0(DOADO[5]),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(\FSM_sequential_current_state_reg[1]_0 ),
        .I3(P[5]),
        .O(A[5]));
endmodule

module norm_lut
   (D,
    A,
    P,
    k_exp__5,
    k_exp_reg,
    Q,
    rst_IBUF,
    clk_IBUF_BUFG);
  output [16:0]D;
  output [16:0]A;
  input [16:0]P;
  input [0:0]k_exp__5;
  input [1:0]k_exp_reg;
  input [10:0]Q;
  input rst_IBUF;
  input clk_IBUF_BUFG;

  wire [16:0]A;
  wire [16:0]D;
  wire [16:0]P;
  wire [10:0]Q;
  wire clk_IBUF_BUFG;
  wire \data_out[12]_i_3_n_0 ;
  wire \data_out[14]_i_10_n_0 ;
  wire \data_out[14]_i_11_n_0 ;
  wire \data_out[14]_i_12_n_0 ;
  wire \data_out[14]_i_13_n_0 ;
  wire \data_out[14]_i_7_n_0 ;
  wire \data_out[14]_i_8_n_0 ;
  wire \data_out[14]_i_9_n_0 ;
  wire [16:0]data_out_reg;
  wire [0:0]k_exp__5;
  wire [1:0]k_exp_reg;
  wire [5:0]\leading_one/data_out ;
  wire \nr_xk0[0]_i_2_n_0 ;
  wire \nr_xk0[10]_i_2_n_0 ;
  wire \nr_xk0[11]_i_2_n_0 ;
  wire \nr_xk0[12]_i_2_n_0 ;
  wire \nr_xk0[13]_i_2_n_0 ;
  wire \nr_xk0[1]_i_2_n_0 ;
  wire \nr_xk0[2]_i_2_n_0 ;
  wire \nr_xk0[3]_i_2_n_0 ;
  wire \nr_xk0[4]_i_2_n_0 ;
  wire \nr_xk0[5]_i_2_n_0 ;
  wire \nr_xk0[6]_i_2_n_0 ;
  wire \nr_xk0[7]_i_2_n_0 ;
  wire \nr_xk0[8]_i_2_n_0 ;
  wire \nr_xk0[9]_i_2_n_0 ;
  wire [14:0]p_0_out;
  wire rst_IBUF;

  LUT6 #(
    .INIT(64'hDEF51246B930C783)) 
    \data_out[0]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [1]),
        .I3(\leading_one/data_out [4]),
        .I4(\leading_one/data_out [0]),
        .I5(\leading_one/data_out [5]),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'h323C781E69DBE59E)) 
    \data_out[10]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [1]),
        .I3(\leading_one/data_out [0]),
        .I4(\leading_one/data_out [5]),
        .I5(\leading_one/data_out [4]),
        .O(p_0_out[10]));
  LUT6 #(
    .INIT(64'h54BC422C56DC624D)) 
    \data_out[11]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [1]),
        .I3(\leading_one/data_out [5]),
        .I4(\leading_one/data_out [4]),
        .I5(\leading_one/data_out [0]),
        .O(p_0_out[11]));
  LUT6 #(
    .INIT(64'h0003373CFCCC343C)) 
    \data_out[12]_i_1 
       (.I0(\leading_one/data_out [0]),
        .I1(\leading_one/data_out [3]),
        .I2(\leading_one/data_out [2]),
        .I3(\leading_one/data_out [1]),
        .I4(\leading_one/data_out [5]),
        .I5(\leading_one/data_out [4]),
        .O(p_0_out[12]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_out[12]_i_2 
       (.I0(\data_out[12]_i_3_n_0 ),
        .I1(\data_out[14]_i_9_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_out[14]_i_10_n_0 ),
        .O(\leading_one/data_out [0]));
  LUT6 #(
    .INIT(64'hFFFFEA40EA40EA40)) 
    \data_out[12]_i_3 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[0]),
        .I5(\data_out[14]_i_13_n_0 ),
        .O(\data_out[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h0F0E1151)) 
    \data_out[13]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [5]),
        .I3(\leading_one/data_out [1]),
        .I4(\leading_one/data_out [4]),
        .O(p_0_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h11111113)) 
    \data_out[14]_i_1 
       (.I0(\leading_one/data_out [4]),
        .I1(\leading_one/data_out [5]),
        .I2(\leading_one/data_out [3]),
        .I3(\leading_one/data_out [2]),
        .I4(\leading_one/data_out [1]),
        .O(p_0_out[14]));
  LUT4 #(
    .INIT(16'h0100)) 
    \data_out[14]_i_10 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[7]),
        .O(\data_out[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA40EA40EA40)) 
    \data_out[14]_i_11 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[2]),
        .I5(\data_out[14]_i_13_n_0 ),
        .O(\data_out[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA40EA40EA40)) 
    \data_out[14]_i_12 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(\data_out[14]_i_13_n_0 ),
        .O(\data_out[14]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \data_out[14]_i_13 
       (.I0(Q[7]),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(Q[8]),
        .O(\data_out[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFACA1ACA0)) 
    \data_out[14]_i_2 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[7]),
        .I4(Q[4]),
        .I5(\data_out[14]_i_7_n_0 ),
        .O(\leading_one/data_out [4]));
  LUT6 #(
    .INIT(64'hFFFF00F0FF0000AC)) 
    \data_out[14]_i_3 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(\leading_one/data_out [5]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_out[14]_i_4 
       (.I0(\data_out[14]_i_8_n_0 ),
        .I1(\data_out[14]_i_9_n_0 ),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\data_out[14]_i_10_n_0 ),
        .O(\leading_one/data_out [3]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_out[14]_i_5 
       (.I0(\data_out[14]_i_11_n_0 ),
        .I1(\data_out[14]_i_9_n_0 ),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\data_out[14]_i_10_n_0 ),
        .O(\leading_one/data_out [2]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_out[14]_i_6 
       (.I0(\data_out[14]_i_12_n_0 ),
        .I1(\data_out[14]_i_9_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\data_out[14]_i_10_n_0 ),
        .O(\leading_one/data_out [1]));
  LUT6 #(
    .INIT(64'h080B080808080808)) 
    \data_out[14]_i_7 
       (.I0(Q[6]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[10]),
        .I4(Q[7]),
        .I5(Q[5]),
        .O(\data_out[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAF000F0AAF00C)) 
    \data_out[14]_i_8 
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(Q[7]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(\data_out[14]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \data_out[14]_i_9 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(Q[8]),
        .O(\data_out[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h25BB877194D98E1C)) 
    \data_out[1]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [1]),
        .I3(\leading_one/data_out [4]),
        .I4(\leading_one/data_out [5]),
        .I5(\leading_one/data_out [0]),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'h3B83ED2AB2C0B742)) 
    \data_out[2]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [1]),
        .I3(\leading_one/data_out [0]),
        .I4(\leading_one/data_out [5]),
        .I5(\leading_one/data_out [4]),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'h0A2D31B22801E74D)) 
    \data_out[3]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [1]),
        .I3(\leading_one/data_out [0]),
        .I4(\leading_one/data_out [5]),
        .I5(\leading_one/data_out [4]),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'h052828E71D2DE7BA)) 
    \data_out[4]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [1]),
        .I2(\leading_one/data_out [2]),
        .I3(\leading_one/data_out [0]),
        .I4(\leading_one/data_out [5]),
        .I5(\leading_one/data_out [4]),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'h2167948AEE8C67EC)) 
    \data_out[5]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [1]),
        .I3(\leading_one/data_out [0]),
        .I4(\leading_one/data_out [5]),
        .I5(\leading_one/data_out [4]),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'h0716E8601979B282)) 
    \data_out[6]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [1]),
        .I3(\leading_one/data_out [0]),
        .I4(\leading_one/data_out [4]),
        .I5(\leading_one/data_out [5]),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'h4445719BA25DD6B0)) 
    \data_out[7]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [1]),
        .I3(\leading_one/data_out [0]),
        .I4(\leading_one/data_out [5]),
        .I5(\leading_one/data_out [4]),
        .O(p_0_out[7]));
  LUT6 #(
    .INIT(64'hEE11B3397825D186)) 
    \data_out[8]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [1]),
        .I3(\leading_one/data_out [0]),
        .I4(\leading_one/data_out [5]),
        .I5(\leading_one/data_out [4]),
        .O(p_0_out[8]));
  LUT6 #(
    .INIT(64'h1EF0B34966916BC5)) 
    \data_out[9]_i_1 
       (.I0(\leading_one/data_out [3]),
        .I1(\leading_one/data_out [2]),
        .I2(\leading_one/data_out [1]),
        .I3(\leading_one/data_out [0]),
        .I4(\leading_one/data_out [4]),
        .I5(\leading_one/data_out [5]),
        .O(p_0_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(data_out_reg[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[10]),
        .Q(data_out_reg[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[11]),
        .Q(data_out_reg[11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[12]),
        .Q(data_out_reg[12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[13]),
        .Q(data_out_reg[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[14]),
        .Q(data_out_reg[14]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_out_reg[16]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(data_out_reg[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(data_out_reg[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(data_out_reg[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(data_out_reg[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(data_out_reg[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(data_out_reg[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(data_out_reg[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[8]),
        .Q(data_out_reg[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(data_out_reg[9]),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[0]_i_1 
       (.I0(\nr_xk0[0]_i_2_n_0 ),
        .I1(P[0]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[0]_i_2 
       (.I0(data_out_reg[1]),
        .I1(data_out_reg[0]),
        .I2(data_out_reg[2]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[10]_i_1 
       (.I0(\nr_xk0[10]_i_2_n_0 ),
        .I1(P[10]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[13]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[10]_i_2 
       (.I0(data_out_reg[11]),
        .I1(data_out_reg[10]),
        .I2(data_out_reg[12]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[11]_i_1 
       (.I0(\nr_xk0[11]_i_2_n_0 ),
        .I1(P[11]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[14]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[11]_i_2 
       (.I0(data_out_reg[12]),
        .I1(data_out_reg[11]),
        .I2(data_out_reg[13]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAABAAAAAAAAA)) 
    \nr_xk0[12]_i_1 
       (.I0(\nr_xk0[12]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(P[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[12]_i_2 
       (.I0(data_out_reg[13]),
        .I1(data_out_reg[12]),
        .I2(data_out_reg[14]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[13]_i_1 
       (.I0(\nr_xk0[13]_i_2_n_0 ),
        .I1(P[13]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[16]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h00000C0A)) 
    \nr_xk0[13]_i_2 
       (.I0(data_out_reg[13]),
        .I1(data_out_reg[14]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(k_exp__5),
        .O(\nr_xk0[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF312000003120)) 
    \nr_xk0[14]_i_1 
       (.I0(k_exp_reg[1]),
        .I1(k_exp_reg[0]),
        .I2(data_out_reg[16]),
        .I3(data_out_reg[14]),
        .I4(k_exp__5),
        .I5(P[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hFF200020)) 
    \nr_xk0[15]_i_1 
       (.I0(data_out_reg[16]),
        .I1(k_exp_reg[1]),
        .I2(k_exp_reg[0]),
        .I3(k_exp__5),
        .I4(P[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hFF020002)) 
    \nr_xk0[16]_i_1 
       (.I0(data_out_reg[16]),
        .I1(k_exp_reg[1]),
        .I2(k_exp_reg[0]),
        .I3(k_exp__5),
        .I4(P[16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[1]_i_1 
       (.I0(\nr_xk0[1]_i_2_n_0 ),
        .I1(P[1]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[4]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[1]_i_2 
       (.I0(data_out_reg[2]),
        .I1(data_out_reg[1]),
        .I2(data_out_reg[3]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[2]_i_1 
       (.I0(\nr_xk0[2]_i_2_n_0 ),
        .I1(P[2]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[5]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[2]_i_2 
       (.I0(data_out_reg[3]),
        .I1(data_out_reg[2]),
        .I2(data_out_reg[4]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[3]_i_1 
       (.I0(\nr_xk0[3]_i_2_n_0 ),
        .I1(P[3]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[6]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[3]_i_2 
       (.I0(data_out_reg[4]),
        .I1(data_out_reg[3]),
        .I2(data_out_reg[5]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[4]_i_1 
       (.I0(\nr_xk0[4]_i_2_n_0 ),
        .I1(P[4]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[7]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[4]_i_2 
       (.I0(data_out_reg[5]),
        .I1(data_out_reg[4]),
        .I2(data_out_reg[6]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[5]_i_1 
       (.I0(\nr_xk0[5]_i_2_n_0 ),
        .I1(P[5]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[8]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[5]_i_2 
       (.I0(data_out_reg[6]),
        .I1(data_out_reg[5]),
        .I2(data_out_reg[7]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[6]_i_1 
       (.I0(\nr_xk0[6]_i_2_n_0 ),
        .I1(P[6]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[9]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[6]_i_2 
       (.I0(data_out_reg[7]),
        .I1(data_out_reg[6]),
        .I2(data_out_reg[8]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[7]_i_1 
       (.I0(\nr_xk0[7]_i_2_n_0 ),
        .I1(P[7]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[10]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[7]_i_2 
       (.I0(data_out_reg[8]),
        .I1(data_out_reg[7]),
        .I2(data_out_reg[9]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[8]_i_1 
       (.I0(\nr_xk0[8]_i_2_n_0 ),
        .I1(P[8]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[11]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[8]_i_2 
       (.I0(data_out_reg[9]),
        .I1(data_out_reg[8]),
        .I2(data_out_reg[10]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAEAEAEAEAEAEA)) 
    \nr_xk0[9]_i_1 
       (.I0(\nr_xk0[9]_i_2_n_0 ),
        .I1(P[9]),
        .I2(k_exp__5),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(data_out_reg[12]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000000000F0AACC)) 
    \nr_xk0[9]_i_2 
       (.I0(data_out_reg[10]),
        .I1(data_out_reg[9]),
        .I2(data_out_reg[11]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .I5(k_exp__5),
        .O(\nr_xk0[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    nr_xk0_odd0_i_1
       (.I0(k_exp_reg[1]),
        .I1(k_exp_reg[0]),
        .I2(data_out_reg[16]),
        .O(A[16]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_10
       (.I0(data_out_reg[8]),
        .I1(data_out_reg[7]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[10]),
        .I5(data_out_reg[9]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_11
       (.I0(data_out_reg[7]),
        .I1(data_out_reg[6]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[9]),
        .I5(data_out_reg[8]),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_12
       (.I0(data_out_reg[6]),
        .I1(data_out_reg[5]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[8]),
        .I5(data_out_reg[7]),
        .O(A[5]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_13
       (.I0(data_out_reg[5]),
        .I1(data_out_reg[4]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[7]),
        .I5(data_out_reg[6]),
        .O(A[4]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_14
       (.I0(data_out_reg[4]),
        .I1(data_out_reg[3]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[6]),
        .I5(data_out_reg[5]),
        .O(A[3]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_15
       (.I0(data_out_reg[3]),
        .I1(data_out_reg[2]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[5]),
        .I5(data_out_reg[4]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_16
       (.I0(data_out_reg[2]),
        .I1(data_out_reg[1]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[4]),
        .I5(data_out_reg[3]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_17
       (.I0(data_out_reg[1]),
        .I1(data_out_reg[0]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[3]),
        .I5(data_out_reg[2]),
        .O(A[0]));
  LUT3 #(
    .INIT(8'h40)) 
    nr_xk0_odd0_i_2
       (.I0(k_exp_reg[1]),
        .I1(k_exp_reg[0]),
        .I2(data_out_reg[16]),
        .O(A[15]));
  LUT4 #(
    .INIT(16'h00CA)) 
    nr_xk0_odd0_i_3
       (.I0(data_out_reg[14]),
        .I1(data_out_reg[16]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .O(A[14]));
  LUT5 #(
    .INIT(32'hF000AACC)) 
    nr_xk0_odd0_i_4
       (.I0(data_out_reg[14]),
        .I1(data_out_reg[13]),
        .I2(data_out_reg[16]),
        .I3(k_exp_reg[0]),
        .I4(k_exp_reg[1]),
        .O(A[13]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    nr_xk0_odd0_i_5
       (.I0(data_out_reg[13]),
        .I1(data_out_reg[12]),
        .I2(data_out_reg[14]),
        .I3(k_exp_reg[1]),
        .I4(k_exp_reg[0]),
        .O(A[12]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_6
       (.I0(data_out_reg[12]),
        .I1(data_out_reg[11]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[14]),
        .I5(data_out_reg[13]),
        .O(A[11]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_7
       (.I0(data_out_reg[11]),
        .I1(data_out_reg[10]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[13]),
        .I5(data_out_reg[12]),
        .O(A[10]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_8
       (.I0(data_out_reg[10]),
        .I1(data_out_reg[9]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[12]),
        .I5(data_out_reg[11]),
        .O(A[9]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    nr_xk0_odd0_i_9
       (.I0(data_out_reg[9]),
        .I1(data_out_reg[8]),
        .I2(k_exp_reg[1]),
        .I3(k_exp_reg[0]),
        .I4(data_out_reg[11]),
        .I5(data_out_reg[10]),
        .O(A[8]));
endmodule

module processing_thread
   (\acc_data_in_reg_reg[11] ,
    data0_q2_12_reg,
    \min_reg_reg[12] ,
    comp_en,
    comp_en_0,
    metrics_ready,
    \FSM_onehot_current_state_reg[0] ,
    \div_data_reg_reg[13] ,
    Q,
    \max_reg_reg[13] ,
    rst_IBUF,
    last_sample,
    clk_IBUF_BUFG,
    n_samples_reg_reg_0,
    ADDRARDADDR,
    x20,
    O,
    \acc_data_in_reg_reg[7] ,
    \acc_data_in_reg_reg[11]_0 ,
    DI,
    S,
    \max_reg_reg[0] ,
    \max_reg_reg[0]_0 ,
    min_reg1_carry__0,
    min_reg1_carry__0_0,
    \min_reg_reg[0] ,
    \min_reg_reg[0]_0 ,
    FSM_sequential_current_state_reg,
    FSM_sequential_current_state_reg_0,
    CO,
    metrics_ready_reg_reg,
    scale_pipe_fsm_ready_reg,
    \FSM_onehot_current_state_reg[1] ,
    metrics_ready_reg,
    display,
    metric_sel_IBUF,
    E,
    D,
    \min_reg_reg[0]_1 ,
    \min_reg_reg[13] ,
    P,
    current_state,
    DOADO);
  output [11:0]\acc_data_in_reg_reg[11] ;
  output [0:0]data0_q2_12_reg;
  output [0:0]\min_reg_reg[12] ;
  output comp_en;
  output comp_en_0;
  output metrics_ready;
  output \FSM_onehot_current_state_reg[0] ;
  output [13:0]\div_data_reg_reg[13] ;
  output [13:0]Q;
  output [13:0]\max_reg_reg[13] ;
  input rst_IBUF;
  input last_sample;
  input clk_IBUF_BUFG;
  input n_samples_reg_reg_0;
  input [9:0]ADDRARDADDR;
  input [13:0]x20;
  input [3:0]O;
  input [3:0]\acc_data_in_reg_reg[7] ;
  input [3:0]\acc_data_in_reg_reg[11]_0 ;
  input [3:0]DI;
  input [3:0]S;
  input [2:0]\max_reg_reg[0] ;
  input [2:0]\max_reg_reg[0]_0 ;
  input [3:0]min_reg1_carry__0;
  input [3:0]min_reg1_carry__0_0;
  input [2:0]\min_reg_reg[0] ;
  input [2:0]\min_reg_reg[0]_0 ;
  input FSM_sequential_current_state_reg;
  input FSM_sequential_current_state_reg_0;
  input [0:0]CO;
  input metrics_ready_reg_reg;
  input scale_pipe_fsm_ready_reg;
  input \FSM_onehot_current_state_reg[1] ;
  input metrics_ready_reg;
  input display;
  input [1:0]metric_sel_IBUF;
  input [0:0]E;
  input [13:0]D;
  input [0:0]\min_reg_reg[0]_1 ;
  input [13:0]\min_reg_reg[13] ;
  input [11:0]P;
  input [1:0]current_state;
  input [11:0]DOADO;

  wire [9:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [13:0]D;
  wire [3:0]DI;
  wire [11:0]DOADO;
  wire [0:0]E;
  wire \FSM_onehot_current_state_reg[0] ;
  wire \FSM_onehot_current_state_reg[1] ;
  wire FSM_sequential_current_state_reg;
  wire FSM_sequential_current_state_reg_0;
  wire [3:0]O;
  wire [11:0]P;
  wire [13:0]Q;
  wire [3:0]S;
  wire [11:0]\acc_data_in_reg_reg[11] ;
  wire [3:0]\acc_data_in_reg_reg[11]_0 ;
  wire [3:0]\acc_data_in_reg_reg[7] ;
  wire clk_IBUF_BUFG;
  wire comp_en;
  wire comp_en_0;
  wire [1:0]current_state;
  wire [0:0]data0_q2_12_reg;
  wire display;
  wire [13:0]\div_data_reg_reg[13] ;
  wire last_sample;
  wire last_sample_reg;
  wire lut_div_n_0;
  wire lut_div_n_1;
  wire lut_div_n_2;
  wire lut_div_n_3;
  wire lut_div_n_4;
  wire lut_div_n_5;
  wire [2:0]\max_reg_reg[0] ;
  wire [2:0]\max_reg_reg[0]_0 ;
  wire [13:0]\max_reg_reg[13] ;
  wire mean_inst_n_26;
  wire mean_inst_n_27;
  wire mean_inst_n_28;
  wire mean_ready;
  wire [1:0]metric_sel_IBUF;
  wire metrics_ready;
  wire metrics_ready_reg;
  wire metrics_ready_reg_reg;
  wire [3:0]min_reg1_carry__0;
  wire [3:0]min_reg1_carry__0_0;
  wire [2:0]\min_reg_reg[0] ;
  wire [2:0]\min_reg_reg[0]_0 ;
  wire [0:0]\min_reg_reg[0]_1 ;
  wire [0:0]\min_reg_reg[12] ;
  wire [13:0]\min_reg_reg[13] ;
  wire n_samples_reg_reg_0;
  wire n_samples_reg_reg_n_16;
  wire n_samples_reg_reg_n_17;
  wire n_samples_reg_reg_n_18;
  wire n_samples_reg_reg_n_19;
  wire n_samples_reg_reg_n_20;
  wire n_samples_reg_reg_n_21;
  wire n_samples_reg_reg_n_22;
  wire n_samples_reg_reg_n_23;
  wire n_samples_reg_reg_n_24;
  wire n_samples_reg_reg_n_25;
  wire n_samples_reg_reg_n_26;
  wire n_samples_reg_reg_n_27;
  wire n_samples_reg_reg_n_28;
  wire n_samples_reg_reg_n_29;
  wire n_samples_reg_reg_n_30;
  wire n_samples_reg_reg_n_31;
  wire n_samples_reg_reg_n_32;
  wire n_samples_reg_reg_n_33;
  wire n_samples_reg_reg_n_34;
  wire n_samples_reg_reg_n_35;
  wire [17:4]nr_sqrtx_reg;
  wire rms_ready;
  wire rst_IBUF;
  wire scale_pipe_fsm_ready_reg;
  wire [13:0]x20;
  wire NLW_n_samples_reg_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_n_samples_reg_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_n_samples_reg_reg_DBITERR_UNCONNECTED;
  wire NLW_n_samples_reg_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_n_samples_reg_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_n_samples_reg_reg_SBITERR_UNCONNECTED;
  wire [31:20]NLW_n_samples_reg_reg_DOADO_UNCONNECTED;
  wire [31:0]NLW_n_samples_reg_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_n_samples_reg_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_n_samples_reg_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_n_samples_reg_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_n_samples_reg_reg_RDADDRECC_UNCONNECTED;

  div_lut lut_div
       (.D({n_samples_reg_reg_n_16,n_samples_reg_reg_n_17,n_samples_reg_reg_n_18}),
        .Q({lut_div_n_3,lut_div_n_4,lut_div_n_5}),
        .S({lut_div_n_0,lut_div_n_1,lut_div_n_2}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .div_data0__0_carry({mean_inst_n_26,mean_inst_n_27,mean_inst_n_28}),
        .rst_IBUF(rst_IBUF));
  max max_inst
       (.D(D),
        .DI(DI),
        .E(E),
        .FSM_sequential_current_state_reg(FSM_sequential_current_state_reg),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .comp_en(comp_en),
        .data0_q2_12_reg(data0_q2_12_reg),
        .\max_reg_reg[0]_0 (\max_reg_reg[0] ),
        .\max_reg_reg[0]_1 (\max_reg_reg[0]_0 ),
        .\max_reg_reg[13]_0 (\max_reg_reg[13] ),
        .rst_IBUF(rst_IBUF));
  mean mean_inst
       (.CO(CO),
        .DOADO({n_samples_reg_reg_n_19,n_samples_reg_reg_n_20,n_samples_reg_reg_n_21,n_samples_reg_reg_n_22,n_samples_reg_reg_n_23,n_samples_reg_reg_n_24,n_samples_reg_reg_n_25,n_samples_reg_reg_n_26,n_samples_reg_reg_n_27,n_samples_reg_reg_n_28,n_samples_reg_reg_n_29,n_samples_reg_reg_n_30,n_samples_reg_reg_n_31,n_samples_reg_reg_n_32,n_samples_reg_reg_n_33,n_samples_reg_reg_n_34,n_samples_reg_reg_n_35}),
        .\FSM_onehot_current_state_reg[1] (\FSM_onehot_current_state_reg[1] ),
        .O(O),
        .P(nr_sqrtx_reg),
        .Q(Q),
        .S({lut_div_n_0,lut_div_n_1,lut_div_n_2}),
        .\acc_data_in_reg_reg[11]_0 (\acc_data_in_reg_reg[11] ),
        .\acc_data_in_reg_reg[11]_1 (\acc_data_in_reg_reg[11]_0 ),
        .\acc_data_in_reg_reg[7]_0 (\acc_data_in_reg_reg[7] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .current_state(current_state),
        .\div_data0[-1111111109]_0 ({mean_inst_n_26,mean_inst_n_27,mean_inst_n_28}),
        .div_data0_0(P),
        .div_data0_1(DOADO),
        .div_data0__0_carry__0_0({lut_div_n_3,lut_div_n_4,lut_div_n_5}),
        .\div_data_reg_reg[13]_0 (\div_data_reg_reg[13] ),
        .last_sample_reg(last_sample_reg),
        .mean_ready(mean_ready),
        .metric_scaled_reg_reg(\max_reg_reg[13] ),
        .metric_sel_IBUF(metric_sel_IBUF),
        .rst_IBUF(rst_IBUF),
        .scale_pipe_fsm_ready_reg(scale_pipe_fsm_ready_reg));
  min min_inst
       (.FSM_sequential_current_state_reg(FSM_sequential_current_state_reg_0),
        .Q(rms_ready),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .comp_en(comp_en),
        .comp_en_0(comp_en_0),
        .mean_ready(mean_ready),
        .metrics_ready(metrics_ready),
        .metrics_ready_reg_reg(metrics_ready_reg_reg),
        .min_reg1_carry__0_0(min_reg1_carry__0),
        .min_reg1_carry__0_1(min_reg1_carry__0_0),
        .\min_reg_reg[0]_0 (\min_reg_reg[0] ),
        .\min_reg_reg[0]_1 (\min_reg_reg[0]_0 ),
        .\min_reg_reg[0]_2 (\min_reg_reg[0]_1 ),
        .\min_reg_reg[12]_0 (\min_reg_reg[12] ),
        .\min_reg_reg[13]_0 (Q),
        .\min_reg_reg[13]_1 (\min_reg_reg[13] ),
        .rst_IBUF(rst_IBUF));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d20" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "20480" *) 
  (* RTL_RAM_NAME = "processing_thread_inst/n_samples_reg_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "19" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000111110001249200013B13000155550001745D000199990001C71C00020000),
    .INIT_01(256'h0000B2160000BA2E0000C30C0000CCCC0000D7940000E38E0000F0F000010000),
    .INIT_02(256'h000084210000888800008D3D00009249000097B400009D890000A3D70000AAAA),
    .INIT_03(256'h0000690600006BCA00006EB3000071C7000075070000787800007C1F00008000),
    .INIT_04(256'h000057260000590B00005B0500005D1700005F4100006186000063E700006666),
    .INIT_05(256'h00004A7900004BDA00004D4800004EC400005050000051EB0000539700005555),
    .INIT_06(256'h000041040000421000004325000044440000456C0000469E000047DC00004924),
    .INIT_07(256'h000039B000003A8300003B5C00003C3C00003D2200003E0F00003F0300004000),
    .INIT_08(256'h000033D90000348300003531000035E50000369D000037590000381C000038E3),
    .INIT_09(256'h00002F1400002FA000003030000030C300003159000031F30000329100003333),
    .INIT_0A(256'h00002B1D00002B9300002C0B00002C8500002D0200002D8200002E0500002E8B),
    .INIT_0B(256'h000027C4000028280000288D000028F50000295F000029CB00002A3A00002AAA),
    .INIT_0C(256'h000024E60000253C00002593000025ED00002647000026A40000270200002762),
    .INIT_0D(256'h0000226B000022B6000023020000234F0000239E000023EE0000243F00002492),
    .INIT_0E(256'h0000204000002082000020C4000021080000214D00002192000021D900002222),
    .INIT_0F(256'h00001E5700001E9100001ECC00001F0700001F4400001F8100001FC000002000),
    .INIT_10(256'h00001CA400001CD800001D0C00001D4100001D7700001DAE00001DE500001E1E),
    .INIT_11(256'h00001B2000001B4E00001B7D00001BAC00001BDD00001C0E00001C3F00001C71),
    .INIT_12(256'h000019C2000019EC00001A1600001A4100001A6D00001A9800001AC500001AF2),
    .INIT_13(256'h00001886000018AC000018D3000018F900001920000019480000197000001999),
    .INIT_14(256'h000017670000178A000017AD000017D0000017F4000018180000183C00001861),
    .INIT_15(256'h0000166100001681000016A1000016C1000016E1000017020000172400001745),
    .INIT_16(256'h000015710000158E000015AC000015C9000015E7000016050000162300001642),
    .INIT_17(256'h00001495000014AF000014CA000014E5000015010000151D0000153900001555),
    .INIT_18(256'h000013C9000013E2000013FB000014140000142D00001446000014600000147A),
    .INIT_19(256'h0000130D000013230000133A00001352000013690000138100001399000013B1),
    .INIT_1A(256'h0000125E00001273000012880000129E000012B4000012C9000012E0000012F6),
    .INIT_1B(256'h000011BB000011CF000011E2000011F70000120B0000121F0000123400001249),
    .INIT_1C(256'h0000112300001135000011480000115B0000116E0000118100001194000011A7),
    .INIT_1D(256'h00001095000010A6000010B7000010C9000010DB000010EC000010FE00001111),
    .INIT_1E(256'h0000101000001020000010300000104100001051000010620000107300001084),
    .INIT_1F(256'h00000F9200000FA200000FB100000FC000000FD000000FE000000FF000001000),
    .INIT_20(256'h00000F1D00000F2B00000F3A00000F4800000F5700000F6600000F7400000F83),
    .INIT_21(256'h00000EAE00000EBB00000EC900000ED700000EE500000EF200000F0000000F0F),
    .INIT_22(256'h00000E4500000E5200000E5F00000E6C00000E7900000E8600000E9300000EA0),
    .INIT_23(256'h00000DE200000DEE00000DFA00000E0700000E1300000E1F00000E2C00000E38),
    .INIT_24(256'h00000D8400000D9000000D9B00000DA700000DB200000DBE00000DCA00000DD6),
    .INIT_25(256'h00000D2B00000D3600000D4100000D4C00000D5700000D6200000D6D00000D79),
    .INIT_26(256'h00000CD700000CE100000CEB00000CF600000D0000000D0B00000D1600000D20),
    .INIT_27(256'h00000C8600000C9000000C9A00000CA400000CAE00000CB800000CC200000CCC),
    .INIT_28(256'h00000C3A00000C4300000C4C00000C5600000C5F00000C6900000C7300000C7C),
    .INIT_29(256'h00000BF100000BFA00000C0300000C0C00000C1500000C1E00000C2700000C30),
    .INIT_2A(256'h00000BAB00000BB300000BBC00000BC500000BCD00000BD600000BDF00000BE8),
    .INIT_2B(256'h00000B6800000B7000000B7900000B8100000B8900000B9200000B9A00000BA2),
    .INIT_2C(256'h00000B2900000B3000000B3800000B4000000B4800000B5000000B5800000B60),
    .INIT_2D(256'h00000AEC00000AF300000AFB00000B0200000B0A00000B1100000B1900000B21),
    .INIT_2E(256'h00000AB100000AB800000AC000000AC700000ACE00000AD600000ADD00000AE4),
    .INIT_2F(256'h00000A7900000A8000000A8700000A8E00000A9500000A9C00000AA300000AAA),
    .INIT_30(256'h00000A4400000A4A00000A5100000A5700000A5E00000A6500000A6C00000A72),
    .INIT_31(256'h00000A1000000A1600000A1D00000A2300000A2900000A3000000A3600000A3D),
    .INIT_32(256'h000009DE000009E4000009EA000009F1000009F7000009FD00000A0300000A0A),
    .INIT_33(256'h000009AE000009B4000009BA000009C0000009C6000009CC000009D2000009D8),
    .INIT_34(256'h00000980000009860000098C00000991000009970000099D000009A3000009A9),
    .INIT_35(256'h000009540000095A0000095F000009640000096A00000970000009750000097B),
    .INIT_36(256'h000009290000092F00000934000009390000093E00000944000009490000094F),
    .INIT_37(256'h00000900000009050000090A0000090F000009150000091A0000091F00000924),
    .INIT_38(256'h000008D8000008DD000008E2000008E7000008EC000008F1000008F6000008FB),
    .INIT_39(256'h000008B2000008B7000008BB000008C0000008C5000008CA000008CF000008D3),
    .INIT_3A(256'h0000088D00000891000008960000089A0000089F000008A4000008A8000008AD),
    .INIT_3B(256'h000008690000086D00000872000008760000087A0000087F0000088300000888),
    .INIT_3C(256'h000008460000084A0000084E00000853000008570000085B0000086000000864),
    .INIT_3D(256'h00000824000008280000082C0000083100000835000008390000083D00000842),
    .INIT_3E(256'h00000804000008080000080C0000081000000814000008180000081C00000820),
    .INIT_3F(256'h000007E4000007E8000007EC000007F0000007F4000007F8000007FC00000800),
    .INIT_40(256'h000007C5000007C9000007CD000007D1000007D4000007D8000007DC000007E0),
    .INIT_41(256'h000007A7000007AB000007AF000007B3000007B6000007BA000007BE000007C1),
    .INIT_42(256'h0000078B0000078E0000079200000795000007990000079D000007A0000007A4),
    .INIT_43(256'h0000076F0000077200000775000007790000077C000007800000078300000787),
    .INIT_44(256'h00000753000007570000075A0000075D0000076100000764000007680000076B),
    .INIT_45(256'h000007390000073C0000073F0000074300000746000007490000074D00000750),
    .INIT_46(256'h0000071F0000072200000725000007290000072C0000072F0000073200000736),
    .INIT_47(256'h00000706000007090000070C0000070F0000071300000716000007190000071C),
    .INIT_48(256'h000006EE000006F1000006F4000006F7000006FA000006FD0000070000000703),
    .INIT_49(256'h000006D6000006D9000006DC000006DF000006E2000006E5000006E8000006EB),
    .INIT_4A(256'h000006BF000006C2000006C5000006C8000006CA000006CD000006D0000006D3),
    .INIT_4B(256'h000006A9000006AB000006AE000006B1000006B4000006B6000006B9000006BC),
    .INIT_4C(256'h0000069300000695000006980000069B0000069D000006A0000006A3000006A6),
    .INIT_4D(256'h0000067D000006800000068300000685000006880000068B0000068D00000690),
    .INIT_4E(256'h000006680000066B0000066E000006700000067300000675000006780000067B),
    .INIT_4F(256'h0000065400000657000006590000065C0000065E000006610000066300000666),
    .INIT_50(256'h000006400000064300000645000006480000064A0000064D0000064F00000652),
    .INIT_51(256'h0000062D0000062F000006320000063400000637000006390000063C0000063E),
    .INIT_52(256'h0000061A0000061D0000061F000006210000062400000626000006280000062B),
    .INIT_53(256'h000006080000060A0000060C0000060F00000611000006130000061600000618),
    .INIT_54(256'h000005F6000005F8000005FA000005FD000005FF000006010000060300000606),
    .INIT_55(256'h000005E4000005E6000005E9000005EB000005ED000005EF000005F1000005F4),
    .INIT_56(256'h000005D3000005D5000005D7000005D9000005DC000005DE000005E0000005E2),
    .INIT_57(256'h000005C2000005C4000005C6000005C9000005CB000005CD000005CF000005D1),
    .INIT_58(256'h000005B2000005B4000005B6000005B8000005BA000005BC000005BE000005C0),
    .INIT_59(256'h000005A2000005A4000005A6000005A8000005AA000005AC000005AE000005B0),
    .INIT_5A(256'h000005920000059400000596000005980000059A0000059C0000059E000005A0),
    .INIT_5B(256'h000005830000058500000587000005880000058A0000058C0000058E00000590),
    .INIT_5C(256'h000005740000057600000577000005790000057B0000057D0000057F00000581),
    .INIT_5D(256'h0000056500000567000005690000056B0000056C0000056E0000057000000572),
    .INIT_5E(256'h00000557000005580000055A0000055C0000055E000005600000056100000563),
    .INIT_5F(256'h000005490000054A0000054C0000054E00000550000005510000055300000555),
    .INIT_60(256'h0000053B0000053C0000053E0000054000000542000005430000054500000547),
    .INIT_61(256'h0000052D0000052F000005300000053200000534000005360000053700000539),
    .INIT_62(256'h0000052000000522000005230000052500000526000005280000052A0000052B),
    .INIT_63(256'h00000513000005140000051600000518000005190000051B0000051D0000051E),
    .INIT_64(256'h0000050600000508000005090000050B0000050C0000050E0000051000000511),
    .INIT_65(256'h000004FA000004FB000004FD000004FE00000500000005010000050300000505),
    .INIT_66(256'h000004ED000004EF000004F0000004F2000004F3000004F5000004F7000004F8),
    .INIT_67(256'h000004E1000004E3000004E4000004E6000004E7000004E9000004EA000004EC),
    .INIT_68(256'h000004D5000004D7000004D8000004DA000004DB000004DD000004DE000004E0),
    .INIT_69(256'h000004CA000004CB000004CD000004CE000004D0000004D1000004D3000004D4),
    .INIT_6A(256'h000004BF000004C0000004C1000004C3000004C4000004C6000004C7000004C8),
    .INIT_6B(256'h000004B3000004B5000004B6000004B8000004B9000004BA000004BC000004BD),
    .INIT_6C(256'h000004A8000004AA000004AB000004AD000004AE000004AF000004B1000004B2),
    .INIT_6D(256'h0000049E0000049F000004A0000004A2000004A3000004A4000004A6000004A7),
    .INIT_6E(256'h00000493000004940000049600000497000004980000049A0000049B0000049C),
    .INIT_6F(256'h000004890000048A0000048B0000048D0000048E0000048F0000049000000492),
    .INIT_70(256'h0000047F00000480000004810000048200000484000004850000048600000487),
    .INIT_71(256'h00000474000004760000047700000478000004790000047B0000047C0000047D),
    .INIT_72(256'h0000046B0000046C0000046D0000046E00000470000004710000047200000473),
    .INIT_73(256'h0000046100000462000004630000046500000466000004670000046800000469),
    .INIT_74(256'h00000457000004590000045A0000045B0000045C0000045D0000045F00000460),
    .INIT_75(256'h0000044E0000044F000004500000045200000453000004540000045500000456),
    .INIT_76(256'h00000445000004460000044700000448000004490000044B0000044C0000044D),
    .INIT_77(256'h0000043C0000043D0000043E0000043F00000440000004410000044300000444),
    .INIT_78(256'h0000043300000434000004350000043600000437000004390000043A0000043B),
    .INIT_79(256'h0000042A0000042B0000042C0000042D0000042F000004300000043100000432),
    .INIT_7A(256'h0000042200000423000004240000042500000426000004270000042800000429),
    .INIT_7B(256'h000004190000041A0000041B0000041C0000041D0000041E0000041F00000421),
    .INIT_7C(256'h0000041100000412000004130000041400000415000004160000041700000418),
    .INIT_7D(256'h000004090000040A0000040B0000040C0000040D0000040E0000040F00000410),
    .INIT_7E(256'h0000040100000402000004030000040400000405000004060000040700000408),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(0)) 
    n_samples_reg_reg
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_n_samples_reg_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_n_samples_reg_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_n_samples_reg_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_n_samples_reg_reg_DOADO_UNCONNECTED[31:20],n_samples_reg_reg_n_16,n_samples_reg_reg_n_17,n_samples_reg_reg_n_18,n_samples_reg_reg_n_19,n_samples_reg_reg_n_20,n_samples_reg_reg_n_21,n_samples_reg_reg_n_22,n_samples_reg_reg_n_23,n_samples_reg_reg_n_24,n_samples_reg_reg_n_25,n_samples_reg_reg_n_26,n_samples_reg_reg_n_27,n_samples_reg_reg_n_28,n_samples_reg_reg_n_29,n_samples_reg_reg_n_30,n_samples_reg_reg_n_31,n_samples_reg_reg_n_32,n_samples_reg_reg_n_33,n_samples_reg_reg_n_34,n_samples_reg_reg_n_35}),
        .DOBDO(NLW_n_samples_reg_reg_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_n_samples_reg_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_n_samples_reg_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_n_samples_reg_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(n_samples_reg_reg_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_n_samples_reg_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_n_samples_reg_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_n_samples_reg_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_n_samples_reg_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  rms rms_inst
       (.DOADO({n_samples_reg_reg_n_16,n_samples_reg_reg_n_17,n_samples_reg_reg_n_18,n_samples_reg_reg_n_19,n_samples_reg_reg_n_20,n_samples_reg_reg_n_21,n_samples_reg_reg_n_22,n_samples_reg_reg_n_23,n_samples_reg_reg_n_24,n_samples_reg_reg_n_25,n_samples_reg_reg_n_26,n_samples_reg_reg_n_27,n_samples_reg_reg_n_28,n_samples_reg_reg_n_29,n_samples_reg_reg_n_30,n_samples_reg_reg_n_31,n_samples_reg_reg_n_32,n_samples_reg_reg_n_33,n_samples_reg_reg_n_34,n_samples_reg_reg_n_35}),
        .\FSM_onehot_current_state_reg[0] (\FSM_onehot_current_state_reg[0] ),
        .\FSM_onehot_current_state_reg[11] (\FSM_onehot_current_state_reg[1] ),
        .P(nr_sqrtx_reg),
        .Q(rms_ready),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .comp_en(comp_en),
        .comp_en_0(comp_en_0),
        .display(display),
        .last_sample(last_sample),
        .last_sample_reg(last_sample_reg),
        .mean_ready(mean_ready),
        .metrics_ready_reg(metrics_ready_reg),
        .rst_IBUF(rst_IBUF),
        .scale_pipe_fsm_ready_reg(scale_pipe_fsm_ready_reg),
        .x20_0(x20));
endmodule

module rms
   (last_sample_reg,
    P,
    Q,
    \FSM_onehot_current_state_reg[0] ,
    rst_IBUF,
    last_sample,
    clk_IBUF_BUFG,
    x20_0,
    DOADO,
    scale_pipe_fsm_ready_reg,
    \FSM_onehot_current_state_reg[11] ,
    metrics_ready_reg,
    mean_ready,
    display,
    comp_en,
    comp_en_0);
  output last_sample_reg;
  output [13:0]P;
  output [0:0]Q;
  output \FSM_onehot_current_state_reg[0] ;
  input rst_IBUF;
  input last_sample;
  input clk_IBUF_BUFG;
  input [13:0]x20_0;
  input [19:0]DOADO;
  input scale_pipe_fsm_ready_reg;
  input \FSM_onehot_current_state_reg[11] ;
  input metrics_ready_reg;
  input mean_ready;
  input display;
  input comp_en;
  input comp_en_0;

  wire [17:0]A;
  wire [17:0]B;
  wire [33:17]C;
  wire [19:0]DOADO;
  wire \FSM_onehot_current_state_reg[0] ;
  wire \FSM_onehot_current_state_reg[11] ;
  wire [13:0]P;
  wire [0:0]Q;
  wire acc_en;
  wire [33:0]acc_x2;
  wire \acc_x2_reg[0]_i_2_n_0 ;
  wire \acc_x2_reg[0]_i_3_n_0 ;
  wire \acc_x2_reg[0]_i_4_n_0 ;
  wire \acc_x2_reg[0]_i_5_n_0 ;
  wire \acc_x2_reg[12]_i_2_n_0 ;
  wire \acc_x2_reg[12]_i_3_n_0 ;
  wire \acc_x2_reg[12]_i_4_n_0 ;
  wire \acc_x2_reg[12]_i_5_n_0 ;
  wire \acc_x2_reg[16]_i_2_n_0 ;
  wire \acc_x2_reg[16]_i_3_n_0 ;
  wire \acc_x2_reg[16]_i_4_n_0 ;
  wire \acc_x2_reg[16]_i_5_n_0 ;
  wire \acc_x2_reg[20]_i_2_n_0 ;
  wire \acc_x2_reg[20]_i_3_n_0 ;
  wire \acc_x2_reg[20]_i_4_n_0 ;
  wire \acc_x2_reg[20]_i_5_n_0 ;
  wire \acc_x2_reg[4]_i_2_n_0 ;
  wire \acc_x2_reg[4]_i_3_n_0 ;
  wire \acc_x2_reg[4]_i_4_n_0 ;
  wire \acc_x2_reg[4]_i_5_n_0 ;
  wire \acc_x2_reg[8]_i_2_n_0 ;
  wire \acc_x2_reg[8]_i_3_n_0 ;
  wire \acc_x2_reg[8]_i_4_n_0 ;
  wire \acc_x2_reg[8]_i_5_n_0 ;
  wire [33:0]acc_x2_reg_reg;
  wire \acc_x2_reg_reg[0]_i_1_n_0 ;
  wire \acc_x2_reg_reg[0]_i_1_n_4 ;
  wire \acc_x2_reg_reg[0]_i_1_n_5 ;
  wire \acc_x2_reg_reg[0]_i_1_n_6 ;
  wire \acc_x2_reg_reg[0]_i_1_n_7 ;
  wire \acc_x2_reg_reg[12]_i_1_n_0 ;
  wire \acc_x2_reg_reg[12]_i_1_n_4 ;
  wire \acc_x2_reg_reg[12]_i_1_n_5 ;
  wire \acc_x2_reg_reg[12]_i_1_n_6 ;
  wire \acc_x2_reg_reg[12]_i_1_n_7 ;
  wire \acc_x2_reg_reg[16]_i_1_n_0 ;
  wire \acc_x2_reg_reg[16]_i_1_n_4 ;
  wire \acc_x2_reg_reg[16]_i_1_n_5 ;
  wire \acc_x2_reg_reg[16]_i_1_n_6 ;
  wire \acc_x2_reg_reg[16]_i_1_n_7 ;
  wire \acc_x2_reg_reg[20]_i_1_n_0 ;
  wire \acc_x2_reg_reg[20]_i_1_n_4 ;
  wire \acc_x2_reg_reg[20]_i_1_n_5 ;
  wire \acc_x2_reg_reg[20]_i_1_n_6 ;
  wire \acc_x2_reg_reg[20]_i_1_n_7 ;
  wire \acc_x2_reg_reg[24]_i_1_n_0 ;
  wire \acc_x2_reg_reg[24]_i_1_n_4 ;
  wire \acc_x2_reg_reg[24]_i_1_n_5 ;
  wire \acc_x2_reg_reg[24]_i_1_n_6 ;
  wire \acc_x2_reg_reg[24]_i_1_n_7 ;
  wire \acc_x2_reg_reg[28]_i_1_n_0 ;
  wire \acc_x2_reg_reg[28]_i_1_n_4 ;
  wire \acc_x2_reg_reg[28]_i_1_n_5 ;
  wire \acc_x2_reg_reg[28]_i_1_n_6 ;
  wire \acc_x2_reg_reg[28]_i_1_n_7 ;
  wire \acc_x2_reg_reg[32]_i_1_n_6 ;
  wire \acc_x2_reg_reg[32]_i_1_n_7 ;
  wire \acc_x2_reg_reg[4]_i_1_n_0 ;
  wire \acc_x2_reg_reg[4]_i_1_n_4 ;
  wire \acc_x2_reg_reg[4]_i_1_n_5 ;
  wire \acc_x2_reg_reg[4]_i_1_n_6 ;
  wire \acc_x2_reg_reg[4]_i_1_n_7 ;
  wire \acc_x2_reg_reg[8]_i_1_n_0 ;
  wire \acc_x2_reg_reg[8]_i_1_n_4 ;
  wire \acc_x2_reg_reg[8]_i_1_n_5 ;
  wire \acc_x2_reg_reg[8]_i_1_n_6 ;
  wire \acc_x2_reg_reg[8]_i_1_n_7 ;
  wire clk_IBUF_BUFG;
  wire comp_en;
  wire comp_en_0;
  wire [5:0]data0;
  wire display;
  wire div0_en;
  wire div1_en;
  wire div_upper_i_10_n_0;
  wire div_upper_i_11_n_0;
  wire div_upper_i_12_n_0;
  wire div_upper_i_13_n_0;
  wire div_upper_i_14_n_0;
  wire div_upper_i_3_n_0;
  wire div_upper_i_4_n_0;
  wire div_upper_i_5_n_0;
  wire div_upper_i_6_n_0;
  wire div_upper_i_7_n_0;
  wire div_upper_i_8_n_0;
  wire div_upper_i_9_n_0;
  wire div_x20_i_10_n_0;
  wire div_x20_i_11_n_0;
  wire div_x20_i_12_n_0;
  wire div_x20_i_13_n_0;
  wire div_x20_i_14_n_0;
  wire div_x20_i_15_n_0;
  wire div_x20_i_16_n_0;
  wire div_x20_i_17_n_0;
  wire div_x20_i_18_n_0;
  wire div_x20_i_19_n_0;
  wire div_x20_i_1_n_0;
  wire div_x20_i_20_n_0;
  wire div_x20_i_2_n_0;
  wire div_x20_i_3_n_0;
  wire div_x20_i_4_n_0;
  wire div_x20_i_5_n_0;
  wire div_x20_i_6_n_0;
  wire div_x20_i_7_n_0;
  wire div_x20_i_8_n_0;
  wire div_x20_i_9_n_0;
  wire [43:17]div_x21;
  wire \div_x2_reg_reg_n_0_[10] ;
  wire \div_x2_reg_reg_n_0_[17] ;
  wire \div_x2_reg_reg_n_0_[7] ;
  wire \div_x2_reg_reg_n_0_[8] ;
  wire \div_x2_reg_reg_n_0_[9] ;
  wire fsm_rms_n_30;
  wire fsm_rms_n_31;
  wire fsm_rms_n_32;
  wire fsm_rms_n_33;
  wire fsm_rms_n_34;
  wire fsm_rms_n_35;
  wire fsm_rms_n_36;
  wire fsm_rms_n_37;
  wire fsm_rms_n_38;
  wire fsm_rms_n_39;
  wire fsm_rms_n_40;
  wire fsm_rms_n_41;
  wire fsm_rms_n_42;
  wire fsm_rms_n_43;
  wire fsm_rms_n_44;
  wire fsm_rms_n_45;
  wire fsm_rms_n_46;
  wire fsm_rms_n_47;
  wire fsm_rms_n_48;
  wire [23:0]in;
  wire [2:1]k_exp_reg;
  wire \k_exp_reg[1]_i_1_n_0 ;
  wire \k_exp_reg[2]_i_1_n_0 ;
  wire last_sample;
  wire last_sample_reg;
  wire last_sample_reg1;
  wire [0:0]\leading_one/k_exp__5 ;
  wire lut_norm_n_17;
  wire lut_norm_n_18;
  wire lut_norm_n_19;
  wire lut_norm_n_20;
  wire lut_norm_n_21;
  wire lut_norm_n_22;
  wire lut_norm_n_23;
  wire lut_norm_n_24;
  wire lut_norm_n_25;
  wire lut_norm_n_26;
  wire lut_norm_n_27;
  wire lut_norm_n_28;
  wire lut_norm_n_29;
  wire lut_norm_n_30;
  wire lut_norm_n_31;
  wire lut_norm_n_32;
  wire lut_norm_n_33;
  wire mean_ready;
  wire metrics_ready_reg;
  wire mult_en;
  wire norm0_en;
  wire norm1_en;
  wire nr0_en;
  wire nr1_en;
  wire nr2_en;
  wire nr3_en;
  wire nr4_en;
  wire [17:0]nr_xk0;
  wire nr_xk0_odd0_n_70;
  wire nr_xk0_odd0_n_71;
  wire nr_xk0_odd0_n_72;
  wire nr_xk0_odd0_n_73;
  wire nr_xk0_odd0_n_74;
  wire nr_xk0_odd0_n_75;
  wire nr_xk0_odd0_n_76;
  wire nr_xk0_odd0_n_77;
  wire nr_xk0_odd0_n_78;
  wire nr_xk0_odd0_n_79;
  wire nr_xk0_odd0_n_80;
  wire nr_xk0_odd0_n_81;
  wire nr_xk0_odd0_n_82;
  wire nr_xk0_odd0_n_83;
  wire nr_xk0_odd0_n_84;
  wire nr_xk0_odd0_n_85;
  wire nr_xk0_odd0_n_86;
  wire nr_xk0_odd0_n_87;
  wire [17:0]nr_xk0_scaled;
  wire nr_xk20_n_72;
  wire nr_xk20_n_73;
  wire nr_xk20_n_74;
  wire nr_xk20_n_75;
  wire nr_xk20_n_76;
  wire nr_xk20_n_77;
  wire nr_xk20_n_78;
  wire nr_xk20_n_79;
  wire nr_xk20_n_80;
  wire nr_xk20_n_81;
  wire nr_xk20_n_82;
  wire nr_xk20_n_83;
  wire nr_xk20_n_84;
  wire nr_xk20_n_85;
  wire nr_xk20_n_86;
  wire nr_xk20_n_87;
  wire nr_xk20_n_88;
  wire nr_xk20_n_89;
  wire [17:0]nr_xk2x_reg;
  wire nr_xk_2_3_xk2x0_i_10_n_0;
  wire nr_xk_2_3_xk2x0_i_11_n_0;
  wire nr_xk_2_3_xk2x0_i_12_n_0;
  wire nr_xk_2_3_xk2x0_i_13_n_0;
  wire nr_xk_2_3_xk2x0_i_14_n_0;
  wire nr_xk_2_3_xk2x0_i_15_n_0;
  wire nr_xk_2_3_xk2x0_i_16_n_0;
  wire nr_xk_2_3_xk2x0_i_17_n_0;
  wire nr_xk_2_3_xk2x0_i_18_n_0;
  wire nr_xk_2_3_xk2x0_i_19_n_0;
  wire nr_xk_2_3_xk2x0_i_1_n_7;
  wire nr_xk_2_3_xk2x0_i_20_n_0;
  wire nr_xk_2_3_xk2x0_i_21_n_0;
  wire nr_xk_2_3_xk2x0_i_22_n_0;
  wire nr_xk_2_3_xk2x0_i_2_n_0;
  wire nr_xk_2_3_xk2x0_i_2_n_4;
  wire nr_xk_2_3_xk2x0_i_2_n_5;
  wire nr_xk_2_3_xk2x0_i_2_n_6;
  wire nr_xk_2_3_xk2x0_i_2_n_7;
  wire nr_xk_2_3_xk2x0_i_3_n_0;
  wire nr_xk_2_3_xk2x0_i_3_n_4;
  wire nr_xk_2_3_xk2x0_i_3_n_5;
  wire nr_xk_2_3_xk2x0_i_3_n_6;
  wire nr_xk_2_3_xk2x0_i_3_n_7;
  wire nr_xk_2_3_xk2x0_i_4_n_0;
  wire nr_xk_2_3_xk2x0_i_4_n_4;
  wire nr_xk_2_3_xk2x0_i_4_n_5;
  wire nr_xk_2_3_xk2x0_i_4_n_6;
  wire nr_xk_2_3_xk2x0_i_4_n_7;
  wire nr_xk_2_3_xk2x0_i_5_n_0;
  wire nr_xk_2_3_xk2x0_i_5_n_4;
  wire nr_xk_2_3_xk2x0_i_5_n_5;
  wire nr_xk_2_3_xk2x0_i_5_n_6;
  wire nr_xk_2_3_xk2x0_i_5_n_7;
  wire nr_xk_2_3_xk2x0_i_6_n_0;
  wire nr_xk_2_3_xk2x0_i_7_n_0;
  wire nr_xk_2_3_xk2x0_i_8_n_0;
  wire nr_xk_2_3_xk2x0_i_9_n_0;
  wire [17:0]nr_xk_2_3_xk2x_reg;
  wire rst_IBUF;
  wire scale_pipe_fsm_ready_reg;
  wire [13:0]x20_0;
  wire [2:0]\NLW_acc_x2_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_x2_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_x2_reg_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_x2_reg_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_x2_reg_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_x2_reg_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_acc_x2_reg_reg[32]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_x2_reg_reg[32]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_acc_x2_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_x2_reg_reg[8]_i_1_CO_UNCONNECTED ;
  wire NLW_div_upper_CARRYCASCOUT_UNCONNECTED;
  wire NLW_div_upper_MULTSIGNOUT_UNCONNECTED;
  wire NLW_div_upper_OVERFLOW_UNCONNECTED;
  wire NLW_div_upper_PATTERNBDETECT_UNCONNECTED;
  wire NLW_div_upper_PATTERNDETECT_UNCONNECTED;
  wire NLW_div_upper_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_div_upper_ACOUT_UNCONNECTED;
  wire [17:0]NLW_div_upper_BCOUT_UNCONNECTED;
  wire [3:0]NLW_div_upper_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_div_upper_P_UNCONNECTED;
  wire [47:0]NLW_div_upper_PCOUT_UNCONNECTED;
  wire [3:0]NLW_div_upper_i_2_CO_UNCONNECTED;
  wire [3:2]NLW_div_upper_i_2_O_UNCONNECTED;
  wire [2:0]NLW_div_upper_i_3_CO_UNCONNECTED;
  wire [2:0]NLW_div_upper_i_4_CO_UNCONNECTED;
  wire [2:0]NLW_div_upper_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_div_upper_i_6_CO_UNCONNECTED;
  wire NLW_div_x20_CARRYCASCOUT_UNCONNECTED;
  wire NLW_div_x20_MULTSIGNOUT_UNCONNECTED;
  wire NLW_div_x20_OVERFLOW_UNCONNECTED;
  wire NLW_div_x20_PATTERNBDETECT_UNCONNECTED;
  wire NLW_div_x20_PATTERNDETECT_UNCONNECTED;
  wire NLW_div_x20_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_div_x20_ACOUT_UNCONNECTED;
  wire [17:0]NLW_div_x20_BCOUT_UNCONNECTED;
  wire [3:0]NLW_div_x20_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_div_x20_P_UNCONNECTED;
  wire [47:0]NLW_div_x20_PCOUT_UNCONNECTED;
  wire [2:0]NLW_div_x20_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_div_x20_i_2_CO_UNCONNECTED;
  wire [2:0]NLW_div_x20_i_3_CO_UNCONNECTED;
  wire [2:0]NLW_div_x20_i_4_CO_UNCONNECTED;
  wire NLW_nr_sqrtx0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_nr_sqrtx0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_nr_sqrtx0_OVERFLOW_UNCONNECTED;
  wire NLW_nr_sqrtx0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_nr_sqrtx0_PATTERNDETECT_UNCONNECTED;
  wire NLW_nr_sqrtx0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_nr_sqrtx0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_nr_sqrtx0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_nr_sqrtx0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_nr_sqrtx0_P_UNCONNECTED;
  wire [47:0]NLW_nr_sqrtx0_PCOUT_UNCONNECTED;
  wire NLW_nr_xk0_odd0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_nr_xk0_odd0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_nr_xk0_odd0_OVERFLOW_UNCONNECTED;
  wire NLW_nr_xk0_odd0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_nr_xk0_odd0_PATTERNDETECT_UNCONNECTED;
  wire NLW_nr_xk0_odd0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_nr_xk0_odd0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_nr_xk0_odd0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_nr_xk0_odd0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_nr_xk0_odd0_P_UNCONNECTED;
  wire [47:0]NLW_nr_xk0_odd0_PCOUT_UNCONNECTED;
  wire NLW_nr_xk20_CARRYCASCOUT_UNCONNECTED;
  wire NLW_nr_xk20_MULTSIGNOUT_UNCONNECTED;
  wire NLW_nr_xk20_OVERFLOW_UNCONNECTED;
  wire NLW_nr_xk20_PATTERNBDETECT_UNCONNECTED;
  wire NLW_nr_xk20_PATTERNDETECT_UNCONNECTED;
  wire NLW_nr_xk20_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_nr_xk20_ACOUT_UNCONNECTED;
  wire [17:0]NLW_nr_xk20_BCOUT_UNCONNECTED;
  wire [3:0]NLW_nr_xk20_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_nr_xk20_P_UNCONNECTED;
  wire [47:0]NLW_nr_xk20_PCOUT_UNCONNECTED;
  wire NLW_nr_xk2x0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_nr_xk2x0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_nr_xk2x0_OVERFLOW_UNCONNECTED;
  wire NLW_nr_xk2x0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_nr_xk2x0_PATTERNDETECT_UNCONNECTED;
  wire NLW_nr_xk2x0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_nr_xk2x0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_nr_xk2x0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_nr_xk2x0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_nr_xk2x0_P_UNCONNECTED;
  wire [47:0]NLW_nr_xk2x0_PCOUT_UNCONNECTED;
  wire NLW_nr_xk_2_3_xk2x0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_nr_xk_2_3_xk2x0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_nr_xk_2_3_xk2x0_OVERFLOW_UNCONNECTED;
  wire NLW_nr_xk_2_3_xk2x0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_nr_xk_2_3_xk2x0_PATTERNDETECT_UNCONNECTED;
  wire NLW_nr_xk_2_3_xk2x0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_nr_xk_2_3_xk2x0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_nr_xk_2_3_xk2x0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_nr_xk_2_3_xk2x0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_nr_xk_2_3_xk2x0_P_UNCONNECTED;
  wire [47:0]NLW_nr_xk_2_3_xk2x0_PCOUT_UNCONNECTED;
  wire [3:0]NLW_nr_xk_2_3_xk2x0_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_nr_xk_2_3_xk2x0_i_1_O_UNCONNECTED;
  wire [2:0]NLW_nr_xk_2_3_xk2x0_i_2_CO_UNCONNECTED;
  wire [2:0]NLW_nr_xk_2_3_xk2x0_i_3_CO_UNCONNECTED;
  wire [2:0]NLW_nr_xk_2_3_xk2x0_i_4_CO_UNCONNECTED;
  wire [2:0]NLW_nr_xk_2_3_xk2x0_i_5_CO_UNCONNECTED;
  wire NLW_x20_CARRYCASCOUT_UNCONNECTED;
  wire NLW_x20_MULTSIGNOUT_UNCONNECTED;
  wire NLW_x20_OVERFLOW_UNCONNECTED;
  wire NLW_x20_PATTERNBDETECT_UNCONNECTED;
  wire NLW_x20_PATTERNDETECT_UNCONNECTED;
  wire NLW_x20_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_x20_ACOUT_UNCONNECTED;
  wire [17:0]NLW_x20_BCOUT_UNCONNECTED;
  wire [3:0]NLW_x20_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_x20_P_UNCONNECTED;
  wire [47:0]NLW_x20_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[0]_i_2 
       (.I0(in[3]),
        .I1(acc_x2_reg_reg[3]),
        .O(\acc_x2_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[0]_i_3 
       (.I0(in[2]),
        .I1(acc_x2_reg_reg[2]),
        .O(\acc_x2_reg[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[0]_i_4 
       (.I0(in[1]),
        .I1(acc_x2_reg_reg[1]),
        .O(\acc_x2_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[0]_i_5 
       (.I0(in[0]),
        .I1(acc_x2_reg_reg[0]),
        .O(\acc_x2_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[12]_i_2 
       (.I0(in[15]),
        .I1(acc_x2_reg_reg[15]),
        .O(\acc_x2_reg[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[12]_i_3 
       (.I0(in[14]),
        .I1(acc_x2_reg_reg[14]),
        .O(\acc_x2_reg[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[12]_i_4 
       (.I0(in[13]),
        .I1(acc_x2_reg_reg[13]),
        .O(\acc_x2_reg[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[12]_i_5 
       (.I0(in[12]),
        .I1(acc_x2_reg_reg[12]),
        .O(\acc_x2_reg[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[16]_i_2 
       (.I0(in[19]),
        .I1(acc_x2_reg_reg[19]),
        .O(\acc_x2_reg[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[16]_i_3 
       (.I0(in[18]),
        .I1(acc_x2_reg_reg[18]),
        .O(\acc_x2_reg[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[16]_i_4 
       (.I0(in[17]),
        .I1(acc_x2_reg_reg[17]),
        .O(\acc_x2_reg[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[16]_i_5 
       (.I0(in[16]),
        .I1(acc_x2_reg_reg[16]),
        .O(\acc_x2_reg[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[20]_i_2 
       (.I0(in[23]),
        .I1(acc_x2_reg_reg[23]),
        .O(\acc_x2_reg[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[20]_i_3 
       (.I0(in[22]),
        .I1(acc_x2_reg_reg[22]),
        .O(\acc_x2_reg[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[20]_i_4 
       (.I0(in[21]),
        .I1(acc_x2_reg_reg[21]),
        .O(\acc_x2_reg[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[20]_i_5 
       (.I0(in[20]),
        .I1(acc_x2_reg_reg[20]),
        .O(\acc_x2_reg[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[4]_i_2 
       (.I0(in[7]),
        .I1(acc_x2_reg_reg[7]),
        .O(\acc_x2_reg[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[4]_i_3 
       (.I0(in[6]),
        .I1(acc_x2_reg_reg[6]),
        .O(\acc_x2_reg[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[4]_i_4 
       (.I0(in[5]),
        .I1(acc_x2_reg_reg[5]),
        .O(\acc_x2_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[4]_i_5 
       (.I0(in[4]),
        .I1(acc_x2_reg_reg[4]),
        .O(\acc_x2_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[8]_i_2 
       (.I0(in[11]),
        .I1(acc_x2_reg_reg[11]),
        .O(\acc_x2_reg[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[8]_i_3 
       (.I0(in[10]),
        .I1(acc_x2_reg_reg[10]),
        .O(\acc_x2_reg[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[8]_i_4 
       (.I0(in[9]),
        .I1(acc_x2_reg_reg[9]),
        .O(\acc_x2_reg[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_x2_reg[8]_i_5 
       (.I0(in[8]),
        .I1(acc_x2_reg_reg[8]),
        .O(\acc_x2_reg[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[0]_i_1_n_7 ),
        .Q(acc_x2_reg_reg[0]),
        .R(fsm_rms_n_48));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_x2_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\acc_x2_reg_reg[0]_i_1_n_0 ,\NLW_acc_x2_reg_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\acc_x2_reg_reg[0]_i_1_n_4 ,\acc_x2_reg_reg[0]_i_1_n_5 ,\acc_x2_reg_reg[0]_i_1_n_6 ,\acc_x2_reg_reg[0]_i_1_n_7 }),
        .S({\acc_x2_reg[0]_i_2_n_0 ,\acc_x2_reg[0]_i_3_n_0 ,\acc_x2_reg[0]_i_4_n_0 ,\acc_x2_reg[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[8]_i_1_n_5 ),
        .Q(acc_x2_reg_reg[10]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[8]_i_1_n_4 ),
        .Q(acc_x2_reg_reg[11]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[12]_i_1_n_7 ),
        .Q(acc_x2_reg_reg[12]),
        .R(fsm_rms_n_48));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_x2_reg_reg[12]_i_1 
       (.CI(\acc_x2_reg_reg[8]_i_1_n_0 ),
        .CO({\acc_x2_reg_reg[12]_i_1_n_0 ,\NLW_acc_x2_reg_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in[15:12]),
        .O({\acc_x2_reg_reg[12]_i_1_n_4 ,\acc_x2_reg_reg[12]_i_1_n_5 ,\acc_x2_reg_reg[12]_i_1_n_6 ,\acc_x2_reg_reg[12]_i_1_n_7 }),
        .S({\acc_x2_reg[12]_i_2_n_0 ,\acc_x2_reg[12]_i_3_n_0 ,\acc_x2_reg[12]_i_4_n_0 ,\acc_x2_reg[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[12]_i_1_n_6 ),
        .Q(acc_x2_reg_reg[13]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[12]_i_1_n_5 ),
        .Q(acc_x2_reg_reg[14]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[12]_i_1_n_4 ),
        .Q(acc_x2_reg_reg[15]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[16]_i_1_n_7 ),
        .Q(acc_x2_reg_reg[16]),
        .R(fsm_rms_n_48));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_x2_reg_reg[16]_i_1 
       (.CI(\acc_x2_reg_reg[12]_i_1_n_0 ),
        .CO({\acc_x2_reg_reg[16]_i_1_n_0 ,\NLW_acc_x2_reg_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in[19:16]),
        .O({\acc_x2_reg_reg[16]_i_1_n_4 ,\acc_x2_reg_reg[16]_i_1_n_5 ,\acc_x2_reg_reg[16]_i_1_n_6 ,\acc_x2_reg_reg[16]_i_1_n_7 }),
        .S({\acc_x2_reg[16]_i_2_n_0 ,\acc_x2_reg[16]_i_3_n_0 ,\acc_x2_reg[16]_i_4_n_0 ,\acc_x2_reg[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[16]_i_1_n_6 ),
        .Q(acc_x2_reg_reg[17]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[16]_i_1_n_5 ),
        .Q(acc_x2_reg_reg[18]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[16]_i_1_n_4 ),
        .Q(acc_x2_reg_reg[19]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[0]_i_1_n_6 ),
        .Q(acc_x2_reg_reg[1]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[20]_i_1_n_7 ),
        .Q(acc_x2_reg_reg[20]),
        .R(fsm_rms_n_48));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_x2_reg_reg[20]_i_1 
       (.CI(\acc_x2_reg_reg[16]_i_1_n_0 ),
        .CO({\acc_x2_reg_reg[20]_i_1_n_0 ,\NLW_acc_x2_reg_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in[23:20]),
        .O({\acc_x2_reg_reg[20]_i_1_n_4 ,\acc_x2_reg_reg[20]_i_1_n_5 ,\acc_x2_reg_reg[20]_i_1_n_6 ,\acc_x2_reg_reg[20]_i_1_n_7 }),
        .S({\acc_x2_reg[20]_i_2_n_0 ,\acc_x2_reg[20]_i_3_n_0 ,\acc_x2_reg[20]_i_4_n_0 ,\acc_x2_reg[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[20]_i_1_n_6 ),
        .Q(acc_x2_reg_reg[21]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[20]_i_1_n_5 ),
        .Q(acc_x2_reg_reg[22]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[20]_i_1_n_4 ),
        .Q(acc_x2_reg_reg[23]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[24]_i_1_n_7 ),
        .Q(acc_x2_reg_reg[24]),
        .R(fsm_rms_n_48));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_x2_reg_reg[24]_i_1 
       (.CI(\acc_x2_reg_reg[20]_i_1_n_0 ),
        .CO({\acc_x2_reg_reg[24]_i_1_n_0 ,\NLW_acc_x2_reg_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\acc_x2_reg_reg[24]_i_1_n_4 ,\acc_x2_reg_reg[24]_i_1_n_5 ,\acc_x2_reg_reg[24]_i_1_n_6 ,\acc_x2_reg_reg[24]_i_1_n_7 }),
        .S(acc_x2_reg_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[24]_i_1_n_6 ),
        .Q(acc_x2_reg_reg[25]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[24]_i_1_n_5 ),
        .Q(acc_x2_reg_reg[26]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[24]_i_1_n_4 ),
        .Q(acc_x2_reg_reg[27]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[28]_i_1_n_7 ),
        .Q(acc_x2_reg_reg[28]),
        .R(fsm_rms_n_48));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_x2_reg_reg[28]_i_1 
       (.CI(\acc_x2_reg_reg[24]_i_1_n_0 ),
        .CO({\acc_x2_reg_reg[28]_i_1_n_0 ,\NLW_acc_x2_reg_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\acc_x2_reg_reg[28]_i_1_n_4 ,\acc_x2_reg_reg[28]_i_1_n_5 ,\acc_x2_reg_reg[28]_i_1_n_6 ,\acc_x2_reg_reg[28]_i_1_n_7 }),
        .S(acc_x2_reg_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[28]_i_1_n_6 ),
        .Q(acc_x2_reg_reg[29]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[0]_i_1_n_5 ),
        .Q(acc_x2_reg_reg[2]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[28]_i_1_n_5 ),
        .Q(acc_x2_reg_reg[30]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[28]_i_1_n_4 ),
        .Q(acc_x2_reg_reg[31]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[32]_i_1_n_7 ),
        .Q(acc_x2_reg_reg[32]),
        .R(fsm_rms_n_48));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_x2_reg_reg[32]_i_1 
       (.CI(\acc_x2_reg_reg[28]_i_1_n_0 ),
        .CO(\NLW_acc_x2_reg_reg[32]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_acc_x2_reg_reg[32]_i_1_O_UNCONNECTED [3:2],\acc_x2_reg_reg[32]_i_1_n_6 ,\acc_x2_reg_reg[32]_i_1_n_7 }),
        .S({1'b0,1'b0,acc_x2_reg_reg[33:32]}));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[32]_i_1_n_6 ),
        .Q(acc_x2_reg_reg[33]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[0]_i_1_n_4 ),
        .Q(acc_x2_reg_reg[3]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[4]_i_1_n_7 ),
        .Q(acc_x2_reg_reg[4]),
        .R(fsm_rms_n_48));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_x2_reg_reg[4]_i_1 
       (.CI(\acc_x2_reg_reg[0]_i_1_n_0 ),
        .CO({\acc_x2_reg_reg[4]_i_1_n_0 ,\NLW_acc_x2_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in[7:4]),
        .O({\acc_x2_reg_reg[4]_i_1_n_4 ,\acc_x2_reg_reg[4]_i_1_n_5 ,\acc_x2_reg_reg[4]_i_1_n_6 ,\acc_x2_reg_reg[4]_i_1_n_7 }),
        .S({\acc_x2_reg[4]_i_2_n_0 ,\acc_x2_reg[4]_i_3_n_0 ,\acc_x2_reg[4]_i_4_n_0 ,\acc_x2_reg[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[4]_i_1_n_6 ),
        .Q(acc_x2_reg_reg[5]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[4]_i_1_n_5 ),
        .Q(acc_x2_reg_reg[6]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[4]_i_1_n_4 ),
        .Q(acc_x2_reg_reg[7]),
        .R(fsm_rms_n_48));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[8]_i_1_n_7 ),
        .Q(acc_x2_reg_reg[8]),
        .R(fsm_rms_n_48));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \acc_x2_reg_reg[8]_i_1 
       (.CI(\acc_x2_reg_reg[4]_i_1_n_0 ),
        .CO({\acc_x2_reg_reg[8]_i_1_n_0 ,\NLW_acc_x2_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in[11:8]),
        .O({\acc_x2_reg_reg[8]_i_1_n_4 ,\acc_x2_reg_reg[8]_i_1_n_5 ,\acc_x2_reg_reg[8]_i_1_n_6 ,\acc_x2_reg_reg[8]_i_1_n_7 }),
        .S({\acc_x2_reg[8]_i_2_n_0 ,\acc_x2_reg[8]_i_3_n_0 ,\acc_x2_reg[8]_i_4_n_0 ,\acc_x2_reg[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_x2_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(acc_en),
        .D(\acc_x2_reg_reg[8]_i_1_n_6 ),
        .Q(acc_x2_reg_reg[9]),
        .R(fsm_rms_n_48));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    div_upper
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DOADO}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_div_upper_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,acc_x2[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_div_upper_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_div_upper_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_div_upper_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(acc_en),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(div0_en),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_div_upper_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_div_upper_OVERFLOW_UNCONNECTED),
        .P({NLW_div_upper_P_UNCONNECTED[47:27],div_x21}),
        .PATTERNBDETECT(NLW_div_upper_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_div_upper_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_div_upper_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(fsm_rms_n_48),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst_IBUF),
        .UNDERFLOW(NLW_div_upper_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    div_upper_i_10
       (.I0(acc_x2_reg_reg[20]),
        .I1(in[20]),
        .O(div_upper_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_upper_i_11
       (.I0(acc_x2_reg_reg[19]),
        .I1(in[19]),
        .O(div_upper_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_upper_i_12
       (.I0(acc_x2_reg_reg[18]),
        .I1(in[18]),
        .O(div_upper_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_upper_i_13
       (.I0(acc_x2_reg_reg[17]),
        .I1(in[17]),
        .O(div_upper_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_upper_i_14
       (.I0(acc_x2_reg_reg[16]),
        .I1(in[16]),
        .O(div_upper_i_14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_upper_i_2
       (.CI(div_upper_i_3_n_0),
        .CO(NLW_div_upper_i_2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_div_upper_i_2_O_UNCONNECTED[3:2],acc_x2[33:32]}),
        .S({1'b0,1'b0,acc_x2_reg_reg[33:32]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_upper_i_3
       (.CI(div_upper_i_4_n_0),
        .CO({div_upper_i_3_n_0,NLW_div_upper_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_x2[31:28]),
        .S(acc_x2_reg_reg[31:28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_upper_i_4
       (.CI(div_upper_i_5_n_0),
        .CO({div_upper_i_4_n_0,NLW_div_upper_i_4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(acc_x2[27:24]),
        .S(acc_x2_reg_reg[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_upper_i_5
       (.CI(div_upper_i_6_n_0),
        .CO({div_upper_i_5_n_0,NLW_div_upper_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(acc_x2_reg_reg[23:20]),
        .O(acc_x2[23:20]),
        .S({div_upper_i_7_n_0,div_upper_i_8_n_0,div_upper_i_9_n_0,div_upper_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_upper_i_6
       (.CI(div_x20_i_1_n_0),
        .CO({div_upper_i_6_n_0,NLW_div_upper_i_6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(acc_x2_reg_reg[19:16]),
        .O(acc_x2[19:16]),
        .S({div_upper_i_11_n_0,div_upper_i_12_n_0,div_upper_i_13_n_0,div_upper_i_14_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    div_upper_i_7
       (.I0(acc_x2_reg_reg[23]),
        .I1(in[23]),
        .O(div_upper_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_upper_i_8
       (.I0(acc_x2_reg_reg[22]),
        .I1(in[22]),
        .O(div_upper_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_upper_i_9
       (.I0(acc_x2_reg_reg[21]),
        .I1(in[21]),
        .O(div_upper_i_9_n_0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    div_x20
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DOADO}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_div_x20_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,acc_x2[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_div_x20_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,div_x21,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_div_x20_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_div_x20_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(acc_en),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(div0_en),
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_div_x20_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_div_x20_OVERFLOW_UNCONNECTED),
        .P({NLW_div_x20_P_UNCONNECTED[47:44],A,NLW_div_x20_P_UNCONNECTED[25:0]}),
        .PATTERNBDETECT(NLW_div_x20_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_div_x20_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_div_x20_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(fsm_rms_n_48),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(rst_IBUF),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_div_x20_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_x20_i_1
       (.CI(div_x20_i_2_n_0),
        .CO({div_x20_i_1_n_0,NLW_div_x20_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(acc_x2_reg_reg[15:12]),
        .O(acc_x2[15:12]),
        .S({div_x20_i_5_n_0,div_x20_i_6_n_0,div_x20_i_7_n_0,div_x20_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_10
       (.I0(acc_x2_reg_reg[10]),
        .I1(in[10]),
        .O(div_x20_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_11
       (.I0(acc_x2_reg_reg[9]),
        .I1(in[9]),
        .O(div_x20_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_12
       (.I0(acc_x2_reg_reg[8]),
        .I1(in[8]),
        .O(div_x20_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_13
       (.I0(acc_x2_reg_reg[7]),
        .I1(in[7]),
        .O(div_x20_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_14
       (.I0(acc_x2_reg_reg[6]),
        .I1(in[6]),
        .O(div_x20_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_15
       (.I0(acc_x2_reg_reg[5]),
        .I1(in[5]),
        .O(div_x20_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_16
       (.I0(acc_x2_reg_reg[4]),
        .I1(in[4]),
        .O(div_x20_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_17
       (.I0(acc_x2_reg_reg[3]),
        .I1(in[3]),
        .O(div_x20_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_18
       (.I0(acc_x2_reg_reg[2]),
        .I1(in[2]),
        .O(div_x20_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_19
       (.I0(acc_x2_reg_reg[1]),
        .I1(in[1]),
        .O(div_x20_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_x20_i_2
       (.CI(div_x20_i_3_n_0),
        .CO({div_x20_i_2_n_0,NLW_div_x20_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(acc_x2_reg_reg[11:8]),
        .O(acc_x2[11:8]),
        .S({div_x20_i_9_n_0,div_x20_i_10_n_0,div_x20_i_11_n_0,div_x20_i_12_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_20
       (.I0(acc_x2_reg_reg[0]),
        .I1(in[0]),
        .O(div_x20_i_20_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_x20_i_3
       (.CI(div_x20_i_4_n_0),
        .CO({div_x20_i_3_n_0,NLW_div_x20_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(acc_x2_reg_reg[7:4]),
        .O(acc_x2[7:4]),
        .S({div_x20_i_13_n_0,div_x20_i_14_n_0,div_x20_i_15_n_0,div_x20_i_16_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 div_x20_i_4
       (.CI(1'b0),
        .CO({div_x20_i_4_n_0,NLW_div_x20_i_4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(acc_x2_reg_reg[3:0]),
        .O(acc_x2[3:0]),
        .S({div_x20_i_17_n_0,div_x20_i_18_n_0,div_x20_i_19_n_0,div_x20_i_20_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_5
       (.I0(acc_x2_reg_reg[15]),
        .I1(in[15]),
        .O(div_x20_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_6
       (.I0(acc_x2_reg_reg[14]),
        .I1(in[14]),
        .O(div_x20_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_7
       (.I0(acc_x2_reg_reg[13]),
        .I1(in[13]),
        .O(div_x20_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_8
       (.I0(acc_x2_reg_reg[12]),
        .I1(in[12]),
        .O(div_x20_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    div_x20_i_9
       (.I0(acc_x2_reg_reg[11]),
        .I1(in[11]),
        .O(div_x20_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \div_x2_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(div1_en),
        .D(A[10]),
        .Q(\div_x2_reg_reg_n_0_[10] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_x2_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(div1_en),
        .D(A[11]),
        .Q(data0[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_x2_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(div1_en),
        .D(A[12]),
        .Q(data0[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_x2_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(div1_en),
        .D(A[13]),
        .Q(data0[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_x2_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(div1_en),
        .D(A[14]),
        .Q(data0[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_x2_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(div1_en),
        .D(A[15]),
        .Q(data0[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_x2_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(div1_en),
        .D(A[16]),
        .Q(data0[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_x2_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(div1_en),
        .D(A[17]),
        .Q(\div_x2_reg_reg_n_0_[17] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_x2_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(div1_en),
        .D(A[7]),
        .Q(\div_x2_reg_reg_n_0_[7] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_x2_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(div1_en),
        .D(A[8]),
        .Q(\div_x2_reg_reg_n_0_[8] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \div_x2_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(div1_en),
        .D(A[9]),
        .Q(\div_x2_reg_reg_n_0_[9] ),
        .R(rst_IBUF));
  rms_fsm fsm_rms
       (.A({fsm_rms_n_30,fsm_rms_n_31,fsm_rms_n_32,fsm_rms_n_33,fsm_rms_n_34,fsm_rms_n_35,fsm_rms_n_36,fsm_rms_n_37,fsm_rms_n_38,fsm_rms_n_39,fsm_rms_n_40,fsm_rms_n_41,fsm_rms_n_42,fsm_rms_n_43,fsm_rms_n_44,fsm_rms_n_45,fsm_rms_n_46,fsm_rms_n_47}),
        .C(C),
        .\FSM_onehot_current_state_reg[0]_0 (\FSM_onehot_current_state_reg[0] ),
        .\FSM_onehot_current_state_reg[11]_0 (\FSM_onehot_current_state_reg[11] ),
        .Q({nr4_en,nr3_en,nr2_en,nr1_en,nr0_en,norm1_en,norm0_en,div1_en,div0_en,acc_en,mult_en,Q}),
        .clear(fsm_rms_n_48),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .comp_en(comp_en),
        .comp_en_0(comp_en_0),
        .display(display),
        .last_sample_reg1(last_sample_reg1),
        .mean_ready(mean_ready),
        .metrics_ready_reg(metrics_ready_reg),
        .nr_xk20(nr_xk0),
        .nr_xk20_0(nr_xk_2_3_xk2x_reg),
        .rst_IBUF(rst_IBUF),
        .scale_pipe_fsm_ready_reg(scale_pipe_fsm_ready_reg));
  LUT5 #(
    .INIT(32'h32FF3200)) 
    \k_exp_reg[1]_i_1 
       (.I0(data0[4]),
        .I1(\div_x2_reg_reg_n_0_[17] ),
        .I2(data0[5]),
        .I3(norm0_en),
        .I4(k_exp_reg[1]),
        .O(\k_exp_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \k_exp_reg[2]_i_1 
       (.I0(\div_x2_reg_reg_n_0_[17] ),
        .I1(norm0_en),
        .I2(k_exp_reg[2]),
        .O(\k_exp_reg[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \k_exp_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_exp_reg[1]_i_1_n_0 ),
        .Q(k_exp_reg[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \k_exp_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\k_exp_reg[2]_i_1_n_0 ),
        .Q(k_exp_reg[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    last_sample_reg0_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(last_sample),
        .Q(last_sample_reg),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    last_sample_reg1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(last_sample_reg),
        .Q(last_sample_reg1),
        .R(rst_IBUF));
  norm_lut lut_norm
       (.A({lut_norm_n_17,lut_norm_n_18,lut_norm_n_19,lut_norm_n_20,lut_norm_n_21,lut_norm_n_22,lut_norm_n_23,lut_norm_n_24,lut_norm_n_25,lut_norm_n_26,lut_norm_n_27,lut_norm_n_28,lut_norm_n_29,lut_norm_n_30,lut_norm_n_31,lut_norm_n_32,lut_norm_n_33}),
        .D(nr_xk0_scaled[16:0]),
        .P({nr_xk0_odd0_n_71,nr_xk0_odd0_n_72,nr_xk0_odd0_n_73,nr_xk0_odd0_n_74,nr_xk0_odd0_n_75,nr_xk0_odd0_n_76,nr_xk0_odd0_n_77,nr_xk0_odd0_n_78,nr_xk0_odd0_n_79,nr_xk0_odd0_n_80,nr_xk0_odd0_n_81,nr_xk0_odd0_n_82,nr_xk0_odd0_n_83,nr_xk0_odd0_n_84,nr_xk0_odd0_n_85,nr_xk0_odd0_n_86,nr_xk0_odd0_n_87}),
        .Q({\div_x2_reg_reg_n_0_[17] ,data0,\div_x2_reg_reg_n_0_[10] ,\div_x2_reg_reg_n_0_[9] ,\div_x2_reg_reg_n_0_[8] ,\div_x2_reg_reg_n_0_[7] }),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .k_exp__5(\leading_one/k_exp__5 ),
        .k_exp_reg(k_exp_reg),
        .rst_IBUF(rst_IBUF));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    nr_sqrtx0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_nr_sqrtx0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,B[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_nr_sqrtx0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A[14:0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_nr_sqrtx0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_nr_sqrtx0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(div1_en),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(nr3_en),
        .CEC(div1_en),
        .CECARRYIN(1'b0),
        .CECTRL(nr3_en),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(nr4_en),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_nr_sqrtx0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,B[17],B[17],1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_nr_sqrtx0_OVERFLOW_UNCONNECTED),
        .P({NLW_nr_sqrtx0_P_UNCONNECTED[47:32],P,NLW_nr_sqrtx0_P_UNCONNECTED[17:0]}),
        .PATTERNBDETECT(NLW_nr_sqrtx0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_nr_sqrtx0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_nr_sqrtx0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_IBUF),
        .RSTC(rst_IBUF),
        .RSTCTRL(rst_IBUF),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst_IBUF),
        .UNDERFLOW(NLW_nr_sqrtx0_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h0F04)) 
    \nr_xk0[16]_i_2 
       (.I0(data0[4]),
        .I1(data0[3]),
        .I2(\div_x2_reg_reg_n_0_[17] ),
        .I3(data0[5]),
        .O(\leading_one/k_exp__5 ));
  LUT5 #(
    .INIT(32'h08080A08)) 
    \nr_xk0[17]_i_1 
       (.I0(nr_xk0_odd0_n_70),
        .I1(data0[5]),
        .I2(\div_x2_reg_reg_n_0_[17] ),
        .I3(data0[3]),
        .I4(data0[4]),
        .O(nr_xk0_scaled[17]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    nr_xk0_odd0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,lut_norm_n_17,lut_norm_n_18,lut_norm_n_19,lut_norm_n_20,lut_norm_n_21,lut_norm_n_22,lut_norm_n_23,lut_norm_n_24,lut_norm_n_25,lut_norm_n_26,lut_norm_n_27,lut_norm_n_28,lut_norm_n_29,lut_norm_n_30,lut_norm_n_31,lut_norm_n_32,lut_norm_n_33}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_nr_xk0_odd0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_nr_xk0_odd0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,lut_norm_n_17,lut_norm_n_18,lut_norm_n_19,lut_norm_n_20,lut_norm_n_21,lut_norm_n_22,lut_norm_n_23,lut_norm_n_24,lut_norm_n_25,lut_norm_n_26,lut_norm_n_27,lut_norm_n_28,lut_norm_n_29,lut_norm_n_30,lut_norm_n_31,lut_norm_n_32,lut_norm_n_33,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_nr_xk0_odd0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_nr_xk0_odd0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_nr_xk0_odd0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_nr_xk0_odd0_OVERFLOW_UNCONNECTED),
        .P({NLW_nr_xk0_odd0_P_UNCONNECTED[47:36],nr_xk0_odd0_n_70,nr_xk0_odd0_n_71,nr_xk0_odd0_n_72,nr_xk0_odd0_n_73,nr_xk0_odd0_n_74,nr_xk0_odd0_n_75,nr_xk0_odd0_n_76,nr_xk0_odd0_n_77,nr_xk0_odd0_n_78,nr_xk0_odd0_n_79,nr_xk0_odd0_n_80,nr_xk0_odd0_n_81,nr_xk0_odd0_n_82,nr_xk0_odd0_n_83,nr_xk0_odd0_n_84,nr_xk0_odd0_n_85,nr_xk0_odd0_n_86,nr_xk0_odd0_n_87,NLW_nr_xk0_odd0_P_UNCONNECTED[17:0]}),
        .PATTERNBDETECT(NLW_nr_xk0_odd0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_nr_xk0_odd0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_nr_xk0_odd0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_nr_xk0_odd0_UNDERFLOW_UNCONNECTED));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[0]),
        .Q(nr_xk0[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[10]),
        .Q(nr_xk0[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[11]),
        .Q(nr_xk0[11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[12]),
        .Q(nr_xk0[12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[13]),
        .Q(nr_xk0[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[14]),
        .Q(nr_xk0[14]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[15]),
        .Q(nr_xk0[15]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[16]),
        .Q(nr_xk0[16]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[17]),
        .Q(nr_xk0[17]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[1]),
        .Q(nr_xk0[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[2]),
        .Q(nr_xk0[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[3]),
        .Q(nr_xk0[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[4]),
        .Q(nr_xk0[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[5]),
        .Q(nr_xk0[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[6]),
        .Q(nr_xk0[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[7]),
        .Q(nr_xk0[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[8]),
        .Q(nr_xk0[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk0_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(norm1_en),
        .D(nr_xk0_scaled[9]),
        .Q(nr_xk0[9]),
        .R(rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    nr_xk20
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fsm_rms_n_30,fsm_rms_n_31,fsm_rms_n_32,fsm_rms_n_33,fsm_rms_n_34,fsm_rms_n_35,fsm_rms_n_36,fsm_rms_n_37,fsm_rms_n_38,fsm_rms_n_39,fsm_rms_n_40,fsm_rms_n_41,fsm_rms_n_42,fsm_rms_n_43,fsm_rms_n_44,fsm_rms_n_45,fsm_rms_n_46,fsm_rms_n_47}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_nr_xk20_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,fsm_rms_n_31,fsm_rms_n_32,fsm_rms_n_33,fsm_rms_n_34,fsm_rms_n_35,fsm_rms_n_36,fsm_rms_n_37,fsm_rms_n_38,fsm_rms_n_39,fsm_rms_n_40,fsm_rms_n_41,fsm_rms_n_42,fsm_rms_n_43,fsm_rms_n_44,fsm_rms_n_45,fsm_rms_n_46,fsm_rms_n_47}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_nr_xk20_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,C,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_nr_xk20_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_nr_xk20_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_nr_xk20_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_nr_xk20_OVERFLOW_UNCONNECTED),
        .P({NLW_nr_xk20_P_UNCONNECTED[47:34],nr_xk20_n_72,nr_xk20_n_73,nr_xk20_n_74,nr_xk20_n_75,nr_xk20_n_76,nr_xk20_n_77,nr_xk20_n_78,nr_xk20_n_79,nr_xk20_n_80,nr_xk20_n_81,nr_xk20_n_82,nr_xk20_n_83,nr_xk20_n_84,nr_xk20_n_85,nr_xk20_n_86,nr_xk20_n_87,nr_xk20_n_88,nr_xk20_n_89,NLW_nr_xk20_P_UNCONNECTED[15:0]}),
        .PATTERNBDETECT(NLW_nr_xk20_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_nr_xk20_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_nr_xk20_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_nr_xk20_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    nr_xk2x0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,nr_xk20_n_72,nr_xk20_n_73,nr_xk20_n_74,nr_xk20_n_75,nr_xk20_n_76,nr_xk20_n_77,nr_xk20_n_78,nr_xk20_n_79,nr_xk20_n_80,nr_xk20_n_81,nr_xk20_n_82,nr_xk20_n_83,nr_xk20_n_84,nr_xk20_n_85,nr_xk20_n_86,nr_xk20_n_87,nr_xk20_n_88,nr_xk20_n_89}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_nr_xk2x0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,A[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_nr_xk2x0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,nr_xk20_n_75,nr_xk20_n_76,nr_xk20_n_77,nr_xk20_n_78,nr_xk20_n_79,nr_xk20_n_80,nr_xk20_n_81,nr_xk20_n_82,nr_xk20_n_83,nr_xk20_n_84,nr_xk20_n_85,nr_xk20_n_86,nr_xk20_n_87,nr_xk20_n_88,nr_xk20_n_89,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_nr_xk2x0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_nr_xk2x0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(nr0_en),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(div1_en),
        .CEC(nr0_en),
        .CECARRYIN(1'b0),
        .CECTRL(div1_en),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(nr1_en),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_nr_xk2x0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,A[17],A[17],1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_nr_xk2x0_OVERFLOW_UNCONNECTED),
        .P({NLW_nr_xk2x0_P_UNCONNECTED[47:32],nr_xk2x_reg,NLW_nr_xk2x0_P_UNCONNECTED[13:0]}),
        .PATTERNBDETECT(NLW_nr_xk2x0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_nr_xk2x0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_nr_xk2x0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_IBUF),
        .RSTC(rst_IBUF),
        .RSTCTRL(rst_IBUF),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst_IBUF),
        .UNDERFLOW(NLW_nr_xk2x0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    nr_xk_2_3_xk2x0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,nr_xk_2_3_xk2x0_i_1_n_7,nr_xk_2_3_xk2x0_i_2_n_4,nr_xk_2_3_xk2x0_i_2_n_5,nr_xk_2_3_xk2x0_i_2_n_6,nr_xk_2_3_xk2x0_i_2_n_7,nr_xk_2_3_xk2x0_i_3_n_4,nr_xk_2_3_xk2x0_i_3_n_5,nr_xk_2_3_xk2x0_i_3_n_6,nr_xk_2_3_xk2x0_i_3_n_7,nr_xk_2_3_xk2x0_i_4_n_4,nr_xk_2_3_xk2x0_i_4_n_5,nr_xk_2_3_xk2x0_i_4_n_6,nr_xk_2_3_xk2x0_i_4_n_7,nr_xk_2_3_xk2x0_i_5_n_4,nr_xk_2_3_xk2x0_i_5_n_5,nr_xk_2_3_xk2x0_i_5_n_6,nr_xk_2_3_xk2x0_i_5_n_7,nr_xk2x_reg[0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_nr_xk_2_3_xk2x0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,fsm_rms_n_30,fsm_rms_n_31,fsm_rms_n_32,fsm_rms_n_33,fsm_rms_n_34,fsm_rms_n_35,fsm_rms_n_36,fsm_rms_n_37,fsm_rms_n_38,fsm_rms_n_39,fsm_rms_n_40,fsm_rms_n_41,fsm_rms_n_42,fsm_rms_n_43,fsm_rms_n_44,fsm_rms_n_45,fsm_rms_n_46}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_nr_xk_2_3_xk2x0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_nr_xk_2_3_xk2x0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_nr_xk_2_3_xk2x0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(nr2_en),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(nr0_en),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_nr_xk_2_3_xk2x0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_nr_xk_2_3_xk2x0_OVERFLOW_UNCONNECTED),
        .P({NLW_nr_xk_2_3_xk2x0_P_UNCONNECTED[47:34],B,NLW_nr_xk_2_3_xk2x0_P_UNCONNECTED[15:0]}),
        .PATTERNBDETECT(NLW_nr_xk_2_3_xk2x0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_nr_xk_2_3_xk2x0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_nr_xk_2_3_xk2x0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_IBUF),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_IBUF),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_nr_xk_2_3_xk2x0_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 nr_xk_2_3_xk2x0_i_1
       (.CI(nr_xk_2_3_xk2x0_i_2_n_0),
        .CO(NLW_nr_xk_2_3_xk2x0_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_nr_xk_2_3_xk2x0_i_1_O_UNCONNECTED[3:1],nr_xk_2_3_xk2x0_i_1_n_7}),
        .S({1'b0,1'b0,1'b0,nr_xk2x_reg[17]}));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_10
       (.I0(nr_xk2x_reg[12]),
        .O(nr_xk_2_3_xk2x0_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_11
       (.I0(nr_xk2x_reg[11]),
        .O(nr_xk_2_3_xk2x0_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_12
       (.I0(nr_xk2x_reg[10]),
        .O(nr_xk_2_3_xk2x0_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_13
       (.I0(nr_xk2x_reg[9]),
        .O(nr_xk_2_3_xk2x0_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_14
       (.I0(nr_xk2x_reg[8]),
        .O(nr_xk_2_3_xk2x0_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_15
       (.I0(nr_xk2x_reg[7]),
        .O(nr_xk_2_3_xk2x0_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_16
       (.I0(nr_xk2x_reg[6]),
        .O(nr_xk_2_3_xk2x0_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_17
       (.I0(nr_xk2x_reg[5]),
        .O(nr_xk_2_3_xk2x0_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_18
       (.I0(nr_xk2x_reg[0]),
        .O(nr_xk_2_3_xk2x0_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_19
       (.I0(nr_xk2x_reg[4]),
        .O(nr_xk_2_3_xk2x0_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 nr_xk_2_3_xk2x0_i_2
       (.CI(nr_xk_2_3_xk2x0_i_3_n_0),
        .CO({nr_xk_2_3_xk2x0_i_2_n_0,NLW_nr_xk_2_3_xk2x0_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({nr_xk_2_3_xk2x0_i_6_n_0,1'b0,1'b0,1'b0}),
        .O({nr_xk_2_3_xk2x0_i_2_n_4,nr_xk_2_3_xk2x0_i_2_n_5,nr_xk_2_3_xk2x0_i_2_n_6,nr_xk_2_3_xk2x0_i_2_n_7}),
        .S({nr_xk2x_reg[16],nr_xk_2_3_xk2x0_i_7_n_0,nr_xk_2_3_xk2x0_i_8_n_0,nr_xk_2_3_xk2x0_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_20
       (.I0(nr_xk2x_reg[3]),
        .O(nr_xk_2_3_xk2x0_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_21
       (.I0(nr_xk2x_reg[2]),
        .O(nr_xk_2_3_xk2x0_i_21_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_22
       (.I0(nr_xk2x_reg[1]),
        .O(nr_xk_2_3_xk2x0_i_22_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 nr_xk_2_3_xk2x0_i_3
       (.CI(nr_xk_2_3_xk2x0_i_4_n_0),
        .CO({nr_xk_2_3_xk2x0_i_3_n_0,NLW_nr_xk_2_3_xk2x0_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({nr_xk_2_3_xk2x0_i_3_n_4,nr_xk_2_3_xk2x0_i_3_n_5,nr_xk_2_3_xk2x0_i_3_n_6,nr_xk_2_3_xk2x0_i_3_n_7}),
        .S({nr_xk_2_3_xk2x0_i_10_n_0,nr_xk_2_3_xk2x0_i_11_n_0,nr_xk_2_3_xk2x0_i_12_n_0,nr_xk_2_3_xk2x0_i_13_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 nr_xk_2_3_xk2x0_i_4
       (.CI(nr_xk_2_3_xk2x0_i_5_n_0),
        .CO({nr_xk_2_3_xk2x0_i_4_n_0,NLW_nr_xk_2_3_xk2x0_i_4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({nr_xk_2_3_xk2x0_i_4_n_4,nr_xk_2_3_xk2x0_i_4_n_5,nr_xk_2_3_xk2x0_i_4_n_6,nr_xk_2_3_xk2x0_i_4_n_7}),
        .S({nr_xk_2_3_xk2x0_i_14_n_0,nr_xk_2_3_xk2x0_i_15_n_0,nr_xk_2_3_xk2x0_i_16_n_0,nr_xk_2_3_xk2x0_i_17_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 nr_xk_2_3_xk2x0_i_5
       (.CI(1'b0),
        .CO({nr_xk_2_3_xk2x0_i_5_n_0,NLW_nr_xk_2_3_xk2x0_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(nr_xk_2_3_xk2x0_i_18_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({nr_xk_2_3_xk2x0_i_5_n_4,nr_xk_2_3_xk2x0_i_5_n_5,nr_xk_2_3_xk2x0_i_5_n_6,nr_xk_2_3_xk2x0_i_5_n_7}),
        .S({nr_xk_2_3_xk2x0_i_19_n_0,nr_xk_2_3_xk2x0_i_20_n_0,nr_xk_2_3_xk2x0_i_21_n_0,nr_xk_2_3_xk2x0_i_22_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_6
       (.I0(nr_xk2x_reg[16]),
        .O(nr_xk_2_3_xk2x0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_7
       (.I0(nr_xk2x_reg[15]),
        .O(nr_xk_2_3_xk2x0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_8
       (.I0(nr_xk2x_reg[14]),
        .O(nr_xk_2_3_xk2x0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nr_xk_2_3_xk2x0_i_9
       (.I0(nr_xk2x_reg[13]),
        .O(nr_xk_2_3_xk2x0_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[0]),
        .Q(nr_xk_2_3_xk2x_reg[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[10]),
        .Q(nr_xk_2_3_xk2x_reg[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[11]),
        .Q(nr_xk_2_3_xk2x_reg[11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[12]),
        .Q(nr_xk_2_3_xk2x_reg[12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[13]),
        .Q(nr_xk_2_3_xk2x_reg[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[14]),
        .Q(nr_xk_2_3_xk2x_reg[14]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[15]),
        .Q(nr_xk_2_3_xk2x_reg[15]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[16]),
        .Q(nr_xk_2_3_xk2x_reg[16]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[17]),
        .Q(nr_xk_2_3_xk2x_reg[17]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[1]),
        .Q(nr_xk_2_3_xk2x_reg[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[2]),
        .Q(nr_xk_2_3_xk2x_reg[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[3]),
        .Q(nr_xk_2_3_xk2x_reg[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[4]),
        .Q(nr_xk_2_3_xk2x_reg[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[5]),
        .Q(nr_xk_2_3_xk2x_reg[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[6]),
        .Q(nr_xk_2_3_xk2x_reg[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[7]),
        .Q(nr_xk_2_3_xk2x_reg[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[8]),
        .Q(nr_xk_2_3_xk2x_reg[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \nr_xk_2_3_xk2x_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(nr3_en),
        .D(B[9]),
        .Q(nr_xk_2_3_xk2x_reg[9]),
        .R(rst_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    x20
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x20_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_x20_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,x20_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_x20_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_x20_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_x20_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mult_en),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_x20_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_x20_OVERFLOW_UNCONNECTED),
        .P({NLW_x20_P_UNCONNECTED[47:28],in,NLW_x20_P_UNCONNECTED[3:0]}),
        .PATTERNBDETECT(NLW_x20_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_x20_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_x20_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst_IBUF),
        .UNDERFLOW(NLW_x20_UNDERFLOW_UNCONNECTED));
endmodule

module rms_fsm
   (Q,
    \FSM_onehot_current_state_reg[0]_0 ,
    C,
    A,
    clear,
    scale_pipe_fsm_ready_reg,
    \FSM_onehot_current_state_reg[11]_0 ,
    metrics_ready_reg,
    mean_ready,
    display,
    comp_en,
    comp_en_0,
    nr_xk20,
    nr_xk20_0,
    rst_IBUF,
    last_sample_reg1,
    clk_IBUF_BUFG);
  output [11:0]Q;
  output \FSM_onehot_current_state_reg[0]_0 ;
  output [16:0]C;
  output [17:0]A;
  output clear;
  input scale_pipe_fsm_ready_reg;
  input \FSM_onehot_current_state_reg[11]_0 ;
  input metrics_ready_reg;
  input mean_ready;
  input display;
  input comp_en;
  input comp_en_0;
  input [17:0]nr_xk20;
  input [17:0]nr_xk20_0;
  input rst_IBUF;
  input last_sample_reg1;
  input clk_IBUF_BUFG;

  wire [17:0]A;
  wire [16:0]C;
  wire \FSM_onehot_current_state[11]_i_1_n_0 ;
  wire \FSM_onehot_current_state[11]_i_3_n_0 ;
  wire \FSM_onehot_current_state[11]_i_4_n_0 ;
  wire \FSM_onehot_current_state_reg[0]_0 ;
  wire \FSM_onehot_current_state_reg[11]_0 ;
  wire [11:0]Q;
  wire clear;
  wire clk_IBUF_BUFG;
  wire comp_en;
  wire comp_en_0;
  wire display;
  wire last_sample_reg1;
  wire mean_ready;
  wire metrics_ready_reg;
  wire [11:0]next_state;
  wire [2:0]nr_counter;
  wire \nr_counter[0]_i_1_n_0 ;
  wire \nr_counter[1]_i_1_n_0 ;
  wire \nr_counter[2]_i_1_n_0 ;
  wire [17:0]nr_xk20;
  wire [17:0]nr_xk20_0;
  wire nr_xk20_i_36_n_0;
  wire rst_IBUF;
  wire scale_pipe_fsm_ready_reg;

  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_current_state[0]_i_1__0 
       (.I0(last_sample_reg1),
        .I1(Q[2]),
        .I2(Q[11]),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_current_state[11]_i_1 
       (.I0(\FSM_onehot_current_state[11]_i_3_n_0 ),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(Q[8]),
        .I4(Q[9]),
        .I5(\FSM_onehot_current_state[11]_i_4_n_0 ),
        .O(\FSM_onehot_current_state[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \FSM_onehot_current_state[11]_i_2 
       (.I0(Q[10]),
        .I1(nr_counter[2]),
        .I2(nr_counter[1]),
        .I3(nr_counter[0]),
        .O(next_state[11]));
  LUT5 #(
    .INIT(32'hEEEEEEFE)) 
    \FSM_onehot_current_state[11]_i_3 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(scale_pipe_fsm_ready_reg),
        .I4(\FSM_onehot_current_state_reg[11]_0 ),
        .O(\FSM_onehot_current_state[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_current_state[11]_i_4 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\FSM_onehot_current_state[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(Q[2]),
        .I1(last_sample_reg1),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFF02AA)) 
    \FSM_onehot_current_state[7]_i_1 
       (.I0(Q[10]),
        .I1(nr_counter[0]),
        .I2(nr_counter[1]),
        .I3(nr_counter[2]),
        .I4(Q[6]),
        .O(next_state[7]));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(next_state[0]),
        .Q(Q[0]),
        .S(rst_IBUF));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(Q[9]),
        .Q(Q[10]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(next_state[11]),
        .Q(Q[11]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(Q[0]),
        .Q(Q[1]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(Q[1]),
        .Q(Q[2]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(next_state[3]),
        .Q(Q[3]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(Q[3]),
        .Q(Q[4]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(Q[4]),
        .Q(Q[5]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(Q[5]),
        .Q(Q[6]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(next_state[7]),
        .Q(Q[7]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(Q[7]),
        .Q(Q[8]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "NR2:001000000000,NR0:000010000000,NR1:000100000000,NORM1:000001000000,NORM0:000000100000,DIV0:000000001000,DIV1:000000010000,ACC:000000000100,NR4:100000000000,NR3:010000000000,MULT:000000000010,IDLE:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .D(Q[8]),
        .Q(Q[9]),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    FSM_sequential_current_state_i_2
       (.I0(Q[0]),
        .I1(metrics_ready_reg),
        .I2(mean_ready),
        .I3(display),
        .I4(comp_en),
        .I5(comp_en_0),
        .O(\FSM_onehot_current_state_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    div_upper_i_1
       (.I0(Q[11]),
        .I1(rst_IBUF),
        .O(clear));
  LUT5 #(
    .INIT(32'h00000266)) 
    \nr_counter[0]_i_1 
       (.I0(Q[9]),
        .I1(nr_counter[0]),
        .I2(nr_counter[1]),
        .I3(nr_counter[2]),
        .I4(rst_IBUF),
        .O(\nr_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000078)) 
    \nr_counter[1]_i_1 
       (.I0(Q[9]),
        .I1(nr_counter[0]),
        .I2(nr_counter[1]),
        .I3(nr_counter[2]),
        .I4(rst_IBUF),
        .O(\nr_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000380)) 
    \nr_counter[2]_i_1 
       (.I0(Q[9]),
        .I1(nr_counter[0]),
        .I2(nr_counter[1]),
        .I3(nr_counter[2]),
        .I4(rst_IBUF),
        .O(\nr_counter[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \nr_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\nr_counter[0]_i_1_n_0 ),
        .Q(nr_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \nr_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\nr_counter[1]_i_1_n_0 ),
        .Q(nr_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \nr_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\nr_counter[2]_i_1_n_0 ),
        .Q(nr_counter[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_1
       (.I0(nr_xk20_0[16]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[16]),
        .O(A[16]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_10
       (.I0(nr_xk20_0[7]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[7]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_11
       (.I0(nr_xk20_0[6]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[6]),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_12
       (.I0(nr_xk20_0[5]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[5]),
        .O(A[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_13
       (.I0(nr_xk20_0[4]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[4]),
        .O(A[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_14
       (.I0(nr_xk20_0[3]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[3]),
        .O(A[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_15
       (.I0(nr_xk20_0[2]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[2]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_16
       (.I0(nr_xk20_0[1]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[1]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_17
       (.I0(nr_xk20_0[0]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[0]),
        .O(A[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_18
       (.I0(nr_xk20_0[17]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[17]),
        .O(A[17]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_19
       (.I0(nr_xk20[16]),
        .I1(nr_xk20_0[16]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[16]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_2
       (.I0(nr_xk20_0[15]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[15]),
        .O(A[15]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_20
       (.I0(nr_xk20[15]),
        .I1(nr_xk20_0[15]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[15]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_21
       (.I0(nr_xk20[14]),
        .I1(nr_xk20_0[14]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[14]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_22
       (.I0(nr_xk20[13]),
        .I1(nr_xk20_0[13]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[13]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_23
       (.I0(nr_xk20[12]),
        .I1(nr_xk20_0[12]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[12]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_24
       (.I0(nr_xk20[11]),
        .I1(nr_xk20_0[11]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[11]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_25
       (.I0(nr_xk20[10]),
        .I1(nr_xk20_0[10]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[10]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_26
       (.I0(nr_xk20[9]),
        .I1(nr_xk20_0[9]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[9]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_27
       (.I0(nr_xk20[8]),
        .I1(nr_xk20_0[8]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[8]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_28
       (.I0(nr_xk20[7]),
        .I1(nr_xk20_0[7]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[7]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_29
       (.I0(nr_xk20[6]),
        .I1(nr_xk20_0[6]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_3
       (.I0(nr_xk20_0[14]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[14]),
        .O(A[14]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_30
       (.I0(nr_xk20[5]),
        .I1(nr_xk20_0[5]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[5]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_31
       (.I0(nr_xk20[4]),
        .I1(nr_xk20_0[4]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[4]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_32
       (.I0(nr_xk20[3]),
        .I1(nr_xk20_0[3]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[3]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_33
       (.I0(nr_xk20[2]),
        .I1(nr_xk20_0[2]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[2]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_34
       (.I0(nr_xk20[1]),
        .I1(nr_xk20_0[1]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[1]));
  LUT5 #(
    .INIT(32'hCC00A0A0)) 
    nr_xk20_i_35
       (.I0(nr_xk20[0]),
        .I1(nr_xk20_0[0]),
        .I2(nr_xk20[17]),
        .I3(nr_xk20_0[17]),
        .I4(nr_xk20_i_36_n_0),
        .O(C[0]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    nr_xk20_i_36
       (.I0(Q[7]),
        .I1(nr_counter[2]),
        .I2(nr_counter[0]),
        .I3(nr_counter[1]),
        .O(nr_xk20_i_36_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_4
       (.I0(nr_xk20_0[13]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[13]),
        .O(A[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_5
       (.I0(nr_xk20_0[12]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[12]),
        .O(A[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_6
       (.I0(nr_xk20_0[11]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[11]),
        .O(A[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_7
       (.I0(nr_xk20_0[10]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[10]),
        .O(A[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_8
       (.I0(nr_xk20_0[9]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[9]),
        .O(A[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAA2)) 
    nr_xk20_i_9
       (.I0(nr_xk20_0[8]),
        .I1(Q[7]),
        .I2(nr_counter[2]),
        .I3(nr_counter[0]),
        .I4(nr_counter[1]),
        .I5(nr_xk20[8]),
        .O(A[8]));
endmodule

module samples_fsm
   (clear,
    \current_state_reg[4]_0 ,
    SR,
    E,
    ad1_driver_ready_rising,
    rst_IBUF,
    start_IBUF,
    \m_samples_reg[0] ,
    D,
    Q,
    next_state1_carry__0_0,
    clk_IBUF_BUFG);
  output clear;
  output \current_state_reg[4]_0 ;
  output [0:0]SR;
  output [0:0]E;
  input ad1_driver_ready_rising;
  input rst_IBUF;
  input start_IBUF;
  input \m_samples_reg[0] ;
  input [2:0]D;
  input [6:0]Q;
  input next_state1_carry__0_0;
  input clk_IBUF_BUFG;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_4_n_0 ;
  wire [6:0]Q;
  wire [0:0]SR;
  wire ad1_driver_ready_rising;
  wire clear;
  wire clk_IBUF_BUFG;
  wire \current_state[0]_i_1__0_n_0 ;
  wire \current_state[10]_i_2_n_0 ;
  wire \current_state[10]_i_3_n_0 ;
  wire \current_state[1]_i_1_n_0 ;
  wire \current_state[2]_i_1_n_0 ;
  wire \current_state[3]_i_1__0_n_0 ;
  wire \current_state[4]_i_1_n_0 ;
  wire \current_state[4]_i_2_n_0 ;
  wire \current_state[5]_i_1_n_0 ;
  wire \current_state[5]_i_2_n_0 ;
  wire \current_state[6]_i_1_n_0 ;
  wire \current_state[7]_i_1_n_0 ;
  wire \current_state[8]_i_1_n_0 ;
  wire \current_state[8]_i_2_n_0 ;
  wire \current_state[9]_i_1_n_0 ;
  wire [10:0]current_state__0;
  wire \m_samples_reg[0] ;
  wire next_state;
  wire next_state1_carry__0_0;
  wire next_state1_carry__0_i_1_n_0;
  wire next_state1_carry__0_i_2_n_0;
  wire next_state1_carry__0_i_3_n_0;
  wire next_state1_carry__0_i_4_n_0;
  wire next_state1_carry__0_n_2;
  wire next_state1_carry_i_10_n_0;
  wire next_state1_carry_i_1_n_0;
  wire next_state1_carry_i_2_n_0;
  wire next_state1_carry_i_3_n_0;
  wire next_state1_carry_i_4_n_0;
  wire next_state1_carry_i_5_n_0;
  wire next_state1_carry_i_6_n_0;
  wire next_state1_carry_i_7_n_0;
  wire next_state1_carry_i_8_n_0;
  wire next_state1_carry_i_9_n_0;
  wire next_state1_carry_n_0;
  wire rst_IBUF;
  wire start_IBUF;
  wire [2:0]NLW_next_state1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_next_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_next_state1_carry__0_O_UNCONNECTED;

  assign \current_state_reg[4]_0  = E;
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I1(current_state__0[4]),
        .I2(current_state__0[5]),
        .I3(current_state__0[2]),
        .I4(current_state__0[0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(current_state__0[1]),
        .I1(current_state__0[6]),
        .I2(current_state__0[7]),
        .I3(current_state__0[10]),
        .I4(\FSM_sequential_current_state[1]_i_4_n_0 ),
        .I5(current_state__0[3]),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_current_state[1]_i_4 
       (.I0(current_state__0[8]),
        .I1(current_state__0[9]),
        .O(\FSM_sequential_current_state[1]_i_4_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \current_state[0]_i_1__0 
       (.I0(current_state__0[0]),
        .I1(next_state1_carry__0_n_2),
        .I2(E),
        .O(\current_state[0]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \current_state[10]_i_1 
       (.I0(start_IBUF),
        .I1(ad1_driver_ready_rising),
        .I2(E),
        .I3(next_state1_carry__0_n_2),
        .O(next_state));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* \PinAttr:I4:HOLD_DETOUR  = "181" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000B0004)) 
    \current_state[10]_i_2 
       (.I0(\current_state[10]_i_3_n_0 ),
        .I1(current_state__0[9]),
        .I2(next_state1_carry__0_n_2),
        .I3(E),
        .I4(current_state__0[10]),
        .O(\current_state[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \current_state[10]_i_3 
       (.I0(current_state__0[7]),
        .I1(current_state__0[6]),
        .I2(\current_state[8]_i_2_n_0 ),
        .I3(current_state__0[8]),
        .O(\current_state[10]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \current_state[1]_i_1 
       (.I0(E),
        .I1(next_state1_carry__0_n_2),
        .I2(current_state__0[0]),
        .I3(current_state__0[1]),
        .O(\current_state[1]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h01111000)) 
    \current_state[2]_i_1 
       (.I0(E),
        .I1(next_state1_carry__0_n_2),
        .I2(current_state__0[1]),
        .I3(current_state__0[0]),
        .I4(current_state__0[2]),
        .O(\current_state[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \current_state[3]_i_1__0 
       (.I0(E),
        .I1(next_state1_carry__0_n_2),
        .I2(current_state__0[2]),
        .I3(current_state__0[0]),
        .I4(current_state__0[1]),
        .I5(current_state__0[3]),
        .O(\current_state[3]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0201)) 
    \current_state[4]_i_1 
       (.I0(\current_state[4]_i_2_n_0 ),
        .I1(next_state1_carry__0_n_2),
        .I2(E),
        .I3(current_state__0[4]),
        .O(\current_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_state[4]_i_2 
       (.I0(current_state__0[2]),
        .I1(current_state__0[0]),
        .I2(current_state__0[1]),
        .I3(current_state__0[3]),
        .O(\current_state[4]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0102)) 
    \current_state[5]_i_1 
       (.I0(\current_state[5]_i_2_n_0 ),
        .I1(next_state1_carry__0_n_2),
        .I2(E),
        .I3(current_state__0[5]),
        .O(\current_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_state[5]_i_2 
       (.I0(current_state__0[4]),
        .I1(current_state__0[3]),
        .I2(current_state__0[1]),
        .I3(current_state__0[0]),
        .I4(current_state__0[2]),
        .O(\current_state[5]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0201)) 
    \current_state[6]_i_1 
       (.I0(\current_state[8]_i_2_n_0 ),
        .I1(next_state1_carry__0_n_2),
        .I2(E),
        .I3(current_state__0[6]),
        .O(\current_state[6]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h000D0002)) 
    \current_state[7]_i_1 
       (.I0(current_state__0[6]),
        .I1(\current_state[8]_i_2_n_0 ),
        .I2(next_state1_carry__0_n_2),
        .I3(E),
        .I4(current_state__0[7]),
        .O(\current_state[7]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h000000BF00000040)) 
    \current_state[8]_i_1 
       (.I0(\current_state[8]_i_2_n_0 ),
        .I1(current_state__0[6]),
        .I2(current_state__0[7]),
        .I3(next_state1_carry__0_n_2),
        .I4(E),
        .I5(current_state__0[8]),
        .O(\current_state[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \current_state[8]_i_2 
       (.I0(current_state__0[2]),
        .I1(current_state__0[0]),
        .I2(current_state__0[1]),
        .I3(current_state__0[3]),
        .I4(current_state__0[4]),
        .I5(current_state__0[5]),
        .O(\current_state[8]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0201)) 
    \current_state[9]_i_1 
       (.I0(\current_state[10]_i_3_n_0 ),
        .I1(next_state1_carry__0_n_2),
        .I2(E),
        .I3(current_state__0[9]),
        .O(\current_state[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\current_state[0]_i_1__0_n_0 ),
        .Q(current_state__0[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\current_state[10]_i_2_n_0 ),
        .Q(current_state__0[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\current_state[1]_i_1_n_0 ),
        .Q(current_state__0[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\current_state[2]_i_1_n_0 ),
        .Q(current_state__0[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\current_state[3]_i_1__0_n_0 ),
        .Q(current_state__0[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\current_state[4]_i_1_n_0 ),
        .Q(current_state__0[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\current_state[5]_i_1_n_0 ),
        .Q(current_state__0[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\current_state[6]_i_1_n_0 ),
        .Q(current_state__0[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\current_state[7]_i_1_n_0 ),
        .Q(current_state__0[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\current_state[8]_i_1_n_0 ),
        .Q(current_state__0[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\current_state[9]_i_1_n_0 ),
        .Q(current_state__0[9]),
        .R(rst_IBUF));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \m_samples[6]_i_1 
       (.I0(E),
        .I1(\m_samples_reg[0] ),
        .I2(D[1]),
        .I3(D[2]),
        .I4(D[0]),
        .I5(rst_IBUF),
        .O(SR));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 next_state1_carry
       (.CI(1'b0),
        .CO({next_state1_carry_n_0,NLW_next_state1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({next_state1_carry_i_1_n_0,next_state1_carry_i_2_n_0,next_state1_carry_i_3_n_0,next_state1_carry_i_4_n_0}),
        .O(NLW_next_state1_carry_O_UNCONNECTED[3:0]),
        .S({next_state1_carry_i_5_n_0,next_state1_carry_i_6_n_0,next_state1_carry_i_7_n_0,next_state1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 next_state1_carry__0
       (.CI(next_state1_carry_n_0),
        .CO({NLW_next_state1_carry__0_CO_UNCONNECTED[3:2],next_state1_carry__0_n_2,NLW_next_state1_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,next_state1_carry__0_i_1_n_0,next_state1_carry__0_i_2_n_0}),
        .O(NLW_next_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,next_state1_carry__0_i_3_n_0,next_state1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    next_state1_carry__0_i_1
       (.I0(current_state__0[10]),
        .I1(next_state1_carry__0_0),
        .O(next_state1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    next_state1_carry__0_i_2
       (.I0(current_state__0[8]),
        .I1(current_state__0[9]),
        .O(next_state1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    next_state1_carry__0_i_3
       (.I0(next_state1_carry__0_0),
        .I1(current_state__0[10]),
        .O(next_state1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__0_i_4
       (.I0(current_state__0[9]),
        .I1(current_state__0[8]),
        .O(next_state1_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h8CCCCEEE)) 
    next_state1_carry_i_1
       (.I0(current_state__0[6]),
        .I1(current_state__0[7]),
        .I2(Q[5]),
        .I3(next_state1_carry_i_9_n_0),
        .I4(Q[6]),
        .O(next_state1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    next_state1_carry_i_10
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(next_state1_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h0C8EE80C)) 
    next_state1_carry_i_2
       (.I0(current_state__0[4]),
        .I1(current_state__0[5]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(next_state1_carry_i_10_n_0),
        .O(next_state1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hE00008888CCCCEEE)) 
    next_state1_carry_i_3
       (.I0(current_state__0[2]),
        .I1(current_state__0[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(next_state1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hE08C)) 
    next_state1_carry_i_4
       (.I0(current_state__0[0]),
        .I1(current_state__0[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(next_state1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h006A8015)) 
    next_state1_carry_i_5
       (.I0(Q[6]),
        .I1(next_state1_carry_i_9_n_0),
        .I2(Q[5]),
        .I3(current_state__0[7]),
        .I4(current_state__0[6]),
        .O(next_state1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h90094224)) 
    next_state1_carry_i_6
       (.I0(Q[4]),
        .I1(next_state1_carry_i_10_n_0),
        .I2(current_state__0[5]),
        .I3(Q[5]),
        .I4(current_state__0[4]),
        .O(next_state1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h2888144442228111)) 
    next_state1_carry_i_7
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(current_state__0[3]),
        .I5(current_state__0[2]),
        .O(next_state1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2148)) 
    next_state1_carry_i_8
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(current_state__0[1]),
        .I3(current_state__0[0]),
        .O(next_state1_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    next_state1_carry_i_9
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(next_state1_carry_i_9_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \test_lut_addr_count[9]_i_1 
       (.I0(E),
        .I1(ad1_driver_ready_rising),
        .I2(rst_IBUF),
        .O(clear));
endmodule

module scale_pipe_fsm
   (\current_state_reg[0]_0 ,
    \current_state_reg[0]_1 ,
    last_sample,
    E,
    scale_pipe_fsm_ready_reg_reg,
    scale_pipe_fsm_ready,
    \current_state_reg[0]_2 ,
    \current_state_reg[0]_3 ,
    clk_IBUF_BUFG,
    rst_IBUF,
    \min_reg_reg[0] ,
    ad1_driver_ready_rising,
    last_sample_reg0_reg,
    comp_en,
    \max_reg_reg[0] ,
    comp_en_0,
    \min_reg_reg[0]_0 );
  output \current_state_reg[0]_0 ;
  output \current_state_reg[0]_1 ;
  output last_sample;
  output [0:0]E;
  output [0:0]scale_pipe_fsm_ready_reg_reg;
  output scale_pipe_fsm_ready;
  output \current_state_reg[0]_2 ;
  output \current_state_reg[0]_3 ;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input \min_reg_reg[0] ;
  input ad1_driver_ready_rising;
  input last_sample_reg0_reg;
  input comp_en;
  input [0:0]\max_reg_reg[0] ;
  input comp_en_0;
  input [0:0]\min_reg_reg[0]_0 ;

  wire [0:0]E;
  wire ad1_driver_ready_rising;
  wire clk_IBUF_BUFG;
  wire comp_en;
  wire comp_en_0;
  wire \current_state[0]_i_1_n_0 ;
  wire \current_state_reg[0]_0 ;
  wire \current_state_reg[0]_1 ;
  wire \current_state_reg[0]_2 ;
  wire \current_state_reg[0]_3 ;
  wire last_sample;
  wire last_sample_reg0_reg;
  wire [0:0]\max_reg_reg[0] ;
  wire \min_reg_reg[0] ;
  wire [0:0]\min_reg_reg[0]_0 ;
  wire rst_IBUF;
  wire scale_pipe_fsm_ready;
  wire [0:0]scale_pipe_fsm_ready_reg_reg;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT4 #(
    .INIT(16'hEF11)) 
    FSM_sequential_current_state_i_1__0
       (.I0(\current_state_reg[0]_0 ),
        .I1(\min_reg_reg[0] ),
        .I2(last_sample_reg0_reg),
        .I3(comp_en),
        .O(\current_state_reg[0]_2 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT4 #(
    .INIT(16'hEF11)) 
    FSM_sequential_current_state_i_1__1
       (.I0(\current_state_reg[0]_0 ),
        .I1(\min_reg_reg[0] ),
        .I2(last_sample_reg0_reg),
        .I3(comp_en_0),
        .O(\current_state_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \current_state[0]_i_1 
       (.I0(rst_IBUF),
        .I1(\current_state_reg[0]_0 ),
        .I2(ad1_driver_ready_rising),
        .O(\current_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\current_state[0]_i_1_n_0 ),
        .Q(\current_state_reg[0]_0 ),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h10)) 
    last_sample_reg0_i_1
       (.I0(\current_state_reg[0]_0 ),
        .I1(\min_reg_reg[0] ),
        .I2(last_sample_reg0_reg),
        .O(last_sample));
  LUT4 #(
    .INIT(16'hF101)) 
    \max_reg[13]_i_1 
       (.I0(\min_reg_reg[0] ),
        .I1(\current_state_reg[0]_0 ),
        .I2(comp_en),
        .I3(\max_reg_reg[0] ),
        .O(E));
  LUT4 #(
    .INIT(16'hF101)) 
    \min_reg[13]_i_1 
       (.I0(\min_reg_reg[0] ),
        .I1(\current_state_reg[0]_0 ),
        .I2(comp_en_0),
        .I3(\min_reg_reg[0]_0 ),
        .O(scale_pipe_fsm_ready_reg_reg));
  LUT3 #(
    .INIT(8'hAB)) 
    n_samples_reg_reg_i_1
       (.I0(rst_IBUF),
        .I1(\current_state_reg[0]_0 ),
        .I2(\min_reg_reg[0] ),
        .O(\current_state_reg[0]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    scale_pipe_fsm_ready_reg_i_1
       (.I0(\current_state_reg[0]_0 ),
        .O(scale_pipe_fsm_ready));
endmodule

module seven_seg
   (\seg_reg[6]_0 ,
    Q,
    clk_IBUF_BUFG);
  output [6:0]\seg_reg[6]_0 ;
  input [3:0]Q;
  input clk_IBUF_BUFG;

  wire [3:0]Q;
  wire clk_IBUF_BUFG;
  wire [6:0]seg;
  wire [6:0]\seg_reg[6]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seg[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \seg[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(seg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[0]),
        .Q(\seg_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[1]),
        .Q(\seg_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[2]),
        .Q(\seg_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[3]),
        .Q(\seg_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[4]),
        .Q(\seg_reg[6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[5]),
        .Q(\seg_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[6]),
        .Q(\seg_reg[6]_0 [6]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "seven_seg" *) 
module seven_seg_0
   (\seg_reg[6]_0 ,
    Q,
    clk_IBUF_BUFG);
  output [6:0]\seg_reg[6]_0 ;
  input [3:0]Q;
  input clk_IBUF_BUFG;

  wire [3:0]Q;
  wire clk_IBUF_BUFG;
  wire [6:0]seg;
  wire [6:0]\seg_reg[6]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seg[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \seg[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(seg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[0]),
        .Q(\seg_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[1]),
        .Q(\seg_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[2]),
        .Q(\seg_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[3]),
        .Q(\seg_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[4]),
        .Q(\seg_reg[6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[5]),
        .Q(\seg_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[6]),
        .Q(\seg_reg[6]_0 [6]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "seven_seg" *) 
module seven_seg_1
   (\seg_reg[6]_0 ,
    Q,
    clk_IBUF_BUFG);
  output [6:0]\seg_reg[6]_0 ;
  input [3:0]Q;
  input clk_IBUF_BUFG;

  wire [3:0]Q;
  wire clk_IBUF_BUFG;
  wire [6:0]seg;
  wire [6:0]\seg_reg[6]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seg[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \seg[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(seg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[0]),
        .Q(\seg_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[1]),
        .Q(\seg_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[2]),
        .Q(\seg_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[3]),
        .Q(\seg_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[4]),
        .Q(\seg_reg[6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[5]),
        .Q(\seg_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[6]),
        .Q(\seg_reg[6]_0 [6]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "seven_seg" *) 
module seven_seg_2
   (\seg_reg[6]_0 ,
    Q,
    clk_IBUF_BUFG);
  output [6:0]\seg_reg[6]_0 ;
  input [3:0]Q;
  input clk_IBUF_BUFG;

  wire [3:0]Q;
  wire clk_IBUF_BUFG;
  wire [6:0]seg;
  wire [6:0]\seg_reg[6]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seg[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \seg[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(seg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[0]),
        .Q(\seg_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[1]),
        .Q(\seg_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[2]),
        .Q(\seg_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[3]),
        .Q(\seg_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[4]),
        .Q(\seg_reg[6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[5]),
        .Q(\seg_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(seg[6]),
        .Q(\seg_reg[6]_0 [6]),
        .R(1'b0));
endmodule

module test_lut
   (DOADO,
    clk_IBUF_BUFG,
    rst_IBUF,
    data_out_reg_0,
    test_lut_addr_count_reg);
  output [13:0]DOADO;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input data_out_reg_0;
  input [8:0]test_lut_addr_count_reg;

  wire [13:0]DOADO;
  wire clk_IBUF_BUFG;
  wire data_out_reg_0;
  wire data_out_reg_i_11_n_0;
  wire rst_IBUF;
  wire [9:0]sel;
  wire [8:0]test_lut_addr_count_reg;
  wire [15:14]NLW_data_out_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_data_out_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_data_out_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_data_out_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d14" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "14336" *) 
  (* RTL_RAM_NAME = "acquisiton_thread_inst/lut_test/data_out_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h1C19042E07100CF6316E32752DD72CBE179D0E2D0091244133151815292700FF),
    .INIT_01(256'h088F181513D10DEB12772B9F2A76288E0C9108EC1D1E27A2106E22B400F2069C),
    .INIT_02(256'h17E209E518520E32244A2D1C0A1C07F12B0F1E161E1333FD28F609B11C0A2943),
    .INIT_03(256'h11C9044D0CC8317629A900041F0A2C3E2B5F08940D4C1CD621DA33E2205E1DD2),
    .INIT_04(256'h007A2963165E22872BA03120129822D9332427D02BB31C1C15F51C4606871002),
    .INIT_05(256'h209F1FDB078E0FE81AFD216D2D3C08EA18381920204016FA248D19D008600AAC),
    .INIT_06(256'h0A8C11BC08B413BF33FA18D10E1310AD1273318C0F211A8A1EE120FD002C10F1),
    .INIT_07(256'h30710BEB1F24330C23A221F81E10205F23EC2280222B1B4F22340F3F14B424F0),
    .INIT_08(256'h25F609E029F811BF1056081F0BFC1CCB07E2026E253E13A90CB32ED003B82524),
    .INIT_09(256'h2F5E26B80A94283813581C6C220206190EE60F0C26130A37090C1F8021912E29),
    .INIT_0A(256'h1A0304FC0C17302C1408213E345706E52A400B9110CB31C317502F3C03F32893),
    .INIT_0B(256'h22B911B02D4426AD3229313603AB20CB13E40DFF13E225730A5B04F0093312EE),
    .INIT_0C(256'h27D92642068127941B451A3D0DB718AD15E319D10434279D3329340526B30059),
    .INIT_0D(256'h0C011AA9311E0E430B89016F11F50F9516E40C090E1F1AC716270812342214F4),
    .INIT_0E(256'h308D2AB220B12C22058E07841D5905B32E842BAF08DE3401159900412EF1068A),
    .INIT_0F(256'h1AB223D607580D04058714F929AB033027E4347117CC080E079E093E07B412B7),
    .INIT_10(256'h112E2A810C9C22A2274C096A1791171B1FD133742736072C28301DEB306D1336),
    .INIT_11(256'h250D345D096905442A91143522830F6028341BF53014098316A924B31EB91778),
    .INIT_12(256'h26CF0AD32B4D0B8E099F1A2B2A070276128722511A2322FE2AC02E7F0C510077),
    .INIT_13(256'h110D08413377144A0E150B020C0E048E1E9904E9039E1C8706FE1A791A9825CD),
    .INIT_14(256'h0678130D2CF9195E3385239B10A62934143C2AAC1C4915FD1736074E24EF2AF3),
    .INIT_15(256'h17FE19C732AE2EA0083005A717340A7A054828A7095C24CE1BE916EF14ED00AB),
    .INIT_16(256'h09E428382E6A1D1E006F0E53181A1FD209691F7F1D620A6607B32EED00022E7E),
    .INIT_17(256'h2654035702E9265C23D909DF310E0DE512511166311633A124EA1B3704E91EE0),
    .INIT_18(256'h18C7299C33CA19FB152723E42CCD201A2ED32DC9323404DE01521D3605E128F2),
    .INIT_19(256'h297F09FF32F80649005533C4289526851EA72A1D1D112312300920132EF019AD),
    .INIT_1A(256'h15460D67330F2C4407533261223D2878348527A423111ED400861739117C2BA5),
    .INIT_1B(256'h2C6425F42F9B0667087F220626EF349B05C11AF91E13092F276719450EF003D8),
    .INIT_1C(256'h0850348118710BF22631142B0C0A19D11CE511403032109F20BE251D27F005B6),
    .INIT_1D(256'h1A4208412ED717A01E6118BC2BF10F9721F81634118F039A043202680A7D16FB),
    .INIT_1E(256'h16BD028C07E91E940217294D24B903C70C4912C9106500D7149012AE2D492634),
    .INIT_1F(256'h08E731C814CE0B1B04EE134C14071CE8236416171E7921282B3D2201343D0A21),
    .INIT_20(256'h0D5E1D65013426CD03ED0E8400E7006D33EE3319061D26522B882D33300A2230),
    .INIT_21(256'h14110FB0149128412C760E6527CD141A17DE01FB1C5700811A8C019718EE155A),
    .INIT_22(256'h06E72EB71F8807DB22E0132C0EA114B01AFA04452A5E11E2264217C80D220C23),
    .INIT_23(256'h26EE0E8E0D051D4718290A2327841430201E0C421DB0242202330EB910DA1B32),
    .INIT_24(256'h076F1F5B001C232E11DC02880B0134870CF9291004650FC9322634821C790718),
    .INIT_25(256'h2AC1132F2D4E1E7A192A059C27190CC60CCE0A3C27E223D433301144262030A0),
    .INIT_26(256'h209A32EC257C1F842D6B023A0FE7259804E006B820F91E5819A3014020291C9B),
    .INIT_27(256'h1811047224B12E65065B21E31CAD078300FA1C3E00BC0C0419CF045D071B0165),
    .INIT_28(256'h20F607F4017826E8314D348D10DA0CCC13352CA11736278A13B30EBB0EEB2E25),
    .INIT_29(256'h0E090A262A7A0F69008503D90A8D1B6426121FD818552F0A23A214BC2ACA1CEE),
    .INIT_2A(256'h2D48016F1B692AD502A70A4B2EBA145F32FD2AAD2DAE00DC18CB016515112948),
    .INIT_2B(256'h25D62E09335B01622D84200E005F0070277E10DC0CFE2F3F21BD03B71A4921C0),
    .INIT_2C(256'h000014DF005407A80CE4171118E11B14061410351F37045C27720B6818081035),
    .INIT_2D(256'h06F80DB01C2A22B7224F315F08681D4B2EA406070C961EB30BD12FE71EFE27A6),
    .INIT_2E(256'h1A7031262940212F2784127A1C7609FD224E26E5214F25FF16371792062D0ECC),
    .INIT_2F(256'h08050FBD17000D1533CE165C2DC52D2E099E0D09336A273E0ADC0C0A032F27D4),
    .INIT_30(256'h190F1CA530F6145832A6049B1767221E14C532E90D4929E019CA26DC164B194F),
    .INIT_31(256'h1E1220D1211B25590F451714131C021E0687287E0C0C24581BDA19701A7E1AF5),
    .INIT_32(256'h30460A9A095E285119E40199077A15D0056A1A481B54030015720FD212230207),
    .INIT_33(256'h0AD20A3B0C3A045C30D51539234D08E30C7A31390BB802AC0E8325FA1E2A1193),
    .INIT_34(256'h2F422B61242031413340147021D7001214031FF631F7345912F721431A280C99),
    .INIT_35(256'h033A04DC22EF2E4604BE2D98181A2E2F2F7C0B65074C005C12CD1AA632461FC4),
    .INIT_36(256'h19AF052F2CE823B1307D01CF09F004E72C10118E1C7021E3133610571BCA2057),
    .INIT_37(256'h195A1DB31FC1097D15230923286D10FE276812FC0BBD119201812294297021FB),
    .INIT_38(256'h1809318C1BA004FB307E333B0D1C3085257D0FAA241008AA218D2612189302EF),
    .INIT_39(256'h092D034A209A2AA317251708334E0B1A10C8331F14542A21248C3002065C1226),
    .INIT_3A(256'h2FEA1CB903F022810DC2141E1D1C1F41242A300B0FB62A1221E80AC112961CDB),
    .INIT_3B(256'h237C2440097701003300103201C90F662B9C183C1EBA20451763343731C506B6),
    .INIT_3C(256'h2E7B132F2A5519CE12C32D23234911DB21A909E509ED273826F8178A244A1A3F),
    .INIT_3D(256'h208A2D422B0D077C20021832135A162A0908166816BA0084197E2ECF2292119A),
    .INIT_3E(256'h27A30EA416C62D263428228E253A0ED80F3F099F258627F31C0A2967170B16F2),
    .INIT_3F(256'h1EE32CB9042A098F1A6625CC24D02844226826B20671285500400B29339320D2),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    data_out_reg
       (.ADDRARDADDR({sel,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_data_out_reg_DOADO_UNCONNECTED[15:14],DOADO}),
        .DOBDO(NLW_data_out_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_data_out_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_data_out_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rst_IBUF),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    data_out_reg_i_1
       (.I0(test_lut_addr_count_reg[7]),
        .I1(test_lut_addr_count_reg[5]),
        .I2(data_out_reg_i_11_n_0),
        .I3(test_lut_addr_count_reg[6]),
        .I4(test_lut_addr_count_reg[8]),
        .O(sel[9]));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_reg_i_10
       (.I0(data_out_reg_0),
        .O(sel[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    data_out_reg_i_11
       (.I0(test_lut_addr_count_reg[3]),
        .I1(test_lut_addr_count_reg[1]),
        .I2(test_lut_addr_count_reg[0]),
        .I3(data_out_reg_0),
        .I4(test_lut_addr_count_reg[2]),
        .I5(test_lut_addr_count_reg[4]),
        .O(data_out_reg_i_11_n_0));
  LUT4 #(
    .INIT(16'hAAA9)) 
    data_out_reg_i_2
       (.I0(test_lut_addr_count_reg[7]),
        .I1(test_lut_addr_count_reg[5]),
        .I2(data_out_reg_i_11_n_0),
        .I3(test_lut_addr_count_reg[6]),
        .O(sel[8]));
  LUT3 #(
    .INIT(8'hA9)) 
    data_out_reg_i_3
       (.I0(test_lut_addr_count_reg[6]),
        .I1(data_out_reg_i_11_n_0),
        .I2(test_lut_addr_count_reg[5]),
        .O(sel[7]));
  LUT2 #(
    .INIT(4'h9)) 
    data_out_reg_i_4
       (.I0(test_lut_addr_count_reg[5]),
        .I1(data_out_reg_i_11_n_0),
        .O(sel[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    data_out_reg_i_5
       (.I0(test_lut_addr_count_reg[4]),
        .I1(test_lut_addr_count_reg[2]),
        .I2(data_out_reg_0),
        .I3(test_lut_addr_count_reg[0]),
        .I4(test_lut_addr_count_reg[1]),
        .I5(test_lut_addr_count_reg[3]),
        .O(sel[5]));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    data_out_reg_i_6
       (.I0(test_lut_addr_count_reg[2]),
        .I1(data_out_reg_0),
        .I2(test_lut_addr_count_reg[0]),
        .I3(test_lut_addr_count_reg[1]),
        .I4(test_lut_addr_count_reg[3]),
        .O(sel[4]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    data_out_reg_i_7
       (.I0(test_lut_addr_count_reg[2]),
        .I1(data_out_reg_0),
        .I2(test_lut_addr_count_reg[0]),
        .I3(test_lut_addr_count_reg[1]),
        .O(sel[3]));
  LUT3 #(
    .INIT(8'hA9)) 
    data_out_reg_i_8
       (.I0(test_lut_addr_count_reg[1]),
        .I1(test_lut_addr_count_reg[0]),
        .I2(data_out_reg_0),
        .O(sel[2]));
  LUT2 #(
    .INIT(4'h9)) 
    data_out_reg_i_9
       (.I0(data_out_reg_0),
        .I1(test_lut_addr_count_reg[0]),
        .O(sel[1]));
endmodule

(* ECO_CHECKSUM = "44edb247" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top
   (clk,
    rst,
    N,
    start,
    mode,
    metric_sel,
    d0,
    d1,
    cs,
    sclk,
    seg,
    an,
    dp);
  input clk;
  input rst;
  input [9:0]N;
  input start;
  input mode;
  input [1:0]metric_sel;
  input d0;
  input d1;
  output cs;
  output sclk;
  output [7:0]seg;
  output [7:0]an;
  output dp;

  wire [9:0]N;
  wire [9:0]N_IBUF;
  wire acquisiton_thread_inst_n_10;
  wire acquisiton_thread_inst_n_100;
  wire acquisiton_thread_inst_n_101;
  wire acquisiton_thread_inst_n_102;
  wire acquisiton_thread_inst_n_103;
  wire acquisiton_thread_inst_n_104;
  wire acquisiton_thread_inst_n_105;
  wire acquisiton_thread_inst_n_106;
  wire acquisiton_thread_inst_n_107;
  wire acquisiton_thread_inst_n_108;
  wire acquisiton_thread_inst_n_109;
  wire acquisiton_thread_inst_n_11;
  wire acquisiton_thread_inst_n_110;
  wire acquisiton_thread_inst_n_111;
  wire acquisiton_thread_inst_n_112;
  wire acquisiton_thread_inst_n_113;
  wire acquisiton_thread_inst_n_114;
  wire acquisiton_thread_inst_n_115;
  wire acquisiton_thread_inst_n_116;
  wire acquisiton_thread_inst_n_117;
  wire acquisiton_thread_inst_n_118;
  wire acquisiton_thread_inst_n_119;
  wire acquisiton_thread_inst_n_12;
  wire acquisiton_thread_inst_n_120;
  wire acquisiton_thread_inst_n_121;
  wire acquisiton_thread_inst_n_122;
  wire acquisiton_thread_inst_n_123;
  wire acquisiton_thread_inst_n_124;
  wire acquisiton_thread_inst_n_125;
  wire acquisiton_thread_inst_n_126;
  wire acquisiton_thread_inst_n_127;
  wire acquisiton_thread_inst_n_128;
  wire acquisiton_thread_inst_n_129;
  wire acquisiton_thread_inst_n_13;
  wire acquisiton_thread_inst_n_2;
  wire acquisiton_thread_inst_n_27;
  wire acquisiton_thread_inst_n_28;
  wire acquisiton_thread_inst_n_3;
  wire acquisiton_thread_inst_n_31;
  wire acquisiton_thread_inst_n_32;
  wire acquisiton_thread_inst_n_33;
  wire acquisiton_thread_inst_n_34;
  wire acquisiton_thread_inst_n_35;
  wire acquisiton_thread_inst_n_36;
  wire acquisiton_thread_inst_n_37;
  wire acquisiton_thread_inst_n_38;
  wire acquisiton_thread_inst_n_39;
  wire acquisiton_thread_inst_n_4;
  wire acquisiton_thread_inst_n_40;
  wire acquisiton_thread_inst_n_41;
  wire acquisiton_thread_inst_n_42;
  wire acquisiton_thread_inst_n_43;
  wire acquisiton_thread_inst_n_44;
  wire acquisiton_thread_inst_n_46;
  wire acquisiton_thread_inst_n_47;
  wire acquisiton_thread_inst_n_48;
  wire acquisiton_thread_inst_n_49;
  wire acquisiton_thread_inst_n_5;
  wire acquisiton_thread_inst_n_50;
  wire acquisiton_thread_inst_n_51;
  wire acquisiton_thread_inst_n_52;
  wire acquisiton_thread_inst_n_53;
  wire acquisiton_thread_inst_n_54;
  wire acquisiton_thread_inst_n_55;
  wire acquisiton_thread_inst_n_56;
  wire acquisiton_thread_inst_n_57;
  wire acquisiton_thread_inst_n_58;
  wire acquisiton_thread_inst_n_59;
  wire acquisiton_thread_inst_n_6;
  wire acquisiton_thread_inst_n_60;
  wire acquisiton_thread_inst_n_61;
  wire acquisiton_thread_inst_n_62;
  wire acquisiton_thread_inst_n_63;
  wire acquisiton_thread_inst_n_64;
  wire acquisiton_thread_inst_n_65;
  wire acquisiton_thread_inst_n_66;
  wire acquisiton_thread_inst_n_67;
  wire acquisiton_thread_inst_n_68;
  wire acquisiton_thread_inst_n_69;
  wire acquisiton_thread_inst_n_7;
  wire acquisiton_thread_inst_n_70;
  wire acquisiton_thread_inst_n_71;
  wire acquisiton_thread_inst_n_72;
  wire acquisiton_thread_inst_n_73;
  wire acquisiton_thread_inst_n_74;
  wire acquisiton_thread_inst_n_75;
  wire acquisiton_thread_inst_n_76;
  wire acquisiton_thread_inst_n_77;
  wire acquisiton_thread_inst_n_78;
  wire acquisiton_thread_inst_n_79;
  wire acquisiton_thread_inst_n_8;
  wire acquisiton_thread_inst_n_80;
  wire acquisiton_thread_inst_n_81;
  wire acquisiton_thread_inst_n_82;
  wire acquisiton_thread_inst_n_83;
  wire acquisiton_thread_inst_n_84;
  wire acquisiton_thread_inst_n_85;
  wire acquisiton_thread_inst_n_86;
  wire acquisiton_thread_inst_n_87;
  wire acquisiton_thread_inst_n_88;
  wire acquisiton_thread_inst_n_89;
  wire acquisiton_thread_inst_n_9;
  wire acquisiton_thread_inst_n_90;
  wire acquisiton_thread_inst_n_91;
  wire acquisiton_thread_inst_n_92;
  wire acquisiton_thread_inst_n_93;
  wire acquisiton_thread_inst_n_94;
  wire acquisiton_thread_inst_n_95;
  wire acquisiton_thread_inst_n_96;
  wire acquisiton_thread_inst_n_97;
  wire acquisiton_thread_inst_n_98;
  wire acquisiton_thread_inst_n_99;
  wire ad1_driver_ready;
  wire ad1_driver_ready_reg;
  wire ad1_driver_ready_rising;
  wire ad1_thread_inst_n_10;
  wire ad1_thread_inst_n_11;
  wire ad1_thread_inst_n_12;
  wire ad1_thread_inst_n_13;
  wire ad1_thread_inst_n_14;
  wire ad1_thread_inst_n_15;
  wire ad1_thread_inst_n_16;
  wire ad1_thread_inst_n_2;
  wire ad1_thread_inst_n_5;
  wire ad1_thread_inst_n_6;
  wire ad1_thread_inst_n_7;
  wire ad1_thread_inst_n_8;
  wire ad1_thread_inst_n_9;
  wire [7:0]an;
  wire [3:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cs;
  wire cs_OBUF;
  wire d0;
  wire d0_IBUF;
  wire display;
  wire dp;
  wire dp_OBUF;
  wire [1:0]\fsm_mode/current_state ;
  wire last_sample;
  wire [13:2]\lut_test/data_out_reg__0 ;
  wire \max_inst/comp_en ;
  wire [13:0]max_reg;
  wire [11:0]\mean_inst/acc_data_in_reg_reg ;
  wire [1:0]metric_sel;
  wire [1:0]metric_sel_IBUF;
  wire metrics_ready;
  wire metrics_ready_reg;
  wire \min_inst/comp_en ;
  wire [13:0]min_reg;
  wire mode;
  wire mode_IBUF;
  wire processing_thread_inst_n_12;
  wire processing_thread_inst_n_13;
  wire processing_thread_inst_n_17;
  wire processing_thread_inst_n_18;
  wire processing_thread_inst_n_19;
  wire processing_thread_inst_n_20;
  wire processing_thread_inst_n_21;
  wire processing_thread_inst_n_22;
  wire processing_thread_inst_n_23;
  wire processing_thread_inst_n_24;
  wire processing_thread_inst_n_25;
  wire processing_thread_inst_n_26;
  wire processing_thread_inst_n_27;
  wire processing_thread_inst_n_28;
  wire processing_thread_inst_n_29;
  wire processing_thread_inst_n_30;
  wire processing_thread_inst_n_31;
  wire rst;
  wire rst_IBUF;
  wire scale_pipe_fsm_ready_reg;
  wire sclk;
  wire sclk_OBUF;
  wire [7:0]seg;
  wire [6:0]seg_OBUF;
  wire start;
  wire start_IBUF;
  wire [0:0]test_lut_addr_count_reg;

  IBUF \N_IBUF[0]_inst 
       (.I(N[0]),
        .O(N_IBUF[0]));
  IBUF \N_IBUF[1]_inst 
       (.I(N[1]),
        .O(N_IBUF[1]));
  IBUF \N_IBUF[2]_inst 
       (.I(N[2]),
        .O(N_IBUF[2]));
  IBUF \N_IBUF[3]_inst 
       (.I(N[3]),
        .O(N_IBUF[3]));
  IBUF \N_IBUF[4]_inst 
       (.I(N[4]),
        .O(N_IBUF[4]));
  IBUF \N_IBUF[5]_inst 
       (.I(N[5]),
        .O(N_IBUF[5]));
  IBUF \N_IBUF[6]_inst 
       (.I(N[6]),
        .O(N_IBUF[6]));
  IBUF \N_IBUF[7]_inst 
       (.I(N[7]),
        .O(N_IBUF[7]));
  IBUF \N_IBUF[8]_inst 
       (.I(N[8]),
        .O(N_IBUF[8]));
  IBUF \N_IBUF[9]_inst 
       (.I(N[9]),
        .O(N_IBUF[9]));
  acquisition_thread acquisiton_thread_inst
       (.A({acquisiton_thread_inst_n_61,acquisiton_thread_inst_n_62,acquisiton_thread_inst_n_63,acquisiton_thread_inst_n_64,acquisiton_thread_inst_n_65,acquisiton_thread_inst_n_66,acquisiton_thread_inst_n_67,acquisiton_thread_inst_n_68,acquisiton_thread_inst_n_69,acquisiton_thread_inst_n_70,acquisiton_thread_inst_n_71,acquisiton_thread_inst_n_72,acquisiton_thread_inst_n_73,acquisiton_thread_inst_n_74}),
        .ADDRARDADDR({acquisiton_thread_inst_n_120,acquisiton_thread_inst_n_121,acquisiton_thread_inst_n_122,acquisiton_thread_inst_n_123,acquisiton_thread_inst_n_124,acquisiton_thread_inst_n_125,acquisiton_thread_inst_n_126,acquisiton_thread_inst_n_127,acquisiton_thread_inst_n_128,acquisiton_thread_inst_n_129}),
        .CO(acquisiton_thread_inst_n_39),
        .D(N_IBUF),
        .DI({acquisiton_thread_inst_n_76,acquisiton_thread_inst_n_77,acquisiton_thread_inst_n_78,acquisiton_thread_inst_n_79}),
        .DOADO(\lut_test/data_out_reg__0 ),
        .E(acquisiton_thread_inst_n_46),
        .FSM_sequential_current_state_reg({acquisiton_thread_inst_n_92,acquisiton_thread_inst_n_93,acquisiton_thread_inst_n_94,acquisiton_thread_inst_n_95,acquisiton_thread_inst_n_96,acquisiton_thread_inst_n_97,acquisiton_thread_inst_n_98,acquisiton_thread_inst_n_99,acquisiton_thread_inst_n_100,acquisiton_thread_inst_n_101,acquisiton_thread_inst_n_102,acquisiton_thread_inst_n_103,acquisiton_thread_inst_n_104,acquisiton_thread_inst_n_105}),
        .O({acquisiton_thread_inst_n_31,acquisiton_thread_inst_n_32,acquisiton_thread_inst_n_33,acquisiton_thread_inst_n_34}),
        .P({acquisiton_thread_inst_n_2,acquisiton_thread_inst_n_3,acquisiton_thread_inst_n_4,acquisiton_thread_inst_n_5,acquisiton_thread_inst_n_6,acquisiton_thread_inst_n_7,acquisiton_thread_inst_n_8,acquisiton_thread_inst_n_9,acquisiton_thread_inst_n_10,acquisiton_thread_inst_n_11,acquisiton_thread_inst_n_12,acquisiton_thread_inst_n_13}),
        .Q({ad1_thread_inst_n_5,ad1_thread_inst_n_6,ad1_thread_inst_n_7,ad1_thread_inst_n_8,ad1_thread_inst_n_9,ad1_thread_inst_n_10,ad1_thread_inst_n_11,ad1_thread_inst_n_12,ad1_thread_inst_n_13,ad1_thread_inst_n_14,ad1_thread_inst_n_15,ad1_thread_inst_n_16}),
        .S({acquisiton_thread_inst_n_80,acquisiton_thread_inst_n_81,acquisiton_thread_inst_n_82,acquisiton_thread_inst_n_83}),
        .acc_data_in_reg_reg(\mean_inst/acc_data_in_reg_reg ),
        .ad1_driver_ready(ad1_driver_ready),
        .ad1_driver_ready_reg(ad1_driver_ready_reg),
        .ad1_driver_ready_rising(ad1_driver_ready_rising),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .comp_en(\max_inst/comp_en ),
        .comp_en_0(\min_inst/comp_en ),
        .current_state(\fsm_mode/current_state ),
        .\current_state_reg[0] (acquisiton_thread_inst_n_27),
        .\current_state_reg[0]_0 (acquisiton_thread_inst_n_28),
        .\current_state_reg[0]_1 ({acquisiton_thread_inst_n_47,acquisiton_thread_inst_n_48,acquisiton_thread_inst_n_49,acquisiton_thread_inst_n_50,acquisiton_thread_inst_n_51,acquisiton_thread_inst_n_52,acquisiton_thread_inst_n_53,acquisiton_thread_inst_n_54,acquisiton_thread_inst_n_55,acquisiton_thread_inst_n_56,acquisiton_thread_inst_n_57,acquisiton_thread_inst_n_58,acquisiton_thread_inst_n_59,acquisiton_thread_inst_n_60}),
        .\current_state_reg[0]_2 (acquisiton_thread_inst_n_118),
        .\current_state_reg[0]_3 (acquisiton_thread_inst_n_119),
        .\current_state_reg[4] (acquisiton_thread_inst_n_44),
        .data0_q2_12_reg_0({acquisiton_thread_inst_n_106,acquisiton_thread_inst_n_107,acquisiton_thread_inst_n_108}),
        .data_out_reg({acquisiton_thread_inst_n_35,acquisiton_thread_inst_n_36,acquisiton_thread_inst_n_37,acquisiton_thread_inst_n_38}),
        .data_out_reg_0({acquisiton_thread_inst_n_40,acquisiton_thread_inst_n_41,acquisiton_thread_inst_n_42,acquisiton_thread_inst_n_43}),
        .last_sample(last_sample),
        .max_reg1_carry__0(max_reg),
        .\max_reg_reg[0] (processing_thread_inst_n_12),
        .\max_reg_reg[12] ({acquisiton_thread_inst_n_109,acquisiton_thread_inst_n_110,acquisiton_thread_inst_n_111}),
        .min_reg1_carry__0(min_reg),
        .\min_reg_reg[0] (processing_thread_inst_n_13),
        .\min_reg_reg[12] ({acquisiton_thread_inst_n_112,acquisiton_thread_inst_n_113,acquisiton_thread_inst_n_114}),
        .\min_reg_reg[12]_0 ({acquisiton_thread_inst_n_115,acquisiton_thread_inst_n_116,acquisiton_thread_inst_n_117}),
        .\min_reg_reg[6] ({acquisiton_thread_inst_n_84,acquisiton_thread_inst_n_85,acquisiton_thread_inst_n_86,acquisiton_thread_inst_n_87}),
        .\min_reg_reg[6]_0 ({acquisiton_thread_inst_n_88,acquisiton_thread_inst_n_89,acquisiton_thread_inst_n_90,acquisiton_thread_inst_n_91}),
        .mode_IBUF(mode_IBUF),
        .rst_IBUF(rst_IBUF),
        .scale_pipe_fsm_ready_reg(scale_pipe_fsm_ready_reg),
        .scale_pipe_fsm_ready_reg_reg_0(acquisiton_thread_inst_n_75),
        .start_IBUF(start_IBUF),
        .\test_lut_addr_count_reg[0]_0 (test_lut_addr_count_reg),
        .\test_lut_addr_count_reg[0]_1 (ad1_thread_inst_n_2));
  ad1_thread ad1_thread_inst
       (.D(d0_IBUF),
        .Q({ad1_thread_inst_n_5,ad1_thread_inst_n_6,ad1_thread_inst_n_7,ad1_thread_inst_n_8,ad1_thread_inst_n_9,ad1_thread_inst_n_10,ad1_thread_inst_n_11,ad1_thread_inst_n_12,ad1_thread_inst_n_13,ad1_thread_inst_n_14,ad1_thread_inst_n_15,ad1_thread_inst_n_16}),
        .ad1_driver_ready(ad1_driver_ready),
        .ad1_driver_ready_reg(ad1_driver_ready_reg),
        .ad1_driver_ready_reg_reg(ad1_thread_inst_n_2),
        .ad1_driver_ready_rising(ad1_driver_ready_rising),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cs_OBUF(cs_OBUF),
        .\current_state_reg[0] (acquisiton_thread_inst_n_44),
        .rst_IBUF(rst_IBUF),
        .sclk_OBUF(sclk_OBUF),
        .start_IBUF(start_IBUF),
        .\test_lut_addr_count_reg[0] (test_lut_addr_count_reg));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  OBUF \an_OBUF[4]_inst 
       (.I(1'b1),
        .O(an[4]));
  OBUF \an_OBUF[5]_inst 
       (.I(1'b1),
        .O(an[5]));
  OBUF \an_OBUF[6]_inst 
       (.I(1'b1),
        .O(an[6]));
  OBUF \an_OBUF[7]_inst 
       (.I(1'b1),
        .O(an[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF cs_OBUF_inst
       (.I(cs_OBUF),
        .O(cs));
  IBUF d0_IBUF_inst
       (.I(d0),
        .O(d0_IBUF));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  IBUF \metric_sel_IBUF[0]_inst 
       (.I(metric_sel[0]),
        .O(metric_sel_IBUF[0]));
  IBUF \metric_sel_IBUF[1]_inst 
       (.I(metric_sel[1]),
        .O(metric_sel_IBUF[1]));
  IBUF mode_IBUF_inst
       (.I(mode),
        .O(mode_IBUF));
  processing_thread processing_thread_inst
       (.ADDRARDADDR({acquisiton_thread_inst_n_120,acquisiton_thread_inst_n_121,acquisiton_thread_inst_n_122,acquisiton_thread_inst_n_123,acquisiton_thread_inst_n_124,acquisiton_thread_inst_n_125,acquisiton_thread_inst_n_126,acquisiton_thread_inst_n_127,acquisiton_thread_inst_n_128,acquisiton_thread_inst_n_129}),
        .CO(acquisiton_thread_inst_n_39),
        .D({acquisiton_thread_inst_n_92,acquisiton_thread_inst_n_93,acquisiton_thread_inst_n_94,acquisiton_thread_inst_n_95,acquisiton_thread_inst_n_96,acquisiton_thread_inst_n_97,acquisiton_thread_inst_n_98,acquisiton_thread_inst_n_99,acquisiton_thread_inst_n_100,acquisiton_thread_inst_n_101,acquisiton_thread_inst_n_102,acquisiton_thread_inst_n_103,acquisiton_thread_inst_n_104,acquisiton_thread_inst_n_105}),
        .DI({acquisiton_thread_inst_n_76,acquisiton_thread_inst_n_77,acquisiton_thread_inst_n_78,acquisiton_thread_inst_n_79}),
        .DOADO(\lut_test/data_out_reg__0 ),
        .E(acquisiton_thread_inst_n_46),
        .\FSM_onehot_current_state_reg[0] (processing_thread_inst_n_17),
        .\FSM_onehot_current_state_reg[1] (acquisiton_thread_inst_n_27),
        .FSM_sequential_current_state_reg(acquisiton_thread_inst_n_118),
        .FSM_sequential_current_state_reg_0(acquisiton_thread_inst_n_119),
        .O({acquisiton_thread_inst_n_31,acquisiton_thread_inst_n_32,acquisiton_thread_inst_n_33,acquisiton_thread_inst_n_34}),
        .P({acquisiton_thread_inst_n_2,acquisiton_thread_inst_n_3,acquisiton_thread_inst_n_4,acquisiton_thread_inst_n_5,acquisiton_thread_inst_n_6,acquisiton_thread_inst_n_7,acquisiton_thread_inst_n_8,acquisiton_thread_inst_n_9,acquisiton_thread_inst_n_10,acquisiton_thread_inst_n_11,acquisiton_thread_inst_n_12,acquisiton_thread_inst_n_13}),
        .Q(min_reg),
        .S({acquisiton_thread_inst_n_80,acquisiton_thread_inst_n_81,acquisiton_thread_inst_n_82,acquisiton_thread_inst_n_83}),
        .\acc_data_in_reg_reg[11] (\mean_inst/acc_data_in_reg_reg ),
        .\acc_data_in_reg_reg[11]_0 ({acquisiton_thread_inst_n_40,acquisiton_thread_inst_n_41,acquisiton_thread_inst_n_42,acquisiton_thread_inst_n_43}),
        .\acc_data_in_reg_reg[7] ({acquisiton_thread_inst_n_35,acquisiton_thread_inst_n_36,acquisiton_thread_inst_n_37,acquisiton_thread_inst_n_38}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .comp_en(\max_inst/comp_en ),
        .comp_en_0(\min_inst/comp_en ),
        .current_state(\fsm_mode/current_state ),
        .data0_q2_12_reg(processing_thread_inst_n_12),
        .display(display),
        .\div_data_reg_reg[13] ({processing_thread_inst_n_18,processing_thread_inst_n_19,processing_thread_inst_n_20,processing_thread_inst_n_21,processing_thread_inst_n_22,processing_thread_inst_n_23,processing_thread_inst_n_24,processing_thread_inst_n_25,processing_thread_inst_n_26,processing_thread_inst_n_27,processing_thread_inst_n_28,processing_thread_inst_n_29,processing_thread_inst_n_30,processing_thread_inst_n_31}),
        .last_sample(last_sample),
        .\max_reg_reg[0] ({acquisiton_thread_inst_n_106,acquisiton_thread_inst_n_107,acquisiton_thread_inst_n_108}),
        .\max_reg_reg[0]_0 ({acquisiton_thread_inst_n_109,acquisiton_thread_inst_n_110,acquisiton_thread_inst_n_111}),
        .\max_reg_reg[13] (max_reg),
        .metric_sel_IBUF(metric_sel_IBUF),
        .metrics_ready(metrics_ready),
        .metrics_ready_reg(metrics_ready_reg),
        .metrics_ready_reg_reg(acquisiton_thread_inst_n_44),
        .min_reg1_carry__0({acquisiton_thread_inst_n_84,acquisiton_thread_inst_n_85,acquisiton_thread_inst_n_86,acquisiton_thread_inst_n_87}),
        .min_reg1_carry__0_0({acquisiton_thread_inst_n_88,acquisiton_thread_inst_n_89,acquisiton_thread_inst_n_90,acquisiton_thread_inst_n_91}),
        .\min_reg_reg[0] ({acquisiton_thread_inst_n_112,acquisiton_thread_inst_n_113,acquisiton_thread_inst_n_114}),
        .\min_reg_reg[0]_0 ({acquisiton_thread_inst_n_115,acquisiton_thread_inst_n_116,acquisiton_thread_inst_n_117}),
        .\min_reg_reg[0]_1 (acquisiton_thread_inst_n_75),
        .\min_reg_reg[12] (processing_thread_inst_n_13),
        .\min_reg_reg[13] ({acquisiton_thread_inst_n_47,acquisiton_thread_inst_n_48,acquisiton_thread_inst_n_49,acquisiton_thread_inst_n_50,acquisiton_thread_inst_n_51,acquisiton_thread_inst_n_52,acquisiton_thread_inst_n_53,acquisiton_thread_inst_n_54,acquisiton_thread_inst_n_55,acquisiton_thread_inst_n_56,acquisiton_thread_inst_n_57,acquisiton_thread_inst_n_58,acquisiton_thread_inst_n_59,acquisiton_thread_inst_n_60}),
        .n_samples_reg_reg_0(acquisiton_thread_inst_n_28),
        .rst_IBUF(rst_IBUF),
        .scale_pipe_fsm_ready_reg(scale_pipe_fsm_ready_reg),
        .x20({acquisiton_thread_inst_n_61,acquisiton_thread_inst_n_62,acquisiton_thread_inst_n_63,acquisiton_thread_inst_n_64,acquisiton_thread_inst_n_65,acquisiton_thread_inst_n_66,acquisiton_thread_inst_n_67,acquisiton_thread_inst_n_68,acquisiton_thread_inst_n_69,acquisiton_thread_inst_n_70,acquisiton_thread_inst_n_71,acquisiton_thread_inst_n_72,acquisiton_thread_inst_n_73,acquisiton_thread_inst_n_74}));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF sclk_OBUF_inst
       (.I(sclk_OBUF),
        .O(sclk));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  OBUF \seg_OBUF[7]_inst 
       (.I(1'b1),
        .O(seg[7]));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  visualization_thread visualization_thread_inst
       (.FSM_sequential_current_state_reg(processing_thread_inst_n_17),
        .FSM_sequential_current_state_reg_0(acquisiton_thread_inst_n_44),
        .an_OBUF(an_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .display(display),
        .dp_OBUF(dp_OBUF),
        .metric_scaled_reg_reg_0({processing_thread_inst_n_18,processing_thread_inst_n_19,processing_thread_inst_n_20,processing_thread_inst_n_21,processing_thread_inst_n_22,processing_thread_inst_n_23,processing_thread_inst_n_24,processing_thread_inst_n_25,processing_thread_inst_n_26,processing_thread_inst_n_27,processing_thread_inst_n_28,processing_thread_inst_n_29,processing_thread_inst_n_30,processing_thread_inst_n_31}),
        .metrics_ready(metrics_ready),
        .metrics_ready_reg(metrics_ready_reg),
        .rst_IBUF(rst_IBUF),
        .seg_OBUF(seg_OBUF),
        .start_IBUF(start_IBUF));
endmodule

module visualization_thread
   (dp_OBUF,
    metrics_ready_reg,
    display,
    seg_OBUF,
    an_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    metrics_ready,
    start_IBUF,
    metric_scaled_reg_reg_0,
    FSM_sequential_current_state_reg,
    FSM_sequential_current_state_reg_0);
  output dp_OBUF;
  output metrics_ready_reg;
  output display;
  output [6:0]seg_OBUF;
  output [3:0]an_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input metrics_ready;
  input start_IBUF;
  input [13:0]metric_scaled_reg_reg_0;
  input FSM_sequential_current_state_reg;
  input FSM_sequential_current_state_reg_0;

  wire FSM_sequential_current_state_reg;
  wire FSM_sequential_current_state_reg_0;
  wire [3:0]an_OBUF;
  wire clk_IBUF_BUFG;
  wire display;
  wire dp0;
  wire dp_OBUF;
  wire fsm_display_n_1;
  wire [13:0]metric_scaled_reg_reg_0;
  wire [11:0]metric_scaled_reg_reg__0;
  wire metrics_ready;
  wire metrics_ready_reg;
  wire rst_IBUF;
  wire [6:0]seg_OBUF;
  wire start_IBUF;
  wire start_acquisition_reg;
  wire NLW_metric_scaled_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_metric_scaled_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_metric_scaled_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_metric_scaled_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_metric_scaled_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_metric_scaled_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_metric_scaled_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_metric_scaled_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_metric_scaled_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_metric_scaled_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_metric_scaled_reg_reg_PCOUT_UNCONNECTED;

  binto7seg bin27seg
       (.P(metric_scaled_reg_reg__0),
        .an_OBUF(an_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dp0(dp0),
        .dp_reg(display),
        .seg_OBUF(seg_OBUF));
  FDSE #(
    .INIT(1'b1)) 
    dp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dp0),
        .Q(dp_OBUF),
        .S(rst_IBUF));
  display_fsm fsm_display
       (.FSM_sequential_current_state_reg_0(display),
        .FSM_sequential_current_state_reg_1(fsm_display_n_1),
        .FSM_sequential_current_state_reg_2(FSM_sequential_current_state_reg),
        .FSM_sequential_current_state_reg_3(FSM_sequential_current_state_reg_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .start_IBUF(start_IBUF),
        .start_acquisition_reg(start_acquisition_reg));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    metric_scaled_reg_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,metric_scaled_reg_reg_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_metric_scaled_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_metric_scaled_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_metric_scaled_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_metric_scaled_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_metric_scaled_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_metric_scaled_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_metric_scaled_reg_reg_P_UNCONNECTED[47:24],metric_scaled_reg_reg__0,NLW_metric_scaled_reg_reg_P_UNCONNECTED[11:0]}),
        .PATTERNBDETECT(NLW_metric_scaled_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_metric_scaled_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_metric_scaled_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(fsm_display_n_1),
        .UNDERFLOW(NLW_metric_scaled_reg_reg_UNDERFLOW_UNCONNECTED));
  FDRE #(
    .INIT(1'b0)) 
    metrics_ready_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metrics_ready),
        .Q(metrics_ready_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_acquisition_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(start_IBUF),
        .Q(start_acquisition_reg),
        .R(1'b0));
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
