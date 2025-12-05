-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Dec  5 11:52:37 2025
-- Host        : Azmis_Laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_design_IP_InstrumentReader_0_0_sim_netlist.vhdl
-- Design      : soc_design_IP_InstrumentReader_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader_slave_lite_v1_0_S00_AXI is
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
  signal axi_bvalid_i_4_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal p_5_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal \user_control_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \user_control_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \user_control_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal user_instrument_data : STD_LOGIC;
  signal \user_instrument_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \user_instrument_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \user_instrument_data[15]_i_4_n_0\ : STD_LOGIC;
  signal \user_instrument_data[15]_i_5_n_0\ : STD_LOGIC;
  signal \user_instrument_data[15]_i_6_n_0\ : STD_LOGIC;
  signal \user_instrument_data[15]_i_7_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_write[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
  attribute SOFT_HLUTNM of axi_bvalid_i_4 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \s00_axi_rdata[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s00_axi_rdata[10]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s00_axi_rdata[11]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[12]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[13]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[14]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[15]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s00_axi_rdata[16]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s00_axi_rdata[17]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s00_axi_rdata[18]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s00_axi_rdata[19]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s00_axi_rdata[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s00_axi_rdata[20]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s00_axi_rdata[21]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s00_axi_rdata[22]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s00_axi_rdata[23]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s00_axi_rdata[24]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s00_axi_rdata[25]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s00_axi_rdata[26]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s00_axi_rdata[27]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[28]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s00_axi_rdata[30]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[31]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s00_axi_rdata[3]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s00_axi_rdata[4]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s00_axi_rdata[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s00_axi_rdata[6]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s00_axi_rdata[7]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s00_axi_rdata[8]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s00_axi_rdata[9]_INST_0\ : label is "soft_lutpair10";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_onehot_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFAABF00"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I5 => axi_wready,
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
      INIT => X"FFFF88880FFFFFFF"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^axi_rvalid_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => \^axi_arready_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
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
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_aresetn,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => \axi_arready0__0\,
      I5 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_aresetn,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => \axi_arready0__0\,
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
      INIT => X"CFCCCCCC4F4F4F4F"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(0),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(1),
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
      I2 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
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
      I2 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
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
      INIT => X"FFFFFFCCFF4CFF4C"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I3 => axi_wready,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I5 => s00_axi_wvalid,
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
      INIT => X"AAAAA8B8B8B8B8B8"
    )
        port map (
      I0 => axi_bvalid_i_2_n_0,
      I1 => axi_bvalid_i_3_n_0,
      I2 => \^s00_axi_bvalid\,
      I3 => s00_axi_bready,
      I4 => s00_axi_wvalid,
      I5 => axi_bvalid_i_4_n_0,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF80FF00FF00"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I3 => axi_wready,
      I4 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00808080"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I1 => s00_axi_bready,
      I2 => \^s00_axi_bvalid\,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
      O => axi_bvalid_i_3_n_0
    );
axi_bvalid_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_write_reg_n_0_[2]\,
      O => axi_bvalid_i_4_n_0
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
      INIT => X"F0F0F8F800F0F0F0"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^axi_rvalid_reg_0\,
      I3 => s00_axi_rready,
      I4 => state_read(1),
      I5 => state_read(0),
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
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[0]\,
      I1 => p_5_in(0),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[10]\,
      I1 => \user_control_reg_reg_n_0_[10]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[11]\,
      I1 => \user_control_reg_reg_n_0_[11]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[12]\,
      I1 => \user_control_reg_reg_n_0_[12]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[13]\,
      I1 => \user_control_reg_reg_n_0_[13]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[14]\,
      I1 => \user_control_reg_reg_n_0_[14]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[15]\,
      I1 => \user_control_reg_reg_n_0_[15]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[16]\,
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[17]\,
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[18]\,
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[19]\,
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[1]\,
      I1 => \user_control_reg_reg_n_0_[1]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[20]\,
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[21]\,
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[22]\,
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[23]\,
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[24]\,
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[25]\,
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[26]\,
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[27]\,
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[28]\,
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[29]\,
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[2]\,
      I1 => \user_control_reg_reg_n_0_[2]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[30]\,
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => \user_control_reg_reg_n_0_[31]\,
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[3]\,
      I1 => \user_control_reg_reg_n_0_[3]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[4]\,
      I1 => \user_control_reg_reg_n_0_[4]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[5]\,
      I1 => \user_control_reg_reg_n_0_[5]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[6]\,
      I1 => \user_control_reg_reg_n_0_[6]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[7]\,
      I1 => \user_control_reg_reg_n_0_[7]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[8]\,
      I1 => \user_control_reg_reg_n_0_[8]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[9]\,
      I1 => \user_control_reg_reg_n_0_[9]\,
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      O => s00_axi_rdata(9)
    );
\user_control_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF008000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => s00_axi_wstrb(0),
      I2 => \user_control_reg[31]_i_2_n_0\,
      I3 => s00_axi_wvalid,
      I4 => p_5_in(0),
      O => \user_control_reg[0]_i_1_n_0\
    );
\user_control_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \user_control_reg[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\user_control_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \user_control_reg[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\user_control_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \user_control_reg[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\user_control_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010101F100000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awaddr(0),
      I5 => s00_axi_wvalid,
      O => \user_control_reg[31]_i_2_n_0\
    );
\user_control_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \user_control_reg[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\user_control_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \user_control_reg[0]_i_1_n_0\,
      Q => p_5_in(0),
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \user_control_reg_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \user_control_reg_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \user_control_reg_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \user_control_reg_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \user_control_reg_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \user_control_reg_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \user_control_reg_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \user_control_reg_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \user_control_reg_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \user_control_reg_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \user_control_reg_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \user_control_reg_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \user_control_reg_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \user_control_reg_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \user_control_reg_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \user_control_reg_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \user_control_reg_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \user_control_reg_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \user_control_reg_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \user_control_reg_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \user_control_reg_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \user_control_reg_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \user_control_reg_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \user_control_reg_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \user_control_reg_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \user_control_reg_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \user_control_reg_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \user_control_reg_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \user_control_reg_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \user_control_reg_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\user_control_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \user_control_reg_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\user_instrument_data[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[0]\,
      O => plusOp(0)
    );
\user_instrument_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA0000FFFFFFFF"
    )
        port map (
      I0 => \user_instrument_data[15]_i_3_n_0\,
      I1 => \user_instrument_data[15]_i_4_n_0\,
      I2 => \user_instrument_data[15]_i_5_n_0\,
      I3 => \user_instrument_data[15]_i_6_n_0\,
      I4 => \user_instrument_data[15]_i_7_n_0\,
      I5 => s00_axi_aresetn,
      O => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5_in(0),
      I1 => s00_axi_wvalid,
      O => user_instrument_data
    );
\user_instrument_data[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[12]\,
      I1 => \user_instrument_data_reg_n_0_[13]\,
      I2 => \user_instrument_data_reg_n_0_[14]\,
      O => \user_instrument_data[15]_i_3_n_0\
    );
\user_instrument_data[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[1]\,
      I1 => \user_instrument_data_reg_n_0_[13]\,
      I2 => \user_instrument_data_reg_n_0_[3]\,
      I3 => \user_instrument_data_reg_n_0_[2]\,
      O => \user_instrument_data[15]_i_4_n_0\
    );
\user_instrument_data[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[11]\,
      I1 => \user_instrument_data_reg_n_0_[10]\,
      I2 => \user_instrument_data_reg_n_0_[9]\,
      I3 => \user_instrument_data_reg_n_0_[8]\,
      O => \user_instrument_data[15]_i_5_n_0\
    );
\user_instrument_data[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \user_instrument_data_reg_n_0_[7]\,
      I1 => \user_instrument_data_reg_n_0_[6]\,
      I2 => \user_instrument_data_reg_n_0_[5]\,
      I3 => \user_instrument_data_reg_n_0_[4]\,
      O => \user_instrument_data[15]_i_6_n_0\
    );
\user_instrument_data[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => p_5_in(0),
      I2 => \user_instrument_data_reg_n_0_[15]\,
      O => \user_instrument_data[15]_i_7_n_0\
    );
\user_instrument_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(0),
      Q => \user_instrument_data_reg_n_0_[0]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(10),
      Q => \user_instrument_data_reg_n_0_[10]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(11),
      Q => \user_instrument_data_reg_n_0_[11]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(12),
      Q => \user_instrument_data_reg_n_0_[12]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(13),
      Q => \user_instrument_data_reg_n_0_[13]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(14),
      Q => \user_instrument_data_reg_n_0_[14]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(15),
      Q => \user_instrument_data_reg_n_0_[15]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(1),
      Q => \user_instrument_data_reg_n_0_[1]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(2),
      Q => \user_instrument_data_reg_n_0_[2]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(3),
      Q => \user_instrument_data_reg_n_0_[3]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(4),
      Q => \user_instrument_data_reg_n_0_[4]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(5),
      Q => \user_instrument_data_reg_n_0_[5]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(6),
      Q => \user_instrument_data_reg_n_0_[6]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(7),
      Q => \user_instrument_data_reg_n_0_[7]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(8),
      Q => \user_instrument_data_reg_n_0_[8]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
\user_instrument_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => user_instrument_data,
      D => plusOp(9),
      Q => \user_instrument_data_reg_n_0_[9]\,
      R => \user_instrument_data[15]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader is
begin
IP_InstrumentReader_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader_slave_lite_v1_0_S00_AXI
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "soc_design_IP_InstrumentReader_0_0,IP_InstrumentReader,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "IP_InstrumentReader,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IP_InstrumentReader
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
