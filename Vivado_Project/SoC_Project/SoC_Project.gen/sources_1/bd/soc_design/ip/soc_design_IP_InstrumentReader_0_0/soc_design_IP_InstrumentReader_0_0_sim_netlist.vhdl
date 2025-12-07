-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Dec  6 23:39:00 2025
-- Host        : Azmis_Laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/azmib/Desktop/HardwareSoftwareCodesign/Vivado_Project/SoC_Project/SoC_Project.gen/sources_1/bd/soc_design/ip/soc_design_IP_InstrumentReader_0_0/soc_design_IP_InstrumentReader_0_0_sim_netlist.vhdl
-- Design      : soc_design_IP_InstrumentReader_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader_slave_lite_v1_0_S00_AXI : entity is "IP_InstrumentReader_slave_lite_v1_0_S00_AXI";
end soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader_slave_lite_v1_0_S00_AXI is
  signal \FSM_onehot_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_arready0__0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_3_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_control_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \user_control_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \user_control_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \user_instrument_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \user_instrument_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \user_instrument_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \user_instrument_data[15]_i_4_n_0\ : STD_LOGIC;
  signal \user_instrument_data[15]_i_5_n_0\ : STD_LOGIC;
  signal \user_instrument_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \user_instrument_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s00_axi_rdata[0]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[10]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s00_axi_rdata[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s00_axi_rdata[12]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s00_axi_rdata[13]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[14]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[15]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[16]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[17]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[18]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[19]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s00_axi_rdata[20]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s00_axi_rdata[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s00_axi_rdata[22]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s00_axi_rdata[23]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s00_axi_rdata[24]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s00_axi_rdata[25]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s00_axi_rdata[26]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s00_axi_rdata[27]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s00_axi_rdata[28]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s00_axi_rdata[29]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s00_axi_rdata[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s00_axi_rdata[30]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s00_axi_rdata[31]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s00_axi_rdata[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s00_axi_rdata[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s00_axi_rdata[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s00_axi_rdata[6]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s00_axi_rdata[7]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s00_axi_rdata[8]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s00_axi_rdata[9]_INST_0\ : label is "soft_lutpair8";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_onehot_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFAAFFFFBF00"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => axi_wready,
      I5 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[1]_i_1_n_0\
    );
\FSM_onehot_state_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => \FSM_onehot_state_write[2]_i_1_n_0\
    );
\FSM_onehot_state_write_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      Q => axi_wready,
      S => axi_awready_i_1_n_0
    );
\FSM_onehot_state_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[1]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\FSM_onehot_state_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_write[2]_i_1_n_0\,
      Q => \FSM_onehot_state_write_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_aresetn,
      I2 => \axi_arready0__0\,
      I3 => state_read(0),
      I4 => state_read(1),
      I5 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_aresetn,
      I2 => \axi_arready0__0\,
      I3 => state_read(0),
      I4 => state_read(1),
      I5 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => \axi_arready0__0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => '0'
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFEAEAFFFFEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \^axi_awready_reg_0\,
      I5 => s00_axi_awvalid,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8ABA8BB88BB88"
    )
        port map (
      I0 => axi_bvalid_i_2_n_0,
      I1 => axi_bvalid_i_3_n_0,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_bvalid\,
      I4 => s00_axi_bready,
      I5 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEAEAEAEAEAEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => s00_axi_awvalid,
      I5 => \^axi_awready_reg_0\,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80808080808080"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I1 => \^s00_axi_bvalid\,
      I2 => s00_axi_bready,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_3_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axi_wready,
      I1 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => axi_awready_i_1_n_0
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \user_instrument_data_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3) => \user_instrument_data_reg_n_0_[4]\,
      S(2) => \user_instrument_data_reg_n_0_[3]\,
      S(1) => \user_instrument_data_reg_n_0_[2]\,
      S(0) => \user_instrument_data_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3) => \user_instrument_data_reg_n_0_[8]\,
      S(2) => \user_instrument_data_reg_n_0_[7]\,
      S(1) => \user_instrument_data_reg_n_0_[6]\,
      S(0) => \user_instrument_data_reg_n_0_[5]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3) => \user_instrument_data_reg_n_0_[12]\,
      S(2) => \user_instrument_data_reg_n_0_[11]\,
      S(1) => \user_instrument_data_reg_n_0_[10]\,
      S(0) => \user_instrument_data_reg_n_0_[9]\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(15 downto 13),
      S(3) => '0',
      S(2) => \user_instrument_data_reg_n_0_[15]\,
      S(1) => \user_instrument_data_reg_n_0_[14]\,
      S(0) => \user_instrument_data_reg_n_0_[13]\
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[0]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(10),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[10]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(11),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[11]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(12),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[12]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(13),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(14),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[14]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(15),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[15]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(16),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(17),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(18),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(19),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(1),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[1]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(20),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(21),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(22),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(23),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(24),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(25),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(26),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(27),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(28),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(29),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(2),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[2]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(30),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => user_control_reg(31),
      I2 => axi_araddr(3),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(3),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[3]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(4),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[4]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(5),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[5]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(6),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[6]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(7),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[7]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(8),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[8]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => user_control_reg(9),
      I1 => axi_araddr(2),
      I2 => \user_instrument_data_reg_n_0_[9]\,
      I3 => axi_araddr(3),
      O => s00_axi_rdata(9)
    );
\user_control_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(10),
      I1 => s00_axi_wstrb(1),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(10),
      O => \user_control_reg[10]_i_1_n_0\
    );
\user_control_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(11),
      I1 => s00_axi_wstrb(1),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(11),
      O => \user_control_reg[11]_i_1_n_0\
    );
\user_control_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(12),
      I1 => s00_axi_wstrb(1),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(12),
      O => \user_control_reg[12]_i_1_n_0\
    );
\user_control_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(13),
      I1 => s00_axi_wstrb(1),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(13),
      O => \user_control_reg[13]_i_1_n_0\
    );
\user_control_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(14),
      I1 => s00_axi_wstrb(1),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(14),
      O => \user_control_reg[14]_i_1_n_0\
    );
\user_control_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => s00_axi_wstrb(1),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(15),
      O => \user_control_reg[15]_i_1_n_0\
    );
\user_control_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(16),
      I1 => s00_axi_wstrb(2),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(16),
      O => \user_control_reg[16]_i_1_n_0\
    );
\user_control_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(17),
      I1 => s00_axi_wstrb(2),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(17),
      O => \user_control_reg[17]_i_1_n_0\
    );
\user_control_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(18),
      I1 => s00_axi_wstrb(2),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(18),
      O => \user_control_reg[18]_i_1_n_0\
    );
\user_control_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(19),
      I1 => s00_axi_wstrb(2),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(19),
      O => \user_control_reg[19]_i_1_n_0\
    );
\user_control_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => s00_axi_wstrb(0),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(1),
      O => \user_control_reg[1]_i_1_n_0\
    );
\user_control_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(20),
      I1 => s00_axi_wstrb(2),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(20),
      O => \user_control_reg[20]_i_1_n_0\
    );
\user_control_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(21),
      I1 => s00_axi_wstrb(2),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(21),
      O => \user_control_reg[21]_i_1_n_0\
    );
\user_control_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(22),
      I1 => s00_axi_wstrb(2),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(22),
      O => \user_control_reg[22]_i_1_n_0\
    );
\user_control_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(23),
      I1 => s00_axi_wstrb(2),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(23),
      O => \user_control_reg[23]_i_1_n_0\
    );
\user_control_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(24),
      I1 => s00_axi_wstrb(3),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(24),
      O => \user_control_reg[24]_i_1_n_0\
    );
\user_control_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(25),
      I1 => s00_axi_wstrb(3),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(25),
      O => \user_control_reg[25]_i_1_n_0\
    );
\user_control_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(26),
      I1 => s00_axi_wstrb(3),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(26),
      O => \user_control_reg[26]_i_1_n_0\
    );
\user_control_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(27),
      I1 => s00_axi_wstrb(3),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(27),
      O => \user_control_reg[27]_i_1_n_0\
    );
\user_control_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(28),
      I1 => s00_axi_wstrb(3),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(28),
      O => \user_control_reg[28]_i_1_n_0\
    );
\user_control_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(29),
      I1 => s00_axi_wstrb(3),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(29),
      O => \user_control_reg[29]_i_1_n_0\
    );
\user_control_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => s00_axi_wstrb(0),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(2),
      O => \user_control_reg[2]_i_1_n_0\
    );
\user_control_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(30),
      I1 => s00_axi_wstrb(3),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(30),
      O => \user_control_reg[30]_i_1_n_0\
    );
\user_control_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(31),
      I1 => s00_axi_wstrb(3),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(31),
      O => \user_control_reg[31]_i_1_n_0\
    );
\user_control_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_awaddr(0),
      I2 => axi_awaddr(3),
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(1),
      O => \user_control_reg[31]_i_2_n_0\
    );
\user_control_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(3),
      I1 => s00_axi_wstrb(0),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(3),
      O => \user_control_reg[3]_i_1_n_0\
    );
\user_control_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(4),
      I1 => s00_axi_wstrb(0),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(4),
      O => \user_control_reg[4]_i_1_n_0\
    );
\user_control_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(5),
      I1 => s00_axi_wstrb(0),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(5),
      O => \user_control_reg[5]_i_1_n_0\
    );
\user_control_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(6),
      I1 => s00_axi_wstrb(0),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(6),
      O => \user_control_reg[6]_i_1_n_0\
    );
\user_control_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(7),
      I1 => s00_axi_wstrb(0),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(7),
      O => \user_control_reg[7]_i_1_n_0\
    );
\user_control_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(8),
      I1 => s00_axi_wstrb(1),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(8),
      O => \user_control_reg[8]_i_1_n_0\
    );
\user_control_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(9),
      I1 => s00_axi_wstrb(1),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => user_control_reg(9),
      O => \user_control_reg[9]_i_1_n_0\
    );
\user_control_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[10]_i_1_n_0\,
      Q => user_control_reg(10),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[11]_i_1_n_0\,
      Q => user_control_reg(11),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[12]_i_1_n_0\,
      Q => user_control_reg(12),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[13]_i_1_n_0\,
      Q => user_control_reg(13),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[14]_i_1_n_0\,
      Q => user_control_reg(14),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[15]_i_1_n_0\,
      Q => user_control_reg(15),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[16]_i_1_n_0\,
      Q => user_control_reg(16),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[17]_i_1_n_0\,
      Q => user_control_reg(17),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[18]_i_1_n_0\,
      Q => user_control_reg(18),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[19]_i_1_n_0\,
      Q => user_control_reg(19),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[1]_i_1_n_0\,
      Q => user_control_reg(1),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[20]_i_1_n_0\,
      Q => user_control_reg(20),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[21]_i_1_n_0\,
      Q => user_control_reg(21),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[22]_i_1_n_0\,
      Q => user_control_reg(22),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[23]_i_1_n_0\,
      Q => user_control_reg(23),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[24]_i_1_n_0\,
      Q => user_control_reg(24),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[25]_i_1_n_0\,
      Q => user_control_reg(25),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[26]_i_1_n_0\,
      Q => user_control_reg(26),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[27]_i_1_n_0\,
      Q => user_control_reg(27),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[28]_i_1_n_0\,
      Q => user_control_reg(28),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[29]_i_1_n_0\,
      Q => user_control_reg(29),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[2]_i_1_n_0\,
      Q => user_control_reg(2),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[30]_i_1_n_0\,
      Q => user_control_reg(30),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[31]_i_1_n_0\,
      Q => user_control_reg(31),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[3]_i_1_n_0\,
      Q => user_control_reg(3),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[4]_i_1_n_0\,
      Q => user_control_reg(4),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[5]_i_1_n_0\,
      Q => user_control_reg(5),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[6]_i_1_n_0\,
      Q => user_control_reg(6),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[7]_i_1_n_0\,
      Q => user_control_reg(7),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[8]_i_1_n_0\,
      Q => user_control_reg(8),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => s00_axi_wvalid,
      D => \user_control_reg[9]_i_1_n_0\,
      Q => user_control_reg(9),
      R => axi_awready_i_1_n_0
    );
\user_instrument_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04448888"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[0]\,
      I1 => s00_axi_aresetn,
      I2 => \user_instrument_data[0]_i_2_n_0\,
      I3 => \user_instrument_data_reg_n_0_[15]\,
      I4 => \user_instrument_data[15]_i_1_n_0\,
      O => \user_instrument_data[0]_i_1_n_0\
    );
\user_instrument_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEFAAAAAAAA"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[14]\,
      I1 => \user_instrument_data_reg_n_0_[12]\,
      I2 => \user_instrument_data[15]_i_4_n_0\,
      I3 => \user_instrument_data[15]_i_5_n_0\,
      I4 => \user_instrument_data[0]_i_3_n_0\,
      I5 => \user_instrument_data_reg_n_0_[13]\,
      O => \user_instrument_data[0]_i_2_n_0\
    );
\user_instrument_data[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[1]\,
      I1 => \user_instrument_data_reg_n_0_[3]\,
      I2 => \user_instrument_data_reg_n_0_[2]\,
      O => \user_instrument_data[0]_i_3_n_0\
    );
\user_instrument_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(10),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[10]_i_1_n_0\
    );
\user_instrument_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(11),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[11]_i_1_n_0\
    );
\user_instrument_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(13),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[13]_i_1_n_0\
    );
\user_instrument_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888000FFFFFFFF"
    )
        port map (
      I0 => \user_instrument_data[15]_i_1_n_0\,
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      I5 => s00_axi_aresetn,
      O => \user_instrument_data[14]_i_1_n_0\
    );
\user_instrument_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \user_control_reg[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_wdata(0),
      O => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(15),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[15]_i_2_n_0\
    );
\user_instrument_data[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[12]\,
      I1 => \user_instrument_data[15]_i_4_n_0\,
      I2 => \user_instrument_data[15]_i_5_n_0\,
      I3 => \user_instrument_data_reg_n_0_[1]\,
      I4 => \user_instrument_data_reg_n_0_[3]\,
      I5 => \user_instrument_data_reg_n_0_[2]\,
      O => \user_instrument_data[15]_i_3_n_0\
    );
\user_instrument_data[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[5]\,
      I1 => \user_instrument_data_reg_n_0_[4]\,
      I2 => \user_instrument_data_reg_n_0_[7]\,
      I3 => \user_instrument_data_reg_n_0_[6]\,
      O => \user_instrument_data[15]_i_4_n_0\
    );
\user_instrument_data[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[9]\,
      I1 => \user_instrument_data_reg_n_0_[8]\,
      I2 => \user_instrument_data_reg_n_0_[11]\,
      I3 => \user_instrument_data_reg_n_0_[10]\,
      O => \user_instrument_data[15]_i_5_n_0\
    );
\user_instrument_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(1),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[1]_i_1_n_0\
    );
\user_instrument_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(2),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[2]_i_1_n_0\
    );
\user_instrument_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(3),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[3]_i_1_n_0\
    );
\user_instrument_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(4),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[4]_i_1_n_0\
    );
\user_instrument_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(5),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[5]_i_1_n_0\
    );
\user_instrument_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(6),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[6]_i_1_n_0\
    );
\user_instrument_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(7),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[7]_i_1_n_0\
    );
\user_instrument_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(8),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[8]_i_1_n_0\
    );
\user_instrument_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222AAA"
    )
        port map (
      I0 => plusOp(9),
      I1 => \user_instrument_data_reg_n_0_[15]\,
      I2 => \user_instrument_data_reg_n_0_[13]\,
      I3 => \user_instrument_data[15]_i_3_n_0\,
      I4 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[9]_i_1_n_0\
    );
\user_instrument_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \user_instrument_data[0]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[0]\,
      R => '0'
    );
\user_instrument_data_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[10]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[10]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[11]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[11]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => plusOp(12),
      Q => \user_instrument_data_reg_n_0_[12]\,
      R => \user_instrument_data[14]_i_1_n_0\
    );
\user_instrument_data_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[13]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[13]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => plusOp(14),
      Q => \user_instrument_data_reg_n_0_[14]\,
      R => \user_instrument_data[14]_i_1_n_0\
    );
\user_instrument_data_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[15]_i_2_n_0\,
      Q => \user_instrument_data_reg_n_0_[15]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[1]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[1]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[2]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[2]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[3]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[3]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[4]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[4]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[5]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[5]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[6]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[6]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[7]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[7]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[8]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[8]\,
      S => axi_awready_i_1_n_0
    );
\user_instrument_data_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \user_instrument_data[15]_i_1_n_0\,
      D => \user_instrument_data[9]_i_1_n_0\,
      Q => \user_instrument_data_reg_n_0_[9]\,
      S => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader : entity is "IP_InstrumentReader";
end soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader;

architecture STRUCTURE of soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader is
begin
IP_InstrumentReader_slave_lite_v1_0_S00_AXI_inst: entity work.soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_design_IP_InstrumentReader_0_0 is
  port (
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of soc_design_IP_InstrumentReader_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_design_IP_InstrumentReader_0_0 : entity is "soc_design_IP_InstrumentReader_0_0,IP_InstrumentReader,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of soc_design_IP_InstrumentReader_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of soc_design_IP_InstrumentReader_0_0 : entity is "IP_InstrumentReader,Vivado 2025.1";
end soc_design_IP_InstrumentReader_0_0;

architecture STRUCTURE of soc_design_IP_InstrumentReader_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s00_axi_aclk : signal is "slave S00_AXI_CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_mode of s00_axi_aresetn : signal is "slave S00_AXI_RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_mode of s00_axi_awaddr : signal is "slave S00_AXI";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN soc_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.soc_design_IP_InstrumentReader_0_0_IP_InstrumentReader
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
