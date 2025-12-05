// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Dec  4 08:17:29 2025
// Host        : Azmis_Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_design_IP_InstrumentReader_0_0_sim_netlist.v
// Design      : soc_design_IP_InstrumentReader_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_bvalid,
    s00_axi_rdata,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_araddr,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output s00_axi_bvalid;
  output [31:0]s00_axi_rdata;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input [1:0]s00_axi_araddr;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader_slave_lite_v1_0_S00_AXI IP_InstrumentReader_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_bvalid,
    s00_axi_rdata,
    s00_axi_wready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_araddr,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output s00_axi_bvalid;
  output [31:0]s00_axi_rdata;
  output s00_axi_wready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input [1:0]s00_axi_araddr;
  input s00_axi_bready;

  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write_reg_n_0_[1] ;
  wire \FSM_onehot_state_write_reg_n_0_[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0__0;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_bvalid_i_3_n_0;
  wire axi_bvalid_i_4_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire [31:7]p_1_in;
  wire [0:0]p_5_in;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [1:0]state_read;
  wire \user_control_reg[0]_i_1_n_0 ;
  wire \user_control_reg[31]_i_2_n_0 ;
  wire \user_control_reg_reg_n_0_[10] ;
  wire \user_control_reg_reg_n_0_[11] ;
  wire \user_control_reg_reg_n_0_[12] ;
  wire \user_control_reg_reg_n_0_[13] ;
  wire \user_control_reg_reg_n_0_[14] ;
  wire \user_control_reg_reg_n_0_[15] ;
  wire \user_control_reg_reg_n_0_[16] ;
  wire \user_control_reg_reg_n_0_[17] ;
  wire \user_control_reg_reg_n_0_[18] ;
  wire \user_control_reg_reg_n_0_[19] ;
  wire \user_control_reg_reg_n_0_[1] ;
  wire \user_control_reg_reg_n_0_[20] ;
  wire \user_control_reg_reg_n_0_[21] ;
  wire \user_control_reg_reg_n_0_[22] ;
  wire \user_control_reg_reg_n_0_[23] ;
  wire \user_control_reg_reg_n_0_[24] ;
  wire \user_control_reg_reg_n_0_[25] ;
  wire \user_control_reg_reg_n_0_[26] ;
  wire \user_control_reg_reg_n_0_[27] ;
  wire \user_control_reg_reg_n_0_[28] ;
  wire \user_control_reg_reg_n_0_[29] ;
  wire \user_control_reg_reg_n_0_[2] ;
  wire \user_control_reg_reg_n_0_[30] ;
  wire \user_control_reg_reg_n_0_[31] ;
  wire \user_control_reg_reg_n_0_[3] ;
  wire \user_control_reg_reg_n_0_[4] ;
  wire \user_control_reg_reg_n_0_[5] ;
  wire \user_control_reg_reg_n_0_[6] ;
  wire \user_control_reg_reg_n_0_[7] ;
  wire \user_control_reg_reg_n_0_[8] ;
  wire \user_control_reg_reg_n_0_[9] ;
  wire \user_instrument_data[0]_i_1_n_0 ;
  wire \user_instrument_data[0]_i_2_n_0 ;
  wire \user_instrument_data[0]_i_4_n_0 ;
  wire \user_instrument_data[0]_i_5_n_0 ;
  wire \user_instrument_data[0]_i_6_n_0 ;
  wire \user_instrument_data[0]_i_7_n_0 ;
  wire \user_instrument_data[0]_i_8_n_0 ;
  wire \user_instrument_data[0]_i_9_n_0 ;
  wire [15:0]user_instrument_data_reg;
  wire \user_instrument_data_reg[0]_i_3_n_0 ;
  wire \user_instrument_data_reg[0]_i_3_n_1 ;
  wire \user_instrument_data_reg[0]_i_3_n_2 ;
  wire \user_instrument_data_reg[0]_i_3_n_3 ;
  wire \user_instrument_data_reg[0]_i_3_n_4 ;
  wire \user_instrument_data_reg[0]_i_3_n_5 ;
  wire \user_instrument_data_reg[0]_i_3_n_6 ;
  wire \user_instrument_data_reg[0]_i_3_n_7 ;
  wire \user_instrument_data_reg[12]_i_1_n_1 ;
  wire \user_instrument_data_reg[12]_i_1_n_2 ;
  wire \user_instrument_data_reg[12]_i_1_n_3 ;
  wire \user_instrument_data_reg[12]_i_1_n_4 ;
  wire \user_instrument_data_reg[12]_i_1_n_5 ;
  wire \user_instrument_data_reg[12]_i_1_n_6 ;
  wire \user_instrument_data_reg[12]_i_1_n_7 ;
  wire \user_instrument_data_reg[4]_i_1_n_0 ;
  wire \user_instrument_data_reg[4]_i_1_n_1 ;
  wire \user_instrument_data_reg[4]_i_1_n_2 ;
  wire \user_instrument_data_reg[4]_i_1_n_3 ;
  wire \user_instrument_data_reg[4]_i_1_n_4 ;
  wire \user_instrument_data_reg[4]_i_1_n_5 ;
  wire \user_instrument_data_reg[4]_i_1_n_6 ;
  wire \user_instrument_data_reg[4]_i_1_n_7 ;
  wire \user_instrument_data_reg[8]_i_1_n_0 ;
  wire \user_instrument_data_reg[8]_i_1_n_1 ;
  wire \user_instrument_data_reg[8]_i_1_n_2 ;
  wire \user_instrument_data_reg[8]_i_1_n_3 ;
  wire \user_instrument_data_reg[8]_i_1_n_4 ;
  wire \user_instrument_data_reg[8]_i_1_n_5 ;
  wire \user_instrument_data_reg[8]_i_1_n_6 ;
  wire \user_instrument_data_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_user_instrument_data_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFBFAABF00)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I5(axi_wready),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0F0F0800)) 
    \FSM_onehot_state_write[2]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(\FSM_onehot_state_write[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(axi_wready),
        .S(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF88880FFFFFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_arvalid),
        .I3(axi_arready_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_aresetn),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(axi_arready0__0),
        .I5(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_aresetn),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(axi_arready0__0),
        .I5(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[3]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0__0));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFCCCCCC4F4F4F4F)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[0]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[1]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_aresetn),
        .I2(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(1'b0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFCCFF4CFF4C)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I3(axi_wready),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I5(s00_axi_wvalid),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAA8B8B8B8B8B8)) 
    axi_bvalid_i_1
       (.I0(axi_bvalid_i_2_n_0),
        .I1(axi_bvalid_i_3_n_0),
        .I2(s00_axi_bvalid),
        .I3(s00_axi_bready),
        .I4(s00_axi_wvalid),
        .I5(axi_bvalid_i_4_n_0),
        .O(axi_bvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF80FF00FF00)) 
    axi_bvalid_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I3(axi_wready),
        .I4(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_2_n_0));
  LUT5 #(
    .INIT(32'h00808080)) 
    axi_bvalid_i_3
       (.I0(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I1(s00_axi_bready),
        .I2(s00_axi_bvalid),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .O(axi_bvalid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    axi_bvalid_i_4
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(axi_bvalid_i_4_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0F0F8F800F0F0F0)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(axi_rvalid_reg_0),
        .I3(s00_axi_rready),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    axi_wready_i_1
       (.I0(axi_wready),
        .I1(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(user_instrument_data_reg[0]),
        .I1(p_5_in),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(user_instrument_data_reg[10]),
        .I1(\user_control_reg_reg_n_0_[10] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(user_instrument_data_reg[11]),
        .I1(\user_control_reg_reg_n_0_[11] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(user_instrument_data_reg[12]),
        .I1(\user_control_reg_reg_n_0_[12] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(user_instrument_data_reg[13]),
        .I1(\user_control_reg_reg_n_0_[13] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(user_instrument_data_reg[14]),
        .I1(\user_control_reg_reg_n_0_[14] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(user_instrument_data_reg[15]),
        .I1(\user_control_reg_reg_n_0_[15] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[16] ),
        .O(s00_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[17] ),
        .O(s00_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[18] ),
        .O(s00_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[19] ),
        .O(s00_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(user_instrument_data_reg[1]),
        .I1(\user_control_reg_reg_n_0_[1] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[20] ),
        .O(s00_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[21] ),
        .O(s00_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[22] ),
        .O(s00_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[23] ),
        .O(s00_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[24] ),
        .O(s00_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[25] ),
        .O(s00_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[26] ),
        .O(s00_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[27] ),
        .O(s00_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[28] ),
        .O(s00_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[29] ),
        .O(s00_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(user_instrument_data_reg[2]),
        .I1(\user_control_reg_reg_n_0_[2] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[30] ),
        .O(s00_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(\user_control_reg_reg_n_0_[31] ),
        .O(s00_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(user_instrument_data_reg[3]),
        .I1(\user_control_reg_reg_n_0_[3] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(user_instrument_data_reg[4]),
        .I1(\user_control_reg_reg_n_0_[4] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(user_instrument_data_reg[5]),
        .I1(\user_control_reg_reg_n_0_[5] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(user_instrument_data_reg[6]),
        .I1(\user_control_reg_reg_n_0_[6] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(user_instrument_data_reg[7]),
        .I1(\user_control_reg_reg_n_0_[7] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(user_instrument_data_reg[8]),
        .I1(\user_control_reg_reg_n_0_[8] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(user_instrument_data_reg[9]),
        .I1(\user_control_reg_reg_n_0_[9] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(s00_axi_rdata[9]));
  LUT5 #(
    .INIT(32'hBF008000)) 
    \user_control_reg[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(s00_axi_wstrb[0]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(s00_axi_wvalid),
        .I4(p_5_in),
        .O(\user_control_reg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \user_control_reg[15]_i_1 
       (.I0(\user_control_reg[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \user_control_reg[23]_i_1 
       (.I0(\user_control_reg[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \user_control_reg[31]_i_1 
       (.I0(\user_control_reg[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h010101F100000000)) 
    \user_control_reg[31]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awaddr[0]),
        .I5(s00_axi_wvalid),
        .O(\user_control_reg[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \user_control_reg[7]_i_1 
       (.I0(\user_control_reg[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\user_control_reg[0]_i_1_n_0 ),
        .Q(p_5_in),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\user_control_reg_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\user_control_reg_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\user_control_reg_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\user_control_reg_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\user_control_reg_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\user_control_reg_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\user_control_reg_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\user_control_reg_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\user_control_reg_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\user_control_reg_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(\user_control_reg_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\user_control_reg_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\user_control_reg_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\user_control_reg_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\user_control_reg_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\user_control_reg_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\user_control_reg_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\user_control_reg_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\user_control_reg_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\user_control_reg_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\user_control_reg_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(\user_control_reg_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\user_control_reg_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\user_control_reg_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(\user_control_reg_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\user_control_reg_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\user_control_reg_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\user_control_reg_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\user_control_reg_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\user_control_reg_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\user_control_reg_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAAA0000FFFFFFFF)) 
    \user_instrument_data[0]_i_1 
       (.I0(\user_instrument_data[0]_i_4_n_0 ),
        .I1(\user_instrument_data[0]_i_5_n_0 ),
        .I2(\user_instrument_data[0]_i_6_n_0 ),
        .I3(\user_instrument_data[0]_i_7_n_0 ),
        .I4(\user_instrument_data[0]_i_8_n_0 ),
        .I5(s00_axi_aresetn),
        .O(\user_instrument_data[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \user_instrument_data[0]_i_2 
       (.I0(p_5_in),
        .I1(s00_axi_wvalid),
        .O(\user_instrument_data[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \user_instrument_data[0]_i_4 
       (.I0(user_instrument_data_reg[12]),
        .I1(user_instrument_data_reg[13]),
        .I2(user_instrument_data_reg[14]),
        .O(\user_instrument_data[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \user_instrument_data[0]_i_5 
       (.I0(user_instrument_data_reg[1]),
        .I1(user_instrument_data_reg[13]),
        .I2(user_instrument_data_reg[3]),
        .I3(user_instrument_data_reg[2]),
        .O(\user_instrument_data[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \user_instrument_data[0]_i_6 
       (.I0(user_instrument_data_reg[11]),
        .I1(user_instrument_data_reg[10]),
        .I2(user_instrument_data_reg[9]),
        .I3(user_instrument_data_reg[8]),
        .O(\user_instrument_data[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \user_instrument_data[0]_i_7 
       (.I0(user_instrument_data_reg[7]),
        .I1(user_instrument_data_reg[6]),
        .I2(user_instrument_data_reg[5]),
        .I3(user_instrument_data_reg[4]),
        .O(\user_instrument_data[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \user_instrument_data[0]_i_8 
       (.I0(s00_axi_wvalid),
        .I1(p_5_in),
        .I2(user_instrument_data_reg[15]),
        .O(\user_instrument_data[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \user_instrument_data[0]_i_9 
       (.I0(user_instrument_data_reg[0]),
        .O(\user_instrument_data[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[0]_i_3_n_7 ),
        .Q(user_instrument_data_reg[0]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \user_instrument_data_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\user_instrument_data_reg[0]_i_3_n_0 ,\user_instrument_data_reg[0]_i_3_n_1 ,\user_instrument_data_reg[0]_i_3_n_2 ,\user_instrument_data_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\user_instrument_data_reg[0]_i_3_n_4 ,\user_instrument_data_reg[0]_i_3_n_5 ,\user_instrument_data_reg[0]_i_3_n_6 ,\user_instrument_data_reg[0]_i_3_n_7 }),
        .S({user_instrument_data_reg[3:1],\user_instrument_data[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[8]_i_1_n_5 ),
        .Q(user_instrument_data_reg[10]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[8]_i_1_n_4 ),
        .Q(user_instrument_data_reg[11]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[12]_i_1_n_7 ),
        .Q(user_instrument_data_reg[12]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \user_instrument_data_reg[12]_i_1 
       (.CI(\user_instrument_data_reg[8]_i_1_n_0 ),
        .CO({\NLW_user_instrument_data_reg[12]_i_1_CO_UNCONNECTED [3],\user_instrument_data_reg[12]_i_1_n_1 ,\user_instrument_data_reg[12]_i_1_n_2 ,\user_instrument_data_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\user_instrument_data_reg[12]_i_1_n_4 ,\user_instrument_data_reg[12]_i_1_n_5 ,\user_instrument_data_reg[12]_i_1_n_6 ,\user_instrument_data_reg[12]_i_1_n_7 }),
        .S(user_instrument_data_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[12]_i_1_n_6 ),
        .Q(user_instrument_data_reg[13]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[12]_i_1_n_5 ),
        .Q(user_instrument_data_reg[14]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[12]_i_1_n_4 ),
        .Q(user_instrument_data_reg[15]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[0]_i_3_n_6 ),
        .Q(user_instrument_data_reg[1]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[0]_i_3_n_5 ),
        .Q(user_instrument_data_reg[2]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[0]_i_3_n_4 ),
        .Q(user_instrument_data_reg[3]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[4]_i_1_n_7 ),
        .Q(user_instrument_data_reg[4]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \user_instrument_data_reg[4]_i_1 
       (.CI(\user_instrument_data_reg[0]_i_3_n_0 ),
        .CO({\user_instrument_data_reg[4]_i_1_n_0 ,\user_instrument_data_reg[4]_i_1_n_1 ,\user_instrument_data_reg[4]_i_1_n_2 ,\user_instrument_data_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\user_instrument_data_reg[4]_i_1_n_4 ,\user_instrument_data_reg[4]_i_1_n_5 ,\user_instrument_data_reg[4]_i_1_n_6 ,\user_instrument_data_reg[4]_i_1_n_7 }),
        .S(user_instrument_data_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[4]_i_1_n_6 ),
        .Q(user_instrument_data_reg[5]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[4]_i_1_n_5 ),
        .Q(user_instrument_data_reg[6]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[4]_i_1_n_4 ),
        .Q(user_instrument_data_reg[7]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[8]_i_1_n_7 ),
        .Q(user_instrument_data_reg[8]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \user_instrument_data_reg[8]_i_1 
       (.CI(\user_instrument_data_reg[4]_i_1_n_0 ),
        .CO({\user_instrument_data_reg[8]_i_1_n_0 ,\user_instrument_data_reg[8]_i_1_n_1 ,\user_instrument_data_reg[8]_i_1_n_2 ,\user_instrument_data_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\user_instrument_data_reg[8]_i_1_n_4 ,\user_instrument_data_reg[8]_i_1_n_5 ,\user_instrument_data_reg[8]_i_1_n_6 ,\user_instrument_data_reg[8]_i_1_n_7 }),
        .S(user_instrument_data_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[0]_i_2_n_0 ),
        .D(\user_instrument_data_reg[8]_i_1_n_6 ),
        .Q(user_instrument_data_reg[9]),
        .R(\user_instrument_data[0]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "soc_design_IP_InstrumentReader_0_0,IP_InstrumentReader,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "IP_InstrumentReader,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_mode = "slave S00_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN soc_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_mode = "slave S00_AXI_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_mode = "slave S00_AXI_RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader U0
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
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
