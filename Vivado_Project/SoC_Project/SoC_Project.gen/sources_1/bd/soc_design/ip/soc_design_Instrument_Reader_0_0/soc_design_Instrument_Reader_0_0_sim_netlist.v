// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Dec  7 18:16:19 2025
// Host        : Azmis_Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/azmib/Desktop/HardwareSoftwareCodesign/Vivado_Project/SoC_Project/SoC_Project.gen/sources_1/bd/soc_design/ip/soc_design_Instrument_Reader_0_0/soc_design_Instrument_Reader_0_0_sim_netlist.v
// Design      : soc_design_Instrument_Reader_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_design_Instrument_Reader_0_0,Instrument_Reader,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Instrument_Reader,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module soc_design_Instrument_Reader_0_0
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
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
    s00_axi_rready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_mode = "slave S00_AXI_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_mode = "slave S00_AXI_RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
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
  soc_design_Instrument_Reader_0_0_Instrument_Reader U0
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

(* ORIG_REF_NAME = "Instrument_Reader" *) 
module soc_design_Instrument_Reader_0_0_Instrument_Reader
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
    s00_axi_araddr,
    s00_axi_bready,
    s00_axi_wstrb);
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
  input [1:0]s00_axi_araddr;
  input s00_axi_bready;
  input [3:0]s00_axi_wstrb;

  wire Instrument_Reader_slave_lite_v1_0_S00_AXI_inst_n_1;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire [0:0]control_reg;
  wire [31:0]instrument_val;
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

  soc_design_Instrument_Reader_0_0_Instrument_Reader_slave_lite_v1_0_S00_AXI Instrument_Reader_slave_lite_v1_0_S00_AXI_inst
       (.Q(control_reg),
        .SR(Instrument_Reader_slave_lite_v1_0_S00_AXI_inst_n_1),
        .axi_arready_reg_0(axi_arready_reg),
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
        .\s00_axi_rdata[31] (instrument_val),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  soc_design_Instrument_Reader_0_0_instrument_reader_module Instrument_reader_module_inst
       (.Q(control_reg),
        .SR(Instrument_Reader_slave_lite_v1_0_S00_AXI_inst_n_1),
        .\instrument_val_reg[31]_0 (instrument_val),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "Instrument_Reader_slave_lite_v1_0_S00_AXI" *) 
module soc_design_Instrument_Reader_0_0_Instrument_Reader_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    SR,
    s00_axi_bvalid,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    s00_axi_rdata,
    Q,
    s00_axi_aclk,
    \s00_axi_rdata[31] ,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output [0:0]SR;
  output s00_axi_bvalid;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output [31:0]s00_axi_rdata;
  output [0:0]Q;
  input s00_axi_aclk;
  input [31:0]\s00_axi_rdata[31] ;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write_reg_n_0_[1] ;
  wire \FSM_onehot_state_write_reg_n_0_[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0__0;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_bvalid_i_3_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire [31:7]p_1_in;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire [31:0]\s00_axi_rdata[31] ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [1:0]state_read;

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
        .S(SR));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg_n_0_[2] ),
        .R(SR));
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
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(SR));
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
        .R(SR));
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
        .O(SR));
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
        .R(SR));
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
        .R(SR));
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
        .R(SR));
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
        .R(SR));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(Q),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [0]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[10] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [10]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[10]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[11] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [11]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[11]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[12] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [12]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[12]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[13] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [13]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[13]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[14] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [14]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[14]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[15] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [15]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[15]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[16] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [16]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[16]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[17] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [17]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[17]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [18]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[18]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[19] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [19]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[19]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[1] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [1]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [20]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[20]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[21] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [21]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[21]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [22]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[22]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [23]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[23]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [24]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[24]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [25]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[25]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [26]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[26]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [27]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[27]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [28]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[28]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [29]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[29]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[2] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [2]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [30]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[30]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[31] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [31]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[31]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[3] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [3]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [4]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[5] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [5]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [6]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[7] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [7]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[8] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [8]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[9] ),
        .I1(axi_araddr[2]),
        .I2(\s00_axi_rdata[31] [9]),
        .I3(axi_araddr[3]),
        .O(s00_axi_rdata[9]));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'h00053305)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_awaddr[1]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(Q),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "instrument_reader_module" *) 
module soc_design_Instrument_Reader_0_0_instrument_reader_module
   (\instrument_val_reg[31]_0 ,
    SR,
    Q,
    s00_axi_aclk);
  output [31:0]\instrument_val_reg[31]_0 ;
  input [0:0]SR;
  input [0:0]Q;
  input s00_axi_aclk;

  wire [0:0]Q;
  wire [0:0]SR;
  wire cur_v;
  wire [31:1]data0;
  wire [31:1]instrument_val;
  wire \instrument_val[0]_i_1_n_0 ;
  wire \instrument_val[31]_i_10_n_0 ;
  wire \instrument_val[31]_i_1_n_0 ;
  wire \instrument_val[31]_i_3_n_0 ;
  wire \instrument_val[31]_i_4_n_0 ;
  wire \instrument_val[31]_i_5_n_0 ;
  wire \instrument_val[31]_i_6_n_0 ;
  wire \instrument_val[31]_i_7_n_0 ;
  wire \instrument_val[31]_i_8_n_0 ;
  wire \instrument_val[31]_i_9_n_0 ;
  wire [31:0]\instrument_val_reg[31]_0 ;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire s00_axi_aclk;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    cur_v_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q),
        .Q(cur_v),
        .R(SR));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \instrument_val[0]_i_1 
       (.I0(\instrument_val[31]_i_3_n_0 ),
        .I1(\instrument_val[31]_i_4_n_0 ),
        .I2(\instrument_val[31]_i_5_n_0 ),
        .I3(\instrument_val[31]_i_6_n_0 ),
        .I4(\instrument_val_reg[31]_0 [0]),
        .O(\instrument_val[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[10]_i_1 
       (.I0(data0[10]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[10]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[11]_i_1 
       (.I0(data0[11]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[11]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[12]_i_1 
       (.I0(data0[12]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[12]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[13]_i_1 
       (.I0(data0[13]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[13]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[14]_i_1 
       (.I0(data0[14]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[14]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[15]_i_1 
       (.I0(data0[15]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[15]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[16]_i_1 
       (.I0(data0[16]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[16]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[17]_i_1 
       (.I0(data0[17]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[17]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[18]_i_1 
       (.I0(data0[18]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[18]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[19]_i_1 
       (.I0(data0[19]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[19]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[1]_i_1 
       (.I0(data0[1]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[1]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[20]_i_1 
       (.I0(data0[20]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[20]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[21]_i_1 
       (.I0(data0[21]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[21]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[22]_i_1 
       (.I0(data0[22]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[22]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[23]_i_1 
       (.I0(data0[23]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[23]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[24]_i_1 
       (.I0(data0[24]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[24]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[25]_i_1 
       (.I0(data0[25]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[25]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[26]_i_1 
       (.I0(data0[26]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[26]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[27]_i_1 
       (.I0(data0[27]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[27]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[28]_i_1 
       (.I0(data0[28]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[28]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[29]_i_1 
       (.I0(data0[29]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[29]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[2]_i_1 
       (.I0(data0[2]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[2]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[30]_i_1 
       (.I0(data0[30]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[30]));
  LUT2 #(
    .INIT(4'h2)) 
    \instrument_val[31]_i_1 
       (.I0(cur_v),
        .I1(Q),
        .O(\instrument_val[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \instrument_val[31]_i_10 
       (.I0(\instrument_val_reg[31]_0 [13]),
        .I1(\instrument_val_reg[31]_0 [30]),
        .I2(\instrument_val_reg[31]_0 [16]),
        .I3(\instrument_val_reg[31]_0 [17]),
        .O(\instrument_val[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[31]_i_2 
       (.I0(data0[31]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \instrument_val[31]_i_3 
       (.I0(\instrument_val_reg[31]_0 [19]),
        .I1(\instrument_val_reg[31]_0 [12]),
        .I2(\instrument_val_reg[31]_0 [18]),
        .I3(\instrument_val_reg[31]_0 [14]),
        .I4(\instrument_val[31]_i_7_n_0 ),
        .O(\instrument_val[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \instrument_val[31]_i_4 
       (.I0(\instrument_val_reg[31]_0 [26]),
        .I1(\instrument_val_reg[31]_0 [27]),
        .I2(\instrument_val_reg[31]_0 [24]),
        .I3(\instrument_val_reg[31]_0 [25]),
        .I4(\instrument_val[31]_i_8_n_0 ),
        .O(\instrument_val[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \instrument_val[31]_i_5 
       (.I0(\instrument_val_reg[31]_0 [2]),
        .I1(\instrument_val_reg[31]_0 [3]),
        .I2(\instrument_val_reg[31]_0 [15]),
        .I3(\instrument_val_reg[31]_0 [1]),
        .I4(\instrument_val[31]_i_9_n_0 ),
        .O(\instrument_val[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \instrument_val[31]_i_6 
       (.I0(\instrument_val_reg[31]_0 [10]),
        .I1(\instrument_val_reg[31]_0 [11]),
        .I2(\instrument_val_reg[31]_0 [8]),
        .I3(\instrument_val_reg[31]_0 [9]),
        .I4(\instrument_val[31]_i_10_n_0 ),
        .O(\instrument_val[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \instrument_val[31]_i_7 
       (.I0(\instrument_val_reg[31]_0 [21]),
        .I1(\instrument_val_reg[31]_0 [20]),
        .I2(\instrument_val_reg[31]_0 [23]),
        .I3(\instrument_val_reg[31]_0 [22]),
        .O(\instrument_val[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \instrument_val[31]_i_8 
       (.I0(\instrument_val_reg[31]_0 [29]),
        .I1(\instrument_val_reg[31]_0 [28]),
        .I2(\instrument_val_reg[31]_0 [0]),
        .I3(\instrument_val_reg[31]_0 [31]),
        .O(\instrument_val[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \instrument_val[31]_i_9 
       (.I0(\instrument_val_reg[31]_0 [5]),
        .I1(\instrument_val_reg[31]_0 [4]),
        .I2(\instrument_val_reg[31]_0 [7]),
        .I3(\instrument_val_reg[31]_0 [6]),
        .O(\instrument_val[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[3]_i_1 
       (.I0(data0[3]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[3]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[4]_i_1 
       (.I0(data0[4]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[4]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[5]_i_1 
       (.I0(data0[5]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[5]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[6]_i_1 
       (.I0(data0[6]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[6]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[7]_i_1 
       (.I0(data0[7]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[7]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[8]_i_1 
       (.I0(data0[8]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[8]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \instrument_val[9]_i_1 
       (.I0(data0[9]),
        .I1(\instrument_val[31]_i_3_n_0 ),
        .I2(\instrument_val[31]_i_4_n_0 ),
        .I3(\instrument_val[31]_i_5_n_0 ),
        .I4(\instrument_val[31]_i_6_n_0 ),
        .O(instrument_val[9]));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(\instrument_val[0]_i_1_n_0 ),
        .Q(\instrument_val_reg[31]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[10]),
        .Q(\instrument_val_reg[31]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[11]),
        .Q(\instrument_val_reg[31]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[12]),
        .Q(\instrument_val_reg[31]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[13]),
        .Q(\instrument_val_reg[31]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[14]),
        .Q(\instrument_val_reg[31]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[15]),
        .Q(\instrument_val_reg[31]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[16]),
        .Q(\instrument_val_reg[31]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[17]),
        .Q(\instrument_val_reg[31]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[18]),
        .Q(\instrument_val_reg[31]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[19]),
        .Q(\instrument_val_reg[31]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[1]),
        .Q(\instrument_val_reg[31]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[20]),
        .Q(\instrument_val_reg[31]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[21]),
        .Q(\instrument_val_reg[31]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[22]),
        .Q(\instrument_val_reg[31]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[23]),
        .Q(\instrument_val_reg[31]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[24]),
        .Q(\instrument_val_reg[31]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[25]),
        .Q(\instrument_val_reg[31]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[26]),
        .Q(\instrument_val_reg[31]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[27]),
        .Q(\instrument_val_reg[31]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[28]),
        .Q(\instrument_val_reg[31]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[29]),
        .Q(\instrument_val_reg[31]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[2]),
        .Q(\instrument_val_reg[31]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[30]),
        .Q(\instrument_val_reg[31]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[31]),
        .Q(\instrument_val_reg[31]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[3]),
        .Q(\instrument_val_reg[31]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[4]),
        .Q(\instrument_val_reg[31]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[5]),
        .Q(\instrument_val_reg[31]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[6]),
        .Q(\instrument_val_reg[31]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[7]),
        .Q(\instrument_val_reg[31]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[8]),
        .Q(\instrument_val_reg[31]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \instrument_val_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\instrument_val[31]_i_1_n_0 ),
        .D(instrument_val[9]),
        .Q(\instrument_val_reg[31]_0 [9]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\instrument_val_reg[31]_0 [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(\instrument_val_reg[31]_0 [4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(\instrument_val_reg[31]_0 [8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(\instrument_val_reg[31]_0 [12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(\instrument_val_reg[31]_0 [16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(\instrument_val_reg[31]_0 [20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(\instrument_val_reg[31]_0 [24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(\instrument_val_reg[31]_0 [28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,\instrument_val_reg[31]_0 [31:29]}));
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
