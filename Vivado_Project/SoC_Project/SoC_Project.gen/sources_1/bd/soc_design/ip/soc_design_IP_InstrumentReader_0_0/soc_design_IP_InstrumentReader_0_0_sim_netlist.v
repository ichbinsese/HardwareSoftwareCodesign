// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Dec  6 23:39:00 2025
// Host        : Azmis_Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/azmib/Desktop/HardwareSoftwareCodesign/Vivado_Project/SoC_Project/SoC_Project.gen/sources_1/bd/soc_design/ip/soc_design_IP_InstrumentReader_0_0/soc_design_IP_InstrumentReader_0_0_sim_netlist.v
// Design      : soc_design_IP_InstrumentReader_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_design_IP_InstrumentReader_0_0,IP_InstrumentReader,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "IP_InstrumentReader,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module soc_design_IP_InstrumentReader_0_0
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
  soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader U0
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

(* ORIG_REF_NAME = "IP_InstrumentReader" *) 
module soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_bvalid,
    s00_axi_rdata,
    s00_axi_wready,
    s00_axi_aresetn,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_bready,
    s00_axi_wdata,
    s00_axi_wstrb);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output s00_axi_bvalid;
  output [31:0]s00_axi_rdata;
  output s00_axi_wready;
  input s00_axi_aresetn;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_araddr;
  input [1:0]s00_axi_awaddr;
  input s00_axi_bready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;

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

  soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader_slave_lite_v1_0_S00_AXI IP_InstrumentReader_slave_lite_v1_0_S00_AXI_inst
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

(* ORIG_REF_NAME = "IP_InstrumentReader_slave_lite_v1_0_S00_AXI" *) 
module soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_bvalid,
    s00_axi_rdata,
    s00_axi_wready,
    s00_axi_aresetn,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_bready,
    s00_axi_wdata,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output s00_axi_bvalid;
  output [31:0]s00_axi_rdata;
  output s00_axi_wready;
  input s00_axi_aresetn;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_araddr;
  input [1:0]s00_axi_awaddr;
  input s00_axi_bready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;

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
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire [15:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
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
  wire [31:1]user_control_reg;
  wire \user_control_reg[10]_i_1_n_0 ;
  wire \user_control_reg[11]_i_1_n_0 ;
  wire \user_control_reg[12]_i_1_n_0 ;
  wire \user_control_reg[13]_i_1_n_0 ;
  wire \user_control_reg[14]_i_1_n_0 ;
  wire \user_control_reg[15]_i_1_n_0 ;
  wire \user_control_reg[16]_i_1_n_0 ;
  wire \user_control_reg[17]_i_1_n_0 ;
  wire \user_control_reg[18]_i_1_n_0 ;
  wire \user_control_reg[19]_i_1_n_0 ;
  wire \user_control_reg[1]_i_1_n_0 ;
  wire \user_control_reg[20]_i_1_n_0 ;
  wire \user_control_reg[21]_i_1_n_0 ;
  wire \user_control_reg[22]_i_1_n_0 ;
  wire \user_control_reg[23]_i_1_n_0 ;
  wire \user_control_reg[24]_i_1_n_0 ;
  wire \user_control_reg[25]_i_1_n_0 ;
  wire \user_control_reg[26]_i_1_n_0 ;
  wire \user_control_reg[27]_i_1_n_0 ;
  wire \user_control_reg[28]_i_1_n_0 ;
  wire \user_control_reg[29]_i_1_n_0 ;
  wire \user_control_reg[2]_i_1_n_0 ;
  wire \user_control_reg[30]_i_1_n_0 ;
  wire \user_control_reg[31]_i_1_n_0 ;
  wire \user_control_reg[31]_i_2_n_0 ;
  wire \user_control_reg[3]_i_1_n_0 ;
  wire \user_control_reg[4]_i_1_n_0 ;
  wire \user_control_reg[5]_i_1_n_0 ;
  wire \user_control_reg[6]_i_1_n_0 ;
  wire \user_control_reg[7]_i_1_n_0 ;
  wire \user_control_reg[8]_i_1_n_0 ;
  wire \user_control_reg[9]_i_1_n_0 ;
  wire \user_instrument_data[0]_i_1_n_0 ;
  wire \user_instrument_data[0]_i_2_n_0 ;
  wire \user_instrument_data[0]_i_3_n_0 ;
  wire \user_instrument_data[10]_i_1_n_0 ;
  wire \user_instrument_data[11]_i_1_n_0 ;
  wire \user_instrument_data[13]_i_1_n_0 ;
  wire \user_instrument_data[14]_i_1_n_0 ;
  wire \user_instrument_data[15]_i_1_n_0 ;
  wire \user_instrument_data[15]_i_2_n_0 ;
  wire \user_instrument_data[15]_i_3_n_0 ;
  wire \user_instrument_data[15]_i_4_n_0 ;
  wire \user_instrument_data[15]_i_5_n_0 ;
  wire \user_instrument_data[1]_i_1_n_0 ;
  wire \user_instrument_data[2]_i_1_n_0 ;
  wire \user_instrument_data[3]_i_1_n_0 ;
  wire \user_instrument_data[4]_i_1_n_0 ;
  wire \user_instrument_data[5]_i_1_n_0 ;
  wire \user_instrument_data[6]_i_1_n_0 ;
  wire \user_instrument_data[7]_i_1_n_0 ;
  wire \user_instrument_data[8]_i_1_n_0 ;
  wire \user_instrument_data[9]_i_1_n_0 ;
  wire \user_instrument_data_reg_n_0_[0] ;
  wire \user_instrument_data_reg_n_0_[10] ;
  wire \user_instrument_data_reg_n_0_[11] ;
  wire \user_instrument_data_reg_n_0_[12] ;
  wire \user_instrument_data_reg_n_0_[13] ;
  wire \user_instrument_data_reg_n_0_[14] ;
  wire \user_instrument_data_reg_n_0_[15] ;
  wire \user_instrument_data_reg_n_0_[1] ;
  wire \user_instrument_data_reg_n_0_[2] ;
  wire \user_instrument_data_reg_n_0_[3] ;
  wire \user_instrument_data_reg_n_0_[4] ;
  wire \user_instrument_data_reg_n_0_[5] ;
  wire \user_instrument_data_reg_n_0_[6] ;
  wire \user_instrument_data_reg_n_0_[7] ;
  wire \user_instrument_data_reg_n_0_[8] ;
  wire \user_instrument_data_reg_n_0_[9] ;
  wire [3:2]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFBFAAFFFFBF00)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(axi_wready),
        .I5(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
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
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
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
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_aresetn),
        .I2(axi_arready0__0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_aresetn),
        .I2(axi_arready0__0),
        .I3(state_read[0]),
        .I4(state_read[1]),
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
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
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
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
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
    .INIT(64'hFAFFEAEAFFFFEAEA)) 
    axi_awready_i_2
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(axi_awready_reg_0),
        .I5(s00_axi_awvalid),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA8ABA8BB88BB88)) 
    axi_bvalid_i_1
       (.I0(axi_bvalid_i_2_n_0),
        .I1(axi_bvalid_i_3_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_bvalid),
        .I4(s00_axi_bready),
        .I5(\FSM_onehot_state_write_reg_n_0_[2] ),
        .O(axi_bvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFAEAEAEAEAEAEAEA)) 
    axi_bvalid_i_2
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I4(s00_axi_awvalid),
        .I5(axi_awready_reg_0),
        .O(axi_bvalid_i_2_n_0));
  LUT6 #(
    .INIT(64'hAA80808080808080)) 
    axi_bvalid_i_3
       (.I0(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_bready),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_3_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\user_instrument_data_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S({\user_instrument_data_reg_n_0_[4] ,\user_instrument_data_reg_n_0_[3] ,\user_instrument_data_reg_n_0_[2] ,\user_instrument_data_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S({\user_instrument_data_reg_n_0_[8] ,\user_instrument_data_reg_n_0_[7] ,\user_instrument_data_reg_n_0_[6] ,\user_instrument_data_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S({\user_instrument_data_reg_n_0_[12] ,\user_instrument_data_reg_n_0_[11] ,\user_instrument_data_reg_n_0_[10] ,\user_instrument_data_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3:2],plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],plusOp[15:13]}),
        .S({1'b0,\user_instrument_data_reg_n_0_[15] ,\user_instrument_data_reg_n_0_[14] ,\user_instrument_data_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\user_instrument_data_reg_n_0_[0] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(user_control_reg[10]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[10] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(user_control_reg[11]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[11] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(user_control_reg[12]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[12] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(user_control_reg[13]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(user_control_reg[14]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[14] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(user_control_reg[15]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[15] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[16]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[17]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[18]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[19]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(user_control_reg[1]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[1] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[20]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[21]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[22]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[23]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[24]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[25]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[26]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[27]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[28]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[29]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(user_control_reg[2]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[2] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[30]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(axi_araddr[2]),
        .I1(user_control_reg[31]),
        .I2(axi_araddr[3]),
        .O(s00_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(user_control_reg[3]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[3] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(user_control_reg[4]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[4] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(user_control_reg[5]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[5] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(user_control_reg[6]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[6] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(user_control_reg[7]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[7] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(user_control_reg[8]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[8] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(user_control_reg[9]),
        .I1(axi_araddr[2]),
        .I2(\user_instrument_data_reg_n_0_[9] ),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[9]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[10]_i_1 
       (.I0(s00_axi_wdata[10]),
        .I1(s00_axi_wstrb[1]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[10]),
        .O(\user_control_reg[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[11]_i_1 
       (.I0(s00_axi_wdata[11]),
        .I1(s00_axi_wstrb[1]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[11]),
        .O(\user_control_reg[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[12]_i_1 
       (.I0(s00_axi_wdata[12]),
        .I1(s00_axi_wstrb[1]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[12]),
        .O(\user_control_reg[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[13]_i_1 
       (.I0(s00_axi_wdata[13]),
        .I1(s00_axi_wstrb[1]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[13]),
        .O(\user_control_reg[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[14]_i_1 
       (.I0(s00_axi_wdata[14]),
        .I1(s00_axi_wstrb[1]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[14]),
        .O(\user_control_reg[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[15]_i_1 
       (.I0(s00_axi_wdata[15]),
        .I1(s00_axi_wstrb[1]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[15]),
        .O(\user_control_reg[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[16]_i_1 
       (.I0(s00_axi_wdata[16]),
        .I1(s00_axi_wstrb[2]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[16]),
        .O(\user_control_reg[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[17]_i_1 
       (.I0(s00_axi_wdata[17]),
        .I1(s00_axi_wstrb[2]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[17]),
        .O(\user_control_reg[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[18]_i_1 
       (.I0(s00_axi_wdata[18]),
        .I1(s00_axi_wstrb[2]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[18]),
        .O(\user_control_reg[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[19]_i_1 
       (.I0(s00_axi_wdata[19]),
        .I1(s00_axi_wstrb[2]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[19]),
        .O(\user_control_reg[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(s00_axi_wstrb[0]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[1]),
        .O(\user_control_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[20]_i_1 
       (.I0(s00_axi_wdata[20]),
        .I1(s00_axi_wstrb[2]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[20]),
        .O(\user_control_reg[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[21]_i_1 
       (.I0(s00_axi_wdata[21]),
        .I1(s00_axi_wstrb[2]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[21]),
        .O(\user_control_reg[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[22]_i_1 
       (.I0(s00_axi_wdata[22]),
        .I1(s00_axi_wstrb[2]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[22]),
        .O(\user_control_reg[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[23]_i_1 
       (.I0(s00_axi_wdata[23]),
        .I1(s00_axi_wstrb[2]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[23]),
        .O(\user_control_reg[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[24]_i_1 
       (.I0(s00_axi_wdata[24]),
        .I1(s00_axi_wstrb[3]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[24]),
        .O(\user_control_reg[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[25]_i_1 
       (.I0(s00_axi_wdata[25]),
        .I1(s00_axi_wstrb[3]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[25]),
        .O(\user_control_reg[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[26]_i_1 
       (.I0(s00_axi_wdata[26]),
        .I1(s00_axi_wstrb[3]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[26]),
        .O(\user_control_reg[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[27]_i_1 
       (.I0(s00_axi_wdata[27]),
        .I1(s00_axi_wstrb[3]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[27]),
        .O(\user_control_reg[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[28]_i_1 
       (.I0(s00_axi_wdata[28]),
        .I1(s00_axi_wstrb[3]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[28]),
        .O(\user_control_reg[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[29]_i_1 
       (.I0(s00_axi_wdata[29]),
        .I1(s00_axi_wstrb[3]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[29]),
        .O(\user_control_reg[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[2]_i_1 
       (.I0(s00_axi_wdata[2]),
        .I1(s00_axi_wstrb[0]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[2]),
        .O(\user_control_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[30]_i_1 
       (.I0(s00_axi_wdata[30]),
        .I1(s00_axi_wstrb[3]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[30]),
        .O(\user_control_reg[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[31]_i_1 
       (.I0(s00_axi_wdata[31]),
        .I1(s00_axi_wstrb[3]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[31]),
        .O(\user_control_reg[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \user_control_reg[31]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_awaddr[0]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\user_control_reg[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[3]_i_1 
       (.I0(s00_axi_wdata[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[3]),
        .O(\user_control_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[4]_i_1 
       (.I0(s00_axi_wdata[4]),
        .I1(s00_axi_wstrb[0]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[4]),
        .O(\user_control_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[5]_i_1 
       (.I0(s00_axi_wdata[5]),
        .I1(s00_axi_wstrb[0]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[5]),
        .O(\user_control_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[6]_i_1 
       (.I0(s00_axi_wdata[6]),
        .I1(s00_axi_wstrb[0]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[6]),
        .O(\user_control_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[7]_i_1 
       (.I0(s00_axi_wdata[7]),
        .I1(s00_axi_wstrb[0]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[7]),
        .O(\user_control_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[8]_i_1 
       (.I0(s00_axi_wdata[8]),
        .I1(s00_axi_wstrb[1]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[8]),
        .O(\user_control_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \user_control_reg[9]_i_1 
       (.I0(s00_axi_wdata[9]),
        .I1(s00_axi_wstrb[1]),
        .I2(\user_control_reg[31]_i_2_n_0 ),
        .I3(user_control_reg[9]),
        .O(\user_control_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[10]_i_1_n_0 ),
        .Q(user_control_reg[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[11]_i_1_n_0 ),
        .Q(user_control_reg[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[12]_i_1_n_0 ),
        .Q(user_control_reg[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[13]_i_1_n_0 ),
        .Q(user_control_reg[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[14]_i_1_n_0 ),
        .Q(user_control_reg[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[15]_i_1_n_0 ),
        .Q(user_control_reg[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[16]_i_1_n_0 ),
        .Q(user_control_reg[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[17]_i_1_n_0 ),
        .Q(user_control_reg[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[18]_i_1_n_0 ),
        .Q(user_control_reg[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[19]_i_1_n_0 ),
        .Q(user_control_reg[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[1]_i_1_n_0 ),
        .Q(user_control_reg[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[20]_i_1_n_0 ),
        .Q(user_control_reg[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[21]_i_1_n_0 ),
        .Q(user_control_reg[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[22]_i_1_n_0 ),
        .Q(user_control_reg[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[23]_i_1_n_0 ),
        .Q(user_control_reg[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[24]_i_1_n_0 ),
        .Q(user_control_reg[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[25]_i_1_n_0 ),
        .Q(user_control_reg[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[26]_i_1_n_0 ),
        .Q(user_control_reg[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[27]_i_1_n_0 ),
        .Q(user_control_reg[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[28]_i_1_n_0 ),
        .Q(user_control_reg[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[29]_i_1_n_0 ),
        .Q(user_control_reg[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[2]_i_1_n_0 ),
        .Q(user_control_reg[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[30]_i_1_n_0 ),
        .Q(user_control_reg[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[31]_i_1_n_0 ),
        .Q(user_control_reg[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[3]_i_1_n_0 ),
        .Q(user_control_reg[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[4]_i_1_n_0 ),
        .Q(user_control_reg[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[5]_i_1_n_0 ),
        .Q(user_control_reg[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[6]_i_1_n_0 ),
        .Q(user_control_reg[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[7]_i_1_n_0 ),
        .Q(user_control_reg[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[8]_i_1_n_0 ),
        .Q(user_control_reg[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_control_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wvalid),
        .D(\user_control_reg[9]_i_1_n_0 ),
        .Q(user_control_reg[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h04448888)) 
    \user_instrument_data[0]_i_1 
       (.I0(\user_instrument_data_reg_n_0_[0] ),
        .I1(s00_axi_aresetn),
        .I2(\user_instrument_data[0]_i_2_n_0 ),
        .I3(\user_instrument_data_reg_n_0_[15] ),
        .I4(\user_instrument_data[15]_i_1_n_0 ),
        .O(\user_instrument_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFAAAAAAAA)) 
    \user_instrument_data[0]_i_2 
       (.I0(\user_instrument_data_reg_n_0_[14] ),
        .I1(\user_instrument_data_reg_n_0_[12] ),
        .I2(\user_instrument_data[15]_i_4_n_0 ),
        .I3(\user_instrument_data[15]_i_5_n_0 ),
        .I4(\user_instrument_data[0]_i_3_n_0 ),
        .I5(\user_instrument_data_reg_n_0_[13] ),
        .O(\user_instrument_data[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \user_instrument_data[0]_i_3 
       (.I0(\user_instrument_data_reg_n_0_[1] ),
        .I1(\user_instrument_data_reg_n_0_[3] ),
        .I2(\user_instrument_data_reg_n_0_[2] ),
        .O(\user_instrument_data[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[10]_i_1 
       (.I0(plusOp[10]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[11]_i_1 
       (.I0(plusOp[11]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[13]_i_1 
       (.I0(plusOp[13]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888000FFFFFFFF)) 
    \user_instrument_data[14]_i_1 
       (.I0(\user_instrument_data[15]_i_1_n_0 ),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .I5(s00_axi_aresetn),
        .O(\user_instrument_data[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \user_instrument_data[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\user_control_reg[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wdata[0]),
        .O(\user_instrument_data[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[15]_i_2 
       (.I0(plusOp[15]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \user_instrument_data[15]_i_3 
       (.I0(\user_instrument_data_reg_n_0_[12] ),
        .I1(\user_instrument_data[15]_i_4_n_0 ),
        .I2(\user_instrument_data[15]_i_5_n_0 ),
        .I3(\user_instrument_data_reg_n_0_[1] ),
        .I4(\user_instrument_data_reg_n_0_[3] ),
        .I5(\user_instrument_data_reg_n_0_[2] ),
        .O(\user_instrument_data[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \user_instrument_data[15]_i_4 
       (.I0(\user_instrument_data_reg_n_0_[5] ),
        .I1(\user_instrument_data_reg_n_0_[4] ),
        .I2(\user_instrument_data_reg_n_0_[7] ),
        .I3(\user_instrument_data_reg_n_0_[6] ),
        .O(\user_instrument_data[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \user_instrument_data[15]_i_5 
       (.I0(\user_instrument_data_reg_n_0_[9] ),
        .I1(\user_instrument_data_reg_n_0_[8] ),
        .I2(\user_instrument_data_reg_n_0_[11] ),
        .I3(\user_instrument_data_reg_n_0_[10] ),
        .O(\user_instrument_data[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[1]_i_1 
       (.I0(plusOp[1]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[2]_i_1 
       (.I0(plusOp[2]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[3]_i_1 
       (.I0(plusOp[3]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[4]_i_1 
       (.I0(plusOp[4]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[5]_i_1 
       (.I0(plusOp[5]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[6]_i_1 
       (.I0(plusOp[6]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[7]_i_1 
       (.I0(plusOp[7]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[8]_i_1 
       (.I0(plusOp[8]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \user_instrument_data[9]_i_1 
       (.I0(plusOp[9]),
        .I1(\user_instrument_data_reg_n_0_[15] ),
        .I2(\user_instrument_data_reg_n_0_[13] ),
        .I3(\user_instrument_data[15]_i_3_n_0 ),
        .I4(\user_instrument_data_reg_n_0_[14] ),
        .O(\user_instrument_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\user_instrument_data[0]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[0] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[10]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[10] ),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[11]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[11] ),
        .S(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(plusOp[12]),
        .Q(\user_instrument_data_reg_n_0_[12] ),
        .R(\user_instrument_data[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[13]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[13] ),
        .S(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \user_instrument_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(plusOp[14]),
        .Q(\user_instrument_data_reg_n_0_[14] ),
        .R(\user_instrument_data[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[15]_i_2_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[15] ),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[1]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[1] ),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[2]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[2] ),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[3]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[3] ),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[4]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[4] ),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[5]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[5] ),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[6]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[6] ),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[7]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[7] ),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[8]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[8] ),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \user_instrument_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\user_instrument_data[15]_i_1_n_0 ),
        .D(\user_instrument_data[9]_i_1_n_0 ),
        .Q(\user_instrument_data_reg_n_0_[9] ),
        .S(axi_awready_i_1_n_0));
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
