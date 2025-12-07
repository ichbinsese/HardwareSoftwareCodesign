// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Dec  7 15:35:32 2025
// Host        : Azmis_Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/azmib/Desktop/HardwareSoftwareCodesign/Vivado_Project/SoC_Project/SoC_Project.gen/sources_1/bd/soc_design/ip/soc_design_Temperature_Control_0_0/soc_design_Temperature_Control_0_0_sim_netlist.v
// Design      : soc_design_Temperature_Control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_design_Temperature_Control_0_0,Temperature_Control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Temperature_Control,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module soc_design_Temperature_Control_0_0
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
  soc_design_Temperature_Control_0_0_Temperature_Control U0
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

(* ORIG_REF_NAME = "Temperature_Control" *) 
module soc_design_Temperature_Control_0_0_Temperature_Control
   (axi_awready_reg,
    axi_rvalid_reg,
    axi_arready_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_rvalid_reg;
  output axi_arready_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [1:0]s00_axi_araddr;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
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
  wire [31:0]sensor1_raw;
  wire [31:0]sensor2_raw;
  wire [1:0]slv_reg0;

  soc_design_Temperature_Control_0_0_Temperature_Control_Module Temperature_Control_Module_inst
       (.Q(slv_reg0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sensor1_raw(sensor1_raw),
        .sensor2_raw(sensor2_raw));
  soc_design_Temperature_Control_0_0_Temperature_Control_slave_lite_v1_0_S00_AXI Temperature_Control_slave_lite_v1_0_S00_AXI_inst
       (.Q(slv_reg0),
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
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sensor1_raw(sensor1_raw),
        .sensor2_raw(sensor2_raw));
endmodule

(* ORIG_REF_NAME = "Temperature_Control_Module" *) 
module soc_design_Temperature_Control_0_0_Temperature_Control_Module
   (sensor2_raw,
    sensor1_raw,
    Q,
    s00_axi_aresetn,
    s00_axi_aclk);
  output [31:0]sensor2_raw;
  output [31:0]sensor1_raw;
  input [1:0]Q;
  input s00_axi_aresetn;
  input s00_axi_aclk;

  wire [1:0]Q;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire [31:1]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_i_4_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__2_n_4;
  wire minusOp_carry__2_n_5;
  wire minusOp_carry__2_n_6;
  wire minusOp_carry__2_n_7;
  wire minusOp_carry__3_i_1_n_0;
  wire minusOp_carry__3_i_2_n_0;
  wire minusOp_carry__3_i_3_n_0;
  wire minusOp_carry__3_i_4_n_0;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__3_n_4;
  wire minusOp_carry__3_n_5;
  wire minusOp_carry__3_n_6;
  wire minusOp_carry__3_n_7;
  wire minusOp_carry__4_i_1_n_0;
  wire minusOp_carry__4_i_2_n_0;
  wire minusOp_carry__4_i_3_n_0;
  wire minusOp_carry__4_i_4_n_0;
  wire minusOp_carry__4_n_0;
  wire minusOp_carry__4_n_1;
  wire minusOp_carry__4_n_2;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry__4_n_4;
  wire minusOp_carry__4_n_5;
  wire minusOp_carry__4_n_6;
  wire minusOp_carry__4_n_7;
  wire minusOp_carry__5_i_1_n_0;
  wire minusOp_carry__5_i_2_n_0;
  wire minusOp_carry__5_i_3_n_0;
  wire minusOp_carry__5_i_4_n_0;
  wire minusOp_carry__5_n_0;
  wire minusOp_carry__5_n_1;
  wire minusOp_carry__5_n_2;
  wire minusOp_carry__5_n_3;
  wire minusOp_carry__5_n_4;
  wire minusOp_carry__5_n_5;
  wire minusOp_carry__5_n_6;
  wire minusOp_carry__5_n_7;
  wire minusOp_carry__6_i_1_n_0;
  wire minusOp_carry__6_i_2_n_0;
  wire minusOp_carry__6_i_3_n_0;
  wire minusOp_carry__6_n_2;
  wire minusOp_carry__6_n_3;
  wire minusOp_carry__6_n_5;
  wire minusOp_carry__6_n_6;
  wire minusOp_carry__6_n_7;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_0 ;
  wire \minusOp_inferred__0/i__carry__1_n_1 ;
  wire \minusOp_inferred__0/i__carry__1_n_2 ;
  wire \minusOp_inferred__0/i__carry__1_n_3 ;
  wire \minusOp_inferred__0/i__carry__2_n_0 ;
  wire \minusOp_inferred__0/i__carry__2_n_1 ;
  wire \minusOp_inferred__0/i__carry__2_n_2 ;
  wire \minusOp_inferred__0/i__carry__2_n_3 ;
  wire \minusOp_inferred__0/i__carry__3_n_0 ;
  wire \minusOp_inferred__0/i__carry__3_n_1 ;
  wire \minusOp_inferred__0/i__carry__3_n_2 ;
  wire \minusOp_inferred__0/i__carry__3_n_3 ;
  wire \minusOp_inferred__0/i__carry__4_n_0 ;
  wire \minusOp_inferred__0/i__carry__4_n_1 ;
  wire \minusOp_inferred__0/i__carry__4_n_2 ;
  wire \minusOp_inferred__0/i__carry__4_n_3 ;
  wire \minusOp_inferred__0/i__carry__5_n_0 ;
  wire \minusOp_inferred__0/i__carry__5_n_1 ;
  wire \minusOp_inferred__0/i__carry__5_n_2 ;
  wire \minusOp_inferred__0/i__carry__5_n_3 ;
  wire \minusOp_inferred__0/i__carry__6_n_2 ;
  wire \minusOp_inferred__0/i__carry__6_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire [15:0]p_0_in;
  wire [31:1]plusOp;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__3_n_4;
  wire plusOp_carry__3_n_5;
  wire plusOp_carry__3_n_6;
  wire plusOp_carry__3_n_7;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__4_n_4;
  wire plusOp_carry__4_n_5;
  wire plusOp_carry__4_n_6;
  wire plusOp_carry__4_n_7;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__5_n_4;
  wire plusOp_carry__5_n_5;
  wire plusOp_carry__5_n_6;
  wire plusOp_carry__5_n_7;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry__6_n_5;
  wire plusOp_carry__6_n_6;
  wire plusOp_carry__6_n_7;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry__4_n_0 ;
  wire \plusOp_inferred__0/i__carry__4_n_1 ;
  wire \plusOp_inferred__0/i__carry__4_n_2 ;
  wire \plusOp_inferred__0/i__carry__4_n_3 ;
  wire \plusOp_inferred__0/i__carry__5_n_0 ;
  wire \plusOp_inferred__0/i__carry__5_n_1 ;
  wire \plusOp_inferred__0/i__carry__5_n_2 ;
  wire \plusOp_inferred__0/i__carry__5_n_3 ;
  wire \plusOp_inferred__0/i__carry__6_n_2 ;
  wire \plusOp_inferred__0/i__carry__6_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [31:0]sensor1_raw;
  wire sensor1_raw0_carry__0_i_1_n_0;
  wire sensor1_raw0_carry__0_i_2_n_0;
  wire sensor1_raw0_carry__0_i_3_n_0;
  wire sensor1_raw0_carry__0_i_4_n_0;
  wire sensor1_raw0_carry__0_i_5_n_0;
  wire sensor1_raw0_carry__0_i_6_n_0;
  wire sensor1_raw0_carry__0_n_0;
  wire sensor1_raw0_carry__0_n_1;
  wire sensor1_raw0_carry__0_n_2;
  wire sensor1_raw0_carry__0_n_3;
  wire sensor1_raw0_carry__1_i_1_n_0;
  wire sensor1_raw0_carry__1_i_2_n_0;
  wire sensor1_raw0_carry__1_i_3_n_0;
  wire sensor1_raw0_carry__1_i_4_n_0;
  wire sensor1_raw0_carry__1_i_5_n_0;
  wire sensor1_raw0_carry__1_i_6_n_0;
  wire sensor1_raw0_carry__1_n_0;
  wire sensor1_raw0_carry__1_n_1;
  wire sensor1_raw0_carry__1_n_2;
  wire sensor1_raw0_carry__1_n_3;
  wire sensor1_raw0_carry__2_i_1_n_0;
  wire sensor1_raw0_carry__2_i_2_n_0;
  wire sensor1_raw0_carry__2_i_3_n_0;
  wire sensor1_raw0_carry__2_i_4_n_0;
  wire sensor1_raw0_carry__2_i_5_n_0;
  wire sensor1_raw0_carry__2_i_6_n_0;
  wire sensor1_raw0_carry__2_i_7_n_0;
  wire sensor1_raw0_carry__2_i_8_n_0;
  wire sensor1_raw0_carry__2_n_0;
  wire sensor1_raw0_carry__2_n_1;
  wire sensor1_raw0_carry__2_n_2;
  wire sensor1_raw0_carry__2_n_3;
  wire sensor1_raw0_carry_i_1_n_0;
  wire sensor1_raw0_carry_i_2_n_0;
  wire sensor1_raw0_carry_i_3_n_0;
  wire sensor1_raw0_carry_i_4_n_0;
  wire sensor1_raw0_carry_i_5_n_0;
  wire sensor1_raw0_carry_i_6_n_0;
  wire sensor1_raw0_carry_i_7_n_0;
  wire sensor1_raw0_carry_i_8_n_0;
  wire sensor1_raw0_carry_n_0;
  wire sensor1_raw0_carry_n_1;
  wire sensor1_raw0_carry_n_2;
  wire sensor1_raw0_carry_n_3;
  wire \sensor1_raw[14]_i_2_n_0 ;
  wire \sensor1_raw[15]_i_2_n_0 ;
  wire \sensor1_raw[15]_i_3_n_0 ;
  wire \sensor1_raw[15]_i_4_n_0 ;
  wire \sensor1_raw[15]_i_5_n_0 ;
  wire \sensor1_raw[15]_i_6_n_0 ;
  wire \sensor1_raw[31]_i_1_n_0 ;
  wire [31:0]sensor2_raw;
  wire \sensor2_raw[0]_i_1_n_0 ;
  wire \sensor2_raw[10]_i_1_n_0 ;
  wire \sensor2_raw[11]_i_1_n_0 ;
  wire \sensor2_raw[12]_i_1_n_0 ;
  wire \sensor2_raw[13]_i_1_n_0 ;
  wire \sensor2_raw[14]_i_1_n_0 ;
  wire \sensor2_raw[14]_i_2_n_0 ;
  wire \sensor2_raw[15]_i_1_n_0 ;
  wire \sensor2_raw[15]_i_2_n_0 ;
  wire \sensor2_raw[15]_i_3_n_0 ;
  wire \sensor2_raw[15]_i_4_n_0 ;
  wire \sensor2_raw[15]_i_5_n_0 ;
  wire \sensor2_raw[15]_i_6_n_0 ;
  wire \sensor2_raw[15]_i_7_n_0 ;
  wire \sensor2_raw[1]_i_1_n_0 ;
  wire \sensor2_raw[2]_i_1_n_0 ;
  wire \sensor2_raw[31]_i_1_n_0 ;
  wire \sensor2_raw[3]_i_1_n_0 ;
  wire \sensor2_raw[4]_i_1_n_0 ;
  wire \sensor2_raw[5]_i_1_n_0 ;
  wire \sensor2_raw[6]_i_1_n_0 ;
  wire \sensor2_raw[7]_i_1_n_0 ;
  wire \sensor2_raw[8]_i_1_n_0 ;
  wire \sensor2_raw[9]_i_1_n_0 ;
  wire \ticks[0]_i_2_n_0 ;
  wire [31:0]ticks_reg;
  wire \ticks_reg[0]_i_1_n_0 ;
  wire \ticks_reg[0]_i_1_n_1 ;
  wire \ticks_reg[0]_i_1_n_2 ;
  wire \ticks_reg[0]_i_1_n_3 ;
  wire \ticks_reg[0]_i_1_n_4 ;
  wire \ticks_reg[0]_i_1_n_5 ;
  wire \ticks_reg[0]_i_1_n_6 ;
  wire \ticks_reg[0]_i_1_n_7 ;
  wire \ticks_reg[12]_i_1_n_0 ;
  wire \ticks_reg[12]_i_1_n_1 ;
  wire \ticks_reg[12]_i_1_n_2 ;
  wire \ticks_reg[12]_i_1_n_3 ;
  wire \ticks_reg[12]_i_1_n_4 ;
  wire \ticks_reg[12]_i_1_n_5 ;
  wire \ticks_reg[12]_i_1_n_6 ;
  wire \ticks_reg[12]_i_1_n_7 ;
  wire \ticks_reg[16]_i_1_n_0 ;
  wire \ticks_reg[16]_i_1_n_1 ;
  wire \ticks_reg[16]_i_1_n_2 ;
  wire \ticks_reg[16]_i_1_n_3 ;
  wire \ticks_reg[16]_i_1_n_4 ;
  wire \ticks_reg[16]_i_1_n_5 ;
  wire \ticks_reg[16]_i_1_n_6 ;
  wire \ticks_reg[16]_i_1_n_7 ;
  wire \ticks_reg[20]_i_1_n_0 ;
  wire \ticks_reg[20]_i_1_n_1 ;
  wire \ticks_reg[20]_i_1_n_2 ;
  wire \ticks_reg[20]_i_1_n_3 ;
  wire \ticks_reg[20]_i_1_n_4 ;
  wire \ticks_reg[20]_i_1_n_5 ;
  wire \ticks_reg[20]_i_1_n_6 ;
  wire \ticks_reg[20]_i_1_n_7 ;
  wire \ticks_reg[24]_i_1_n_0 ;
  wire \ticks_reg[24]_i_1_n_1 ;
  wire \ticks_reg[24]_i_1_n_2 ;
  wire \ticks_reg[24]_i_1_n_3 ;
  wire \ticks_reg[24]_i_1_n_4 ;
  wire \ticks_reg[24]_i_1_n_5 ;
  wire \ticks_reg[24]_i_1_n_6 ;
  wire \ticks_reg[24]_i_1_n_7 ;
  wire \ticks_reg[28]_i_1_n_1 ;
  wire \ticks_reg[28]_i_1_n_2 ;
  wire \ticks_reg[28]_i_1_n_3 ;
  wire \ticks_reg[28]_i_1_n_4 ;
  wire \ticks_reg[28]_i_1_n_5 ;
  wire \ticks_reg[28]_i_1_n_6 ;
  wire \ticks_reg[28]_i_1_n_7 ;
  wire \ticks_reg[4]_i_1_n_0 ;
  wire \ticks_reg[4]_i_1_n_1 ;
  wire \ticks_reg[4]_i_1_n_2 ;
  wire \ticks_reg[4]_i_1_n_3 ;
  wire \ticks_reg[4]_i_1_n_4 ;
  wire \ticks_reg[4]_i_1_n_5 ;
  wire \ticks_reg[4]_i_1_n_6 ;
  wire \ticks_reg[4]_i_1_n_7 ;
  wire \ticks_reg[8]_i_1_n_0 ;
  wire \ticks_reg[8]_i_1_n_1 ;
  wire \ticks_reg[8]_i_1_n_2 ;
  wire \ticks_reg[8]_i_1_n_3 ;
  wire \ticks_reg[8]_i_1_n_4 ;
  wire \ticks_reg[8]_i_1_n_5 ;
  wire \ticks_reg[8]_i_1_n_6 ;
  wire \ticks_reg[8]_i_1_n_7 ;
  wire [3:2]NLW_minusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:0]NLW_sensor1_raw0_carry_O_UNCONNECTED;
  wire [3:0]NLW_sensor1_raw0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sensor1_raw0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_sensor1_raw0_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_ticks_reg[28]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(sensor1_raw[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(sensor1_raw[5]),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(sensor1_raw[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(sensor1_raw[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(sensor1_raw[12]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(sensor1_raw[11]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(sensor1_raw[10]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(sensor1_raw[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(sensor1_raw[16]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(sensor1_raw[15]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(sensor1_raw[14]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(sensor1_raw[13]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(sensor1_raw[20]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(sensor1_raw[19]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(sensor1_raw[18]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(sensor1_raw[17]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(sensor1_raw[24]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(sensor1_raw[23]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(sensor1_raw[22]),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(sensor1_raw[21]),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(sensor1_raw[28]),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(sensor1_raw[27]),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(sensor1_raw[26]),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_4
       (.I0(sensor1_raw[25]),
        .O(i__carry__5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_1
       (.I0(sensor1_raw[31]),
        .O(i__carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_2
       (.I0(sensor1_raw[30]),
        .O(i__carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_3
       (.I0(sensor1_raw[29]),
        .O(i__carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(sensor1_raw[1]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(sensor1_raw[4]),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(sensor1_raw[3]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(sensor1_raw[2]),
        .O(i__carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(sensor2_raw[0]),
        .DI({1'b0,1'b0,1'b0,sensor2_raw[1]}),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({sensor2_raw[4:2],minusOp_carry_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sensor2_raw[8:6],1'b0}),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,sensor2_raw[5]}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(sensor2_raw[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(sensor2_raw[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(sensor2_raw[6]),
        .O(minusOp_carry__0_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(sensor2_raw[12:9]),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(sensor2_raw[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(sensor2_raw[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(sensor2_raw[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(sensor2_raw[9]),
        .O(minusOp_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(sensor2_raw[16:13]),
        .O({minusOp_carry__2_n_4,minusOp_carry__2_n_5,minusOp_carry__2_n_6,minusOp_carry__2_n_7}),
        .S({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(sensor2_raw[16]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(sensor2_raw[15]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(sensor2_raw[14]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_4
       (.I0(sensor2_raw[13]),
        .O(minusOp_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(sensor2_raw[20:17]),
        .O({minusOp_carry__3_n_4,minusOp_carry__3_n_5,minusOp_carry__3_n_6,minusOp_carry__3_n_7}),
        .S({minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_1
       (.I0(sensor2_raw[20]),
        .O(minusOp_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_2
       (.I0(sensor2_raw[19]),
        .O(minusOp_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_3
       (.I0(sensor2_raw[18]),
        .O(minusOp_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_4
       (.I0(sensor2_raw[17]),
        .O(minusOp_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({minusOp_carry__4_n_0,minusOp_carry__4_n_1,minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(sensor2_raw[24:21]),
        .O({minusOp_carry__4_n_4,minusOp_carry__4_n_5,minusOp_carry__4_n_6,minusOp_carry__4_n_7}),
        .S({minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0,minusOp_carry__4_i_3_n_0,minusOp_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_1
       (.I0(sensor2_raw[24]),
        .O(minusOp_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_2
       (.I0(sensor2_raw[23]),
        .O(minusOp_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_3
       (.I0(sensor2_raw[22]),
        .O(minusOp_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_4
       (.I0(sensor2_raw[21]),
        .O(minusOp_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__5
       (.CI(minusOp_carry__4_n_0),
        .CO({minusOp_carry__5_n_0,minusOp_carry__5_n_1,minusOp_carry__5_n_2,minusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(sensor2_raw[28:25]),
        .O({minusOp_carry__5_n_4,minusOp_carry__5_n_5,minusOp_carry__5_n_6,minusOp_carry__5_n_7}),
        .S({minusOp_carry__5_i_1_n_0,minusOp_carry__5_i_2_n_0,minusOp_carry__5_i_3_n_0,minusOp_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_1
       (.I0(sensor2_raw[28]),
        .O(minusOp_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_2
       (.I0(sensor2_raw[27]),
        .O(minusOp_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_3
       (.I0(sensor2_raw[26]),
        .O(minusOp_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_4
       (.I0(sensor2_raw[25]),
        .O(minusOp_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__6
       (.CI(minusOp_carry__5_n_0),
        .CO({NLW_minusOp_carry__6_CO_UNCONNECTED[3:2],minusOp_carry__6_n_2,minusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sensor2_raw[30:29]}),
        .O({NLW_minusOp_carry__6_O_UNCONNECTED[3],minusOp_carry__6_n_5,minusOp_carry__6_n_6,minusOp_carry__6_n_7}),
        .S({1'b0,minusOp_carry__6_i_1_n_0,minusOp_carry__6_i_2_n_0,minusOp_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_1
       (.I0(sensor2_raw[31]),
        .O(minusOp_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_2
       (.I0(sensor2_raw[30]),
        .O(minusOp_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_3
       (.I0(sensor2_raw[29]),
        .O(minusOp_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(sensor2_raw[1]),
        .O(minusOp_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(sensor1_raw[0]),
        .DI({1'b0,1'b0,1'b0,sensor1_raw[1]}),
        .O(minusOp[4:1]),
        .S({sensor1_raw[4:2],i__carry_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({sensor1_raw[8:6],1'b0}),
        .O(minusOp[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,sensor1_raw[5]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__1 
       (.CI(\minusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__1_n_0 ,\minusOp_inferred__0/i__carry__1_n_1 ,\minusOp_inferred__0/i__carry__1_n_2 ,\minusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(sensor1_raw[12:9]),
        .O(minusOp[12:9]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__2 
       (.CI(\minusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__2_n_0 ,\minusOp_inferred__0/i__carry__2_n_1 ,\minusOp_inferred__0/i__carry__2_n_2 ,\minusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(sensor1_raw[16:13]),
        .O(minusOp[16:13]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__3 
       (.CI(\minusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__3_n_0 ,\minusOp_inferred__0/i__carry__3_n_1 ,\minusOp_inferred__0/i__carry__3_n_2 ,\minusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(sensor1_raw[20:17]),
        .O(minusOp[20:17]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__4 
       (.CI(\minusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__4_n_0 ,\minusOp_inferred__0/i__carry__4_n_1 ,\minusOp_inferred__0/i__carry__4_n_2 ,\minusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(sensor1_raw[24:21]),
        .O(minusOp[24:21]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__5 
       (.CI(\minusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__5_n_0 ,\minusOp_inferred__0/i__carry__5_n_1 ,\minusOp_inferred__0/i__carry__5_n_2 ,\minusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(sensor1_raw[28:25]),
        .O(minusOp[28:25]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__6 
       (.CI(\minusOp_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\minusOp_inferred__0/i__carry__6_n_2 ,\minusOp_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sensor1_raw[30:29]}),
        .O({\NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED [3],minusOp[31:29]}),
        .S({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(sensor2_raw[0]),
        .DI({sensor2_raw[4:2],1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({plusOp_carry_i_1_n_0,plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,sensor2_raw[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sensor2_raw[5]}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S({sensor2_raw[8:6],plusOp_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry__0_i_1
       (.I0(sensor2_raw[5]),
        .O(plusOp_carry__0_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S(sensor2_raw[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__2_n_4,plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S(sensor2_raw[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__3_n_4,plusOp_carry__3_n_5,plusOp_carry__3_n_6,plusOp_carry__3_n_7}),
        .S(sensor2_raw[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__4_n_4,plusOp_carry__4_n_5,plusOp_carry__4_n_6,plusOp_carry__4_n_7}),
        .S(sensor2_raw[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__5_n_4,plusOp_carry__5_n_5,plusOp_carry__5_n_6,plusOp_carry__5_n_7}),
        .S(sensor2_raw[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],plusOp_carry__6_n_5,plusOp_carry__6_n_6,plusOp_carry__6_n_7}),
        .S({1'b0,sensor2_raw[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(sensor2_raw[4]),
        .O(plusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_2
       (.I0(sensor2_raw[3]),
        .O(plusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_3
       (.I0(sensor2_raw[2]),
        .O(plusOp_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(sensor1_raw[0]),
        .DI({sensor1_raw[4:2],1'b0}),
        .O(plusOp[4:1]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,sensor1_raw[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sensor1_raw[5]}),
        .O(plusOp[8:5]),
        .S({sensor1_raw[8:6],i__carry__0_i_1__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(sensor1_raw[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(sensor1_raw[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S(sensor1_raw[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__4_n_0 ,\plusOp_inferred__0/i__carry__4_n_1 ,\plusOp_inferred__0/i__carry__4_n_2 ,\plusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[24:21]),
        .S(sensor1_raw[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__5 
       (.CI(\plusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__5_n_0 ,\plusOp_inferred__0/i__carry__5_n_1 ,\plusOp_inferred__0/i__carry__5_n_2 ,\plusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[28:25]),
        .S(sensor1_raw[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__6 
       (.CI(\plusOp_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__0/i__carry__6_n_2 ,\plusOp_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED [3],plusOp[31:29]}),
        .S({1'b0,sensor1_raw[31:29]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sensor1_raw0_carry
       (.CI(1'b0),
        .CO({sensor1_raw0_carry_n_0,sensor1_raw0_carry_n_1,sensor1_raw0_carry_n_2,sensor1_raw0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({sensor1_raw0_carry_i_1_n_0,sensor1_raw0_carry_i_2_n_0,sensor1_raw0_carry_i_3_n_0,sensor1_raw0_carry_i_4_n_0}),
        .O(NLW_sensor1_raw0_carry_O_UNCONNECTED[3:0]),
        .S({sensor1_raw0_carry_i_5_n_0,sensor1_raw0_carry_i_6_n_0,sensor1_raw0_carry_i_7_n_0,sensor1_raw0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sensor1_raw0_carry__0
       (.CI(sensor1_raw0_carry_n_0),
        .CO({sensor1_raw0_carry__0_n_0,sensor1_raw0_carry__0_n_1,sensor1_raw0_carry__0_n_2,sensor1_raw0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sensor1_raw0_carry__0_i_1_n_0,sensor1_raw0_carry__0_i_2_n_0}),
        .O(NLW_sensor1_raw0_carry__0_O_UNCONNECTED[3:0]),
        .S({sensor1_raw0_carry__0_i_3_n_0,sensor1_raw0_carry__0_i_4_n_0,sensor1_raw0_carry__0_i_5_n_0,sensor1_raw0_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    sensor1_raw0_carry__0_i_1
       (.I0(ticks_reg[10]),
        .I1(ticks_reg[11]),
        .O(sensor1_raw0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sensor1_raw0_carry__0_i_2
       (.I0(ticks_reg[8]),
        .I1(ticks_reg[9]),
        .O(sensor1_raw0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sensor1_raw0_carry__0_i_3
       (.I0(ticks_reg[14]),
        .I1(ticks_reg[15]),
        .O(sensor1_raw0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sensor1_raw0_carry__0_i_4
       (.I0(ticks_reg[12]),
        .I1(ticks_reg[13]),
        .O(sensor1_raw0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sensor1_raw0_carry__0_i_5
       (.I0(ticks_reg[10]),
        .I1(ticks_reg[11]),
        .O(sensor1_raw0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sensor1_raw0_carry__0_i_6
       (.I0(ticks_reg[8]),
        .I1(ticks_reg[9]),
        .O(sensor1_raw0_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sensor1_raw0_carry__1
       (.CI(sensor1_raw0_carry__0_n_0),
        .CO({sensor1_raw0_carry__1_n_0,sensor1_raw0_carry__1_n_1,sensor1_raw0_carry__1_n_2,sensor1_raw0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sensor1_raw0_carry__1_i_1_n_0,sensor1_raw0_carry__1_i_2_n_0}),
        .O(NLW_sensor1_raw0_carry__1_O_UNCONNECTED[3:0]),
        .S({sensor1_raw0_carry__1_i_3_n_0,sensor1_raw0_carry__1_i_4_n_0,sensor1_raw0_carry__1_i_5_n_0,sensor1_raw0_carry__1_i_6_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    sensor1_raw0_carry__1_i_1
       (.I0(ticks_reg[18]),
        .I1(ticks_reg[19]),
        .O(sensor1_raw0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sensor1_raw0_carry__1_i_2
       (.I0(ticks_reg[16]),
        .I1(ticks_reg[17]),
        .O(sensor1_raw0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sensor1_raw0_carry__1_i_3
       (.I0(ticks_reg[22]),
        .I1(ticks_reg[23]),
        .O(sensor1_raw0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sensor1_raw0_carry__1_i_4
       (.I0(ticks_reg[20]),
        .I1(ticks_reg[21]),
        .O(sensor1_raw0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sensor1_raw0_carry__1_i_5
       (.I0(ticks_reg[19]),
        .I1(ticks_reg[18]),
        .O(sensor1_raw0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sensor1_raw0_carry__1_i_6
       (.I0(ticks_reg[17]),
        .I1(ticks_reg[16]),
        .O(sensor1_raw0_carry__1_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sensor1_raw0_carry__2
       (.CI(sensor1_raw0_carry__1_n_0),
        .CO({sensor1_raw0_carry__2_n_0,sensor1_raw0_carry__2_n_1,sensor1_raw0_carry__2_n_2,sensor1_raw0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({sensor1_raw0_carry__2_i_1_n_0,sensor1_raw0_carry__2_i_2_n_0,sensor1_raw0_carry__2_i_3_n_0,sensor1_raw0_carry__2_i_4_n_0}),
        .O(NLW_sensor1_raw0_carry__2_O_UNCONNECTED[3:0]),
        .S({sensor1_raw0_carry__2_i_5_n_0,sensor1_raw0_carry__2_i_6_n_0,sensor1_raw0_carry__2_i_7_n_0,sensor1_raw0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    sensor1_raw0_carry__2_i_1
       (.I0(ticks_reg[30]),
        .I1(ticks_reg[31]),
        .O(sensor1_raw0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sensor1_raw0_carry__2_i_2
       (.I0(ticks_reg[28]),
        .I1(ticks_reg[29]),
        .O(sensor1_raw0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sensor1_raw0_carry__2_i_3
       (.I0(ticks_reg[26]),
        .I1(ticks_reg[27]),
        .O(sensor1_raw0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sensor1_raw0_carry__2_i_4
       (.I0(ticks_reg[24]),
        .I1(ticks_reg[25]),
        .O(sensor1_raw0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sensor1_raw0_carry__2_i_5
       (.I0(ticks_reg[30]),
        .I1(ticks_reg[31]),
        .O(sensor1_raw0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sensor1_raw0_carry__2_i_6
       (.I0(ticks_reg[28]),
        .I1(ticks_reg[29]),
        .O(sensor1_raw0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sensor1_raw0_carry__2_i_7
       (.I0(ticks_reg[26]),
        .I1(ticks_reg[27]),
        .O(sensor1_raw0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sensor1_raw0_carry__2_i_8
       (.I0(ticks_reg[25]),
        .I1(ticks_reg[24]),
        .O(sensor1_raw0_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sensor1_raw0_carry_i_1
       (.I0(ticks_reg[6]),
        .I1(ticks_reg[7]),
        .O(sensor1_raw0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sensor1_raw0_carry_i_2
       (.I0(ticks_reg[4]),
        .I1(ticks_reg[5]),
        .O(sensor1_raw0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sensor1_raw0_carry_i_3
       (.I0(ticks_reg[2]),
        .I1(ticks_reg[3]),
        .O(sensor1_raw0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sensor1_raw0_carry_i_4
       (.I0(ticks_reg[0]),
        .I1(ticks_reg[1]),
        .O(sensor1_raw0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sensor1_raw0_carry_i_5
       (.I0(ticks_reg[7]),
        .I1(ticks_reg[6]),
        .O(sensor1_raw0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sensor1_raw0_carry_i_6
       (.I0(ticks_reg[4]),
        .I1(ticks_reg[5]),
        .O(sensor1_raw0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sensor1_raw0_carry_i_7
       (.I0(ticks_reg[2]),
        .I1(ticks_reg[3]),
        .O(sensor1_raw0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sensor1_raw0_carry_i_8
       (.I0(ticks_reg[0]),
        .I1(ticks_reg[1]),
        .O(sensor1_raw0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \sensor1_raw[0]_i_1 
       (.I0(sensor1_raw[0]),
        .I1(s00_axi_aresetn),
        .I2(\sensor1_raw[15]_i_2_n_0 ),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[10]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[10]),
        .I2(plusOp[10]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[11]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[11]),
        .I2(plusOp[11]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[12]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[12]),
        .I2(plusOp[12]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \sensor1_raw[13]_i_1 
       (.I0(\sensor1_raw[14]_i_2_n_0 ),
        .I1(minusOp[13]),
        .I2(Q[0]),
        .I3(plusOp[13]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \sensor1_raw[14]_i_1 
       (.I0(\sensor1_raw[14]_i_2_n_0 ),
        .I1(minusOp[14]),
        .I2(Q[0]),
        .I3(plusOp[14]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hAAAAAAA8FFFFFFFF)) 
    \sensor1_raw[14]_i_2 
       (.I0(Q[0]),
        .I1(\sensor1_raw[15]_i_6_n_0 ),
        .I2(\sensor1_raw[15]_i_5_n_0 ),
        .I3(\sensor1_raw[15]_i_4_n_0 ),
        .I4(\sensor1_raw[15]_i_3_n_0 ),
        .I5(s00_axi_aresetn),
        .O(\sensor1_raw[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC840)) 
    \sensor1_raw[15]_i_1 
       (.I0(Q[0]),
        .I1(s00_axi_aresetn),
        .I2(minusOp[15]),
        .I3(plusOp[15]),
        .I4(\sensor1_raw[15]_i_2_n_0 ),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \sensor1_raw[15]_i_2 
       (.I0(\sensor1_raw[15]_i_3_n_0 ),
        .I1(\sensor1_raw[15]_i_4_n_0 ),
        .I2(\sensor1_raw[15]_i_5_n_0 ),
        .I3(\sensor1_raw[15]_i_6_n_0 ),
        .I4(s00_axi_aresetn),
        .I5(Q[0]),
        .O(\sensor1_raw[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sensor1_raw[15]_i_3 
       (.I0(plusOp[25]),
        .I1(plusOp[24]),
        .I2(plusOp[27]),
        .I3(plusOp[26]),
        .O(\sensor1_raw[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sensor1_raw[15]_i_4 
       (.I0(plusOp[29]),
        .I1(plusOp[28]),
        .I2(plusOp[31]),
        .I3(plusOp[30]),
        .O(\sensor1_raw[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sensor1_raw[15]_i_5 
       (.I0(plusOp[17]),
        .I1(plusOp[16]),
        .I2(plusOp[19]),
        .I3(plusOp[18]),
        .O(\sensor1_raw[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sensor1_raw[15]_i_6 
       (.I0(plusOp[21]),
        .I1(plusOp[20]),
        .I2(plusOp[23]),
        .I3(plusOp[22]),
        .O(\sensor1_raw[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[1]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[1]),
        .I2(plusOp[1]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[2]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[2]),
        .I2(plusOp[2]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'h8F)) 
    \sensor1_raw[31]_i_1 
       (.I0(sensor1_raw0_carry__2_n_0),
        .I1(Q[0]),
        .I2(s00_axi_aresetn),
        .O(\sensor1_raw[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[3]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[3]),
        .I2(plusOp[3]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[4]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[4]),
        .I2(plusOp[4]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[5]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[5]),
        .I2(plusOp[5]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[6]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[6]),
        .I2(plusOp[6]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[7]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[7]),
        .I2(plusOp[7]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[8]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[8]),
        .I2(plusOp[8]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor1_raw[9]_i_1 
       (.I0(\sensor1_raw[15]_i_2_n_0 ),
        .I1(minusOp[9]),
        .I2(plusOp[9]),
        .I3(Q[0]),
        .I4(s00_axi_aresetn),
        .O(p_0_in[9]));
  FDRE \sensor1_raw_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(sensor1_raw[0]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(sensor1_raw[10]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(sensor1_raw[11]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(sensor1_raw[12]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(sensor1_raw[13]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(sensor1_raw[14]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(sensor1_raw[15]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[16] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[16]),
        .Q(sensor1_raw[16]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[17] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[17]),
        .Q(sensor1_raw[17]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[18] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[18]),
        .Q(sensor1_raw[18]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[19] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[19]),
        .Q(sensor1_raw[19]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(sensor1_raw[1]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[20] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[20]),
        .Q(sensor1_raw[20]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[21] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[21]),
        .Q(sensor1_raw[21]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[22] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[22]),
        .Q(sensor1_raw[22]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[23] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[23]),
        .Q(sensor1_raw[23]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[24] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[24]),
        .Q(sensor1_raw[24]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[25] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[25]),
        .Q(sensor1_raw[25]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[26] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[26]),
        .Q(sensor1_raw[26]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[27] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[27]),
        .Q(sensor1_raw[27]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[28] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[28]),
        .Q(sensor1_raw[28]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[29] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[29]),
        .Q(sensor1_raw[29]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(sensor1_raw[2]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[30] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[30]),
        .Q(sensor1_raw[30]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[31] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp[31]),
        .Q(sensor1_raw[31]),
        .R(\sensor1_raw[31]_i_1_n_0 ));
  FDRE \sensor1_raw_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(sensor1_raw[3]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(sensor1_raw[4]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(sensor1_raw[5]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(sensor1_raw[6]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(sensor1_raw[7]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(sensor1_raw[8]),
        .R(1'b0));
  FDRE \sensor1_raw_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(sensor1_raw[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \sensor2_raw[0]_i_1 
       (.I0(sensor2_raw[0]),
        .I1(s00_axi_aresetn),
        .I2(\sensor2_raw[15]_i_3_n_0 ),
        .O(\sensor2_raw[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[10]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry__1_n_6),
        .I2(plusOp_carry__1_n_6),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[11]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry__1_n_5),
        .I2(plusOp_carry__1_n_5),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[12]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry__1_n_4),
        .I2(plusOp_carry__1_n_4),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFAEE)) 
    \sensor2_raw[13]_i_1 
       (.I0(\sensor2_raw[14]_i_2_n_0 ),
        .I1(minusOp_carry__2_n_7),
        .I2(plusOp_carry__2_n_7),
        .I3(Q[1]),
        .O(\sensor2_raw[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFAEE)) 
    \sensor2_raw[14]_i_1 
       (.I0(\sensor2_raw[14]_i_2_n_0 ),
        .I1(minusOp_carry__2_n_6),
        .I2(plusOp_carry__2_n_6),
        .I3(Q[1]),
        .O(\sensor2_raw[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8FFFFFFFF)) 
    \sensor2_raw[14]_i_2 
       (.I0(Q[1]),
        .I1(\sensor2_raw[15]_i_7_n_0 ),
        .I2(\sensor2_raw[15]_i_6_n_0 ),
        .I3(\sensor2_raw[15]_i_5_n_0 ),
        .I4(\sensor2_raw[15]_i_4_n_0 ),
        .I5(s00_axi_aresetn),
        .O(\sensor2_raw[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sensor2_raw[15]_i_1 
       (.I0(sensor1_raw0_carry__2_n_0),
        .I1(s00_axi_aresetn),
        .O(\sensor2_raw[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC840)) 
    \sensor2_raw[15]_i_2 
       (.I0(Q[1]),
        .I1(s00_axi_aresetn),
        .I2(minusOp_carry__2_n_5),
        .I3(plusOp_carry__2_n_5),
        .I4(\sensor2_raw[15]_i_3_n_0 ),
        .O(\sensor2_raw[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \sensor2_raw[15]_i_3 
       (.I0(\sensor2_raw[15]_i_4_n_0 ),
        .I1(\sensor2_raw[15]_i_5_n_0 ),
        .I2(\sensor2_raw[15]_i_6_n_0 ),
        .I3(\sensor2_raw[15]_i_7_n_0 ),
        .I4(s00_axi_aresetn),
        .I5(Q[1]),
        .O(\sensor2_raw[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sensor2_raw[15]_i_4 
       (.I0(plusOp_carry__5_n_7),
        .I1(plusOp_carry__4_n_4),
        .I2(plusOp_carry__5_n_5),
        .I3(plusOp_carry__5_n_6),
        .O(\sensor2_raw[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sensor2_raw[15]_i_5 
       (.I0(plusOp_carry__6_n_7),
        .I1(plusOp_carry__5_n_4),
        .I2(plusOp_carry__6_n_5),
        .I3(plusOp_carry__6_n_6),
        .O(\sensor2_raw[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sensor2_raw[15]_i_6 
       (.I0(plusOp_carry__3_n_7),
        .I1(plusOp_carry__2_n_4),
        .I2(plusOp_carry__3_n_5),
        .I3(plusOp_carry__3_n_6),
        .O(\sensor2_raw[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sensor2_raw[15]_i_7 
       (.I0(plusOp_carry__4_n_7),
        .I1(plusOp_carry__3_n_4),
        .I2(plusOp_carry__4_n_5),
        .I3(plusOp_carry__4_n_6),
        .O(\sensor2_raw[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[1]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry_n_7),
        .I2(plusOp_carry_n_7),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[2]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry_n_6),
        .I2(plusOp_carry_n_6),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \sensor2_raw[31]_i_1 
       (.I0(sensor1_raw0_carry__2_n_0),
        .I1(Q[1]),
        .I2(s00_axi_aresetn),
        .O(\sensor2_raw[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[3]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry_n_5),
        .I2(plusOp_carry_n_5),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[4]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry_n_4),
        .I2(plusOp_carry_n_4),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[5]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry__0_n_7),
        .I2(plusOp_carry__0_n_7),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[6]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry__0_n_6),
        .I2(plusOp_carry__0_n_6),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[7]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry__0_n_5),
        .I2(plusOp_carry__0_n_5),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[8]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry__0_n_4),
        .I2(plusOp_carry__0_n_4),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \sensor2_raw[9]_i_1 
       (.I0(\sensor2_raw[15]_i_3_n_0 ),
        .I1(minusOp_carry__1_n_7),
        .I2(plusOp_carry__1_n_7),
        .I3(Q[1]),
        .I4(s00_axi_aresetn),
        .O(\sensor2_raw[9]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[0]_i_1_n_0 ),
        .Q(sensor2_raw[0]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[10]_i_1_n_0 ),
        .Q(sensor2_raw[10]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[11]_i_1_n_0 ),
        .Q(sensor2_raw[11]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[12]_i_1_n_0 ),
        .Q(sensor2_raw[12]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[13]_i_1_n_0 ),
        .Q(sensor2_raw[13]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[14]_i_1_n_0 ),
        .Q(sensor2_raw[14]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[15]_i_2_n_0 ),
        .Q(sensor2_raw[15]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[16] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__2_n_4),
        .Q(sensor2_raw[16]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[17] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__3_n_7),
        .Q(sensor2_raw[17]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[18] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__3_n_6),
        .Q(sensor2_raw[18]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[19] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__3_n_5),
        .Q(sensor2_raw[19]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[1]_i_1_n_0 ),
        .Q(sensor2_raw[1]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[20] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__3_n_4),
        .Q(sensor2_raw[20]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[21] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__4_n_7),
        .Q(sensor2_raw[21]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[22] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__4_n_6),
        .Q(sensor2_raw[22]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[23] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__4_n_5),
        .Q(sensor2_raw[23]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[24] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__4_n_4),
        .Q(sensor2_raw[24]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[25] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__5_n_7),
        .Q(sensor2_raw[25]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[26] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__5_n_6),
        .Q(sensor2_raw[26]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[27] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__5_n_5),
        .Q(sensor2_raw[27]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[28] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__5_n_4),
        .Q(sensor2_raw[28]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[29] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__6_n_7),
        .Q(sensor2_raw[29]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[2]_i_1_n_0 ),
        .Q(sensor2_raw[2]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[30] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__6_n_6),
        .Q(sensor2_raw[30]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[31] 
       (.C(s00_axi_aclk),
        .CE(sensor1_raw0_carry__2_n_0),
        .D(minusOp_carry__6_n_5),
        .Q(sensor2_raw[31]),
        .R(\sensor2_raw[31]_i_1_n_0 ));
  FDRE \sensor2_raw_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[3]_i_1_n_0 ),
        .Q(sensor2_raw[3]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[4]_i_1_n_0 ),
        .Q(sensor2_raw[4]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[5]_i_1_n_0 ),
        .Q(sensor2_raw[5]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[6]_i_1_n_0 ),
        .Q(sensor2_raw[6]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[7]_i_1_n_0 ),
        .Q(sensor2_raw[7]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[8]_i_1_n_0 ),
        .Q(sensor2_raw[8]),
        .R(1'b0));
  FDRE \sensor2_raw_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\sensor2_raw[15]_i_1_n_0 ),
        .D(\sensor2_raw[9]_i_1_n_0 ),
        .Q(sensor2_raw[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ticks[0]_i_2 
       (.I0(ticks_reg[0]),
        .O(\ticks[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_1_n_7 ),
        .Q(ticks_reg[0]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ticks_reg[0]_i_1_n_0 ,\ticks_reg[0]_i_1_n_1 ,\ticks_reg[0]_i_1_n_2 ,\ticks_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ticks_reg[0]_i_1_n_4 ,\ticks_reg[0]_i_1_n_5 ,\ticks_reg[0]_i_1_n_6 ,\ticks_reg[0]_i_1_n_7 }),
        .S({ticks_reg[3:1],\ticks[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1_n_5 ),
        .Q(ticks_reg[10]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1_n_4 ),
        .Q(ticks_reg[11]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1_n_7 ),
        .Q(ticks_reg[12]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[12]_i_1 
       (.CI(\ticks_reg[8]_i_1_n_0 ),
        .CO({\ticks_reg[12]_i_1_n_0 ,\ticks_reg[12]_i_1_n_1 ,\ticks_reg[12]_i_1_n_2 ,\ticks_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[12]_i_1_n_4 ,\ticks_reg[12]_i_1_n_5 ,\ticks_reg[12]_i_1_n_6 ,\ticks_reg[12]_i_1_n_7 }),
        .S(ticks_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1_n_6 ),
        .Q(ticks_reg[13]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1_n_5 ),
        .Q(ticks_reg[14]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1_n_4 ),
        .Q(ticks_reg[15]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[16]_i_1_n_7 ),
        .Q(ticks_reg[16]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[16]_i_1 
       (.CI(\ticks_reg[12]_i_1_n_0 ),
        .CO({\ticks_reg[16]_i_1_n_0 ,\ticks_reg[16]_i_1_n_1 ,\ticks_reg[16]_i_1_n_2 ,\ticks_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[16]_i_1_n_4 ,\ticks_reg[16]_i_1_n_5 ,\ticks_reg[16]_i_1_n_6 ,\ticks_reg[16]_i_1_n_7 }),
        .S(ticks_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[16]_i_1_n_6 ),
        .Q(ticks_reg[17]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[16]_i_1_n_5 ),
        .Q(ticks_reg[18]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[16]_i_1_n_4 ),
        .Q(ticks_reg[19]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_1_n_6 ),
        .Q(ticks_reg[1]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[20]_i_1_n_7 ),
        .Q(ticks_reg[20]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[20]_i_1 
       (.CI(\ticks_reg[16]_i_1_n_0 ),
        .CO({\ticks_reg[20]_i_1_n_0 ,\ticks_reg[20]_i_1_n_1 ,\ticks_reg[20]_i_1_n_2 ,\ticks_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[20]_i_1_n_4 ,\ticks_reg[20]_i_1_n_5 ,\ticks_reg[20]_i_1_n_6 ,\ticks_reg[20]_i_1_n_7 }),
        .S(ticks_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[20]_i_1_n_6 ),
        .Q(ticks_reg[21]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[20]_i_1_n_5 ),
        .Q(ticks_reg[22]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[20]_i_1_n_4 ),
        .Q(ticks_reg[23]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[24]_i_1_n_7 ),
        .Q(ticks_reg[24]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[24]_i_1 
       (.CI(\ticks_reg[20]_i_1_n_0 ),
        .CO({\ticks_reg[24]_i_1_n_0 ,\ticks_reg[24]_i_1_n_1 ,\ticks_reg[24]_i_1_n_2 ,\ticks_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[24]_i_1_n_4 ,\ticks_reg[24]_i_1_n_5 ,\ticks_reg[24]_i_1_n_6 ,\ticks_reg[24]_i_1_n_7 }),
        .S(ticks_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[24]_i_1_n_6 ),
        .Q(ticks_reg[25]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[24]_i_1_n_5 ),
        .Q(ticks_reg[26]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[24]_i_1_n_4 ),
        .Q(ticks_reg[27]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[28]_i_1_n_7 ),
        .Q(ticks_reg[28]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[28]_i_1 
       (.CI(\ticks_reg[24]_i_1_n_0 ),
        .CO({\NLW_ticks_reg[28]_i_1_CO_UNCONNECTED [3],\ticks_reg[28]_i_1_n_1 ,\ticks_reg[28]_i_1_n_2 ,\ticks_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[28]_i_1_n_4 ,\ticks_reg[28]_i_1_n_5 ,\ticks_reg[28]_i_1_n_6 ,\ticks_reg[28]_i_1_n_7 }),
        .S(ticks_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[28]_i_1_n_6 ),
        .Q(ticks_reg[29]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_1_n_5 ),
        .Q(ticks_reg[2]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[28]_i_1_n_5 ),
        .Q(ticks_reg[30]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[28]_i_1_n_4 ),
        .Q(ticks_reg[31]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_1_n_4 ),
        .Q(ticks_reg[3]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1_n_7 ),
        .Q(ticks_reg[4]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[4]_i_1 
       (.CI(\ticks_reg[0]_i_1_n_0 ),
        .CO({\ticks_reg[4]_i_1_n_0 ,\ticks_reg[4]_i_1_n_1 ,\ticks_reg[4]_i_1_n_2 ,\ticks_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[4]_i_1_n_4 ,\ticks_reg[4]_i_1_n_5 ,\ticks_reg[4]_i_1_n_6 ,\ticks_reg[4]_i_1_n_7 }),
        .S(ticks_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1_n_6 ),
        .Q(ticks_reg[5]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1_n_5 ),
        .Q(ticks_reg[6]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1_n_4 ),
        .Q(ticks_reg[7]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1_n_7 ),
        .Q(ticks_reg[8]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[8]_i_1 
       (.CI(\ticks_reg[4]_i_1_n_0 ),
        .CO({\ticks_reg[8]_i_1_n_0 ,\ticks_reg[8]_i_1_n_1 ,\ticks_reg[8]_i_1_n_2 ,\ticks_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[8]_i_1_n_4 ,\ticks_reg[8]_i_1_n_5 ,\ticks_reg[8]_i_1_n_6 ,\ticks_reg[8]_i_1_n_7 }),
        .S(ticks_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1_n_6 ),
        .Q(ticks_reg[9]),
        .R(\sensor2_raw[15]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "Temperature_Control_slave_lite_v1_0_S00_AXI" *) 
module soc_design_Temperature_Control_0_0_Temperature_Control_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    s00_axi_bvalid,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    s00_axi_rdata,
    Q,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_awaddr,
    sensor1_raw,
    sensor2_raw,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_araddr,
    s00_axi_wdata);
  output axi_awready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output [31:0]s00_axi_rdata;
  output [1:0]Q;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input [1:0]s00_axi_awaddr;
  input [31:0]sensor1_raw;
  input [31:0]sensor2_raw;
  input s00_axi_bready;
  input s00_axi_rready;
  input [1:0]s00_axi_araddr;
  input [31:0]s00_axi_wdata;

  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write_reg_n_0_[1] ;
  wire \FSM_onehot_state_write_reg_n_0_[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [1:0]Q;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[3]_i_2_n_0 ;
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
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]sensor1_raw;
  wire [31:0]sensor2_raw;
  wire [31:2]slv_reg0;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire [1:0]state_read;

  LUT6 #(
    .INIT(64'hFFFFFFFFF7F7F000)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I5(axi_wready),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0F080F00)) 
    \FSM_onehot_state_write[2]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_write_reg_n_0_[1] ),
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
    .INIT(64'hFFFF7777F0000000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(axi_arready_reg_0),
        .I3(s00_axi_arvalid),
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
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_aresetn),
        .I2(state_read[0]),
        .I3(\axi_araddr[3]_i_2_n_0 ),
        .I4(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_aresetn),
        .I2(state_read[0]),
        .I3(\axi_araddr[3]_i_2_n_0 ),
        .I4(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_araddr[3]_i_2 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[1]),
        .O(\axi_araddr[3]_i_2_n_0 ));
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
    .INIT(64'hFF55FFFF40554055)) 
    axi_arready_i_1
       (.I0(state_read[0]),
        .I1(s00_axi_rready),
        .I2(axi_rvalid_reg_0),
        .I3(state_read[1]),
        .I4(s00_axi_arvalid),
        .I5(axi_arready_reg_0),
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
    .INIT(64'hFAFFEAEAFFFFEAEA)) 
    axi_awready_i_2
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(\FSM_onehot_state_write_reg_n_0_[1] ),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFABFF0000)) 
    axi_bvalid_i_1
       (.I0(axi_wready),
        .I1(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I3(s00_axi_bready),
        .I4(s00_axi_bvalid),
        .I5(axi_bvalid_i_2_n_0),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    axi_bvalid_i_2
       (.I0(\FSM_onehot_state_write_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_write_reg_n_0_[1] ),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(axi_bvalid_i_2_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hA2A2A2A2FAAAAAAA)) 
    axi_rvalid_i_1
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(state_read[0]),
        .I3(axi_arready_reg_0),
        .I4(s00_axi_arvalid),
        .I5(state_read[1]),
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
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(Q[0]),
        .I1(sensor1_raw[0]),
        .I2(sensor2_raw[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[0]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(slv_reg0[10]),
        .I1(sensor1_raw[10]),
        .I2(sensor2_raw[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[10]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(slv_reg0[11]),
        .I1(sensor1_raw[11]),
        .I2(sensor2_raw[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[11]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(slv_reg0[12]),
        .I1(sensor1_raw[12]),
        .I2(sensor2_raw[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[12]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(slv_reg0[13]),
        .I1(sensor1_raw[13]),
        .I2(sensor2_raw[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[13]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(slv_reg0[14]),
        .I1(sensor1_raw[14]),
        .I2(sensor2_raw[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[14]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(slv_reg0[15]),
        .I1(sensor1_raw[15]),
        .I2(sensor2_raw[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[15]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(slv_reg0[16]),
        .I1(sensor1_raw[16]),
        .I2(sensor2_raw[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[16]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(slv_reg0[17]),
        .I1(sensor1_raw[17]),
        .I2(sensor2_raw[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[17]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(slv_reg0[18]),
        .I1(sensor1_raw[18]),
        .I2(sensor2_raw[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[18]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(slv_reg0[19]),
        .I1(sensor1_raw[19]),
        .I2(sensor2_raw[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[19]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(Q[1]),
        .I1(sensor1_raw[1]),
        .I2(sensor2_raw[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[1]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(slv_reg0[20]),
        .I1(sensor1_raw[20]),
        .I2(sensor2_raw[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[20]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(slv_reg0[21]),
        .I1(sensor1_raw[21]),
        .I2(sensor2_raw[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[21]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(slv_reg0[22]),
        .I1(sensor1_raw[22]),
        .I2(sensor2_raw[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[22]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(slv_reg0[23]),
        .I1(sensor1_raw[23]),
        .I2(sensor2_raw[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[23]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(slv_reg0[24]),
        .I1(sensor1_raw[24]),
        .I2(sensor2_raw[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[24]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(slv_reg0[25]),
        .I1(sensor1_raw[25]),
        .I2(sensor2_raw[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[25]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(slv_reg0[26]),
        .I1(sensor1_raw[26]),
        .I2(sensor2_raw[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[26]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(slv_reg0[27]),
        .I1(sensor1_raw[27]),
        .I2(sensor2_raw[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[27]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(slv_reg0[28]),
        .I1(sensor1_raw[28]),
        .I2(sensor2_raw[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[28]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(slv_reg0[29]),
        .I1(sensor1_raw[29]),
        .I2(sensor2_raw[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[29]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(slv_reg0[2]),
        .I1(sensor1_raw[2]),
        .I2(sensor2_raw[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[2]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(slv_reg0[30]),
        .I1(sensor1_raw[30]),
        .I2(sensor2_raw[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[30]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(slv_reg0[31]),
        .I1(sensor1_raw[31]),
        .I2(sensor2_raw[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[31]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(slv_reg0[3]),
        .I1(sensor1_raw[3]),
        .I2(sensor2_raw[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[3]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(slv_reg0[4]),
        .I1(sensor1_raw[4]),
        .I2(sensor2_raw[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[4]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(slv_reg0[5]),
        .I1(sensor1_raw[5]),
        .I2(sensor2_raw[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[5]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(slv_reg0[6]),
        .I1(sensor1_raw[6]),
        .I2(sensor2_raw[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[6]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(slv_reg0[7]),
        .I1(sensor1_raw[7]),
        .I2(sensor2_raw[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[7]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(slv_reg0[8]),
        .I1(sensor1_raw[8]),
        .I2(sensor2_raw[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[8]));
  LUT5 #(
    .INIT(32'hFFCCF0AA)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(slv_reg0[9]),
        .I1(sensor1_raw[9]),
        .I2(sensor2_raw[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(s00_axi_rdata[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h010101F100000000)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awaddr[0]),
        .I5(s00_axi_wvalid),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
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
