-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Dec  7 11:17:04 2025
-- Host        : Azmis_Laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/azmib/Desktop/Codesign/SoC_Project/SoC_Project.gen/sources_1/bd/soc_design/ip/soc_design_Instrument_Reader_0_0/soc_design_Instrument_Reader_0_0_sim_netlist.vhdl
-- Design      : soc_design_Instrument_Reader_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_design_Instrument_Reader_0_0_Instrument_Reader_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_aresetn_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \slv_reg0_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_design_Instrument_Reader_0_0_Instrument_Reader_slave_lite_v1_0_S00_AXI : entity is "Instrument_Reader_slave_lite_v1_0_S00_AXI";
end soc_design_Instrument_Reader_0_0_Instrument_Reader_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of soc_design_Instrument_Reader_0_0_Instrument_Reader_slave_lite_v1_0_S00_AXI is
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
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_3_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \slv_reg0[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg0[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[9]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg0_0 : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^slv_reg0_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \slv_reg0[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg0[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg0[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg0[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg0[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg0[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg0[15]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg0[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg0[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg0[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg0[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg0[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg0[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg0[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg0[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg0[23]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg0[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg0[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg0[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg0[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg0[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg0[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg0[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg0[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg0[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg0[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg0[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg0[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg0[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg0[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg0[9]_i_1\ : label is "soft_lutpair4";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
  \slv_reg0_reg[0]_0\(0) <= \^slv_reg0_reg[0]_0\(0);
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
      S => \^s00_axi_aresetn_0\
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
      R => \^s00_axi_aresetn_0\
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
      R => \^s00_axi_aresetn_0\
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
      R => \^s00_axi_aresetn_0\
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => \^s00_axi_aresetn_0\
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
      R => \^s00_axi_aresetn_0\
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
      O => \^s00_axi_aresetn_0\
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
      R => \^s00_axi_aresetn_0\
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
      R => \^s00_axi_aresetn_0\
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
      R => \^s00_axi_aresetn_0\
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
      R => \^s00_axi_aresetn_0\
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^slv_reg0_reg[0]_0\(0),
      I1 => axi_araddr(2),
      I2 => Q(0),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => axi_araddr(2),
      I2 => Q(10),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => axi_araddr(2),
      I2 => Q(11),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(12),
      I1 => axi_araddr(2),
      I2 => Q(12),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(13),
      I1 => axi_araddr(2),
      I2 => Q(13),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(14),
      I1 => axi_araddr(2),
      I2 => Q(14),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(15),
      I1 => axi_araddr(2),
      I2 => Q(15),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => axi_araddr(2),
      I2 => Q(16),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => axi_araddr(2),
      I2 => Q(17),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => axi_araddr(2),
      I2 => Q(18),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => axi_araddr(2),
      I2 => Q(19),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => axi_araddr(2),
      I2 => Q(1),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => axi_araddr(2),
      I2 => Q(20),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(21),
      I1 => axi_araddr(2),
      I2 => Q(21),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(22),
      I1 => axi_araddr(2),
      I2 => Q(22),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => axi_araddr(2),
      I2 => Q(23),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => axi_araddr(2),
      I2 => Q(24),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(25),
      I1 => axi_araddr(2),
      I2 => Q(25),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(26),
      I1 => axi_araddr(2),
      I2 => Q(26),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(27),
      I1 => axi_araddr(2),
      I2 => Q(27),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(28),
      I1 => axi_araddr(2),
      I2 => Q(28),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(29),
      I1 => axi_araddr(2),
      I2 => Q(29),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => axi_araddr(2),
      I2 => Q(2),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => axi_araddr(2),
      I2 => Q(30),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(31),
      I1 => axi_araddr(2),
      I2 => Q(31),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(3),
      I1 => axi_araddr(2),
      I2 => Q(3),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(4),
      I1 => axi_araddr(2),
      I2 => Q(4),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(5),
      I1 => axi_araddr(2),
      I2 => Q(5),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(6),
      I1 => axi_araddr(2),
      I2 => Q(6),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(7),
      I1 => axi_araddr(2),
      I2 => Q(7),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => axi_araddr(2),
      I2 => Q(8),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => axi_araddr(2),
      I2 => Q(9),
      I3 => axi_araddr(3),
      O => s00_axi_rdata(9)
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(0),
      O => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(10),
      O => \slv_reg0[10]_i_1_n_0\
    );
\slv_reg0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(11),
      O => \slv_reg0[11]_i_1_n_0\
    );
\slv_reg0[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(12),
      O => \slv_reg0[12]_i_1_n_0\
    );
\slv_reg0[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(13),
      O => \slv_reg0[13]_i_1_n_0\
    );
\slv_reg0[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(14),
      O => \slv_reg0[14]_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5FF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \slv_reg0[31]_i_3_n_0\,
      I3 => s00_axi_aresetn,
      O => slv_reg0_0(15)
    );
\slv_reg0[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(15),
      O => \slv_reg0[15]_i_2_n_0\
    );
\slv_reg0[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(16),
      O => \slv_reg0[16]_i_1_n_0\
    );
\slv_reg0[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(17),
      O => \slv_reg0[17]_i_1_n_0\
    );
\slv_reg0[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(18),
      O => \slv_reg0[18]_i_1_n_0\
    );
\slv_reg0[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(19),
      O => \slv_reg0[19]_i_1_n_0\
    );
\slv_reg0[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(1),
      O => \slv_reg0[1]_i_1_n_0\
    );
\slv_reg0[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(20),
      O => \slv_reg0[20]_i_1_n_0\
    );
\slv_reg0[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(21),
      O => \slv_reg0[21]_i_1_n_0\
    );
\slv_reg0[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(22),
      O => \slv_reg0[22]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5FF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \slv_reg0[31]_i_3_n_0\,
      I3 => s00_axi_aresetn,
      O => slv_reg0_0(23)
    );
\slv_reg0[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(23),
      O => \slv_reg0[23]_i_2_n_0\
    );
\slv_reg0[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(24),
      O => \slv_reg0[24]_i_1_n_0\
    );
\slv_reg0[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(25),
      O => \slv_reg0[25]_i_1_n_0\
    );
\slv_reg0[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(26),
      O => \slv_reg0[26]_i_1_n_0\
    );
\slv_reg0[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(27),
      O => \slv_reg0[27]_i_1_n_0\
    );
\slv_reg0[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(28),
      O => \slv_reg0[28]_i_1_n_0\
    );
\slv_reg0[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(29),
      O => \slv_reg0[29]_i_1_n_0\
    );
\slv_reg0[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(2),
      O => \slv_reg0[2]_i_1_n_0\
    );
\slv_reg0[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(30),
      O => \slv_reg0[30]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5FF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \slv_reg0[31]_i_3_n_0\,
      I3 => s00_axi_aresetn,
      O => slv_reg0_0(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(31),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_awaddr(1),
      I2 => axi_awaddr(2),
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      O => \slv_reg0[31]_i_3_n_0\
    );
\slv_reg0[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(3),
      O => \slv_reg0[3]_i_1_n_0\
    );
\slv_reg0[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(4),
      O => \slv_reg0[4]_i_1_n_0\
    );
\slv_reg0[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(5),
      O => \slv_reg0[5]_i_1_n_0\
    );
\slv_reg0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(6),
      O => \slv_reg0[6]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5FF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \slv_reg0[31]_i_3_n_0\,
      I3 => s00_axi_aresetn,
      O => slv_reg0_0(7)
    );
\slv_reg0[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(7),
      O => \slv_reg0[7]_i_2_n_0\
    );
\slv_reg0[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(8),
      O => \slv_reg0[8]_i_1_n_0\
    );
\slv_reg0[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wdata(9),
      O => \slv_reg0[9]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(7),
      D => \slv_reg0[0]_i_1_n_0\,
      Q => \^slv_reg0_reg[0]_0\(0),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(15),
      D => \slv_reg0[10]_i_1_n_0\,
      Q => slv_reg0(10),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(15),
      D => \slv_reg0[11]_i_1_n_0\,
      Q => slv_reg0(11),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(15),
      D => \slv_reg0[12]_i_1_n_0\,
      Q => slv_reg0(12),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(15),
      D => \slv_reg0[13]_i_1_n_0\,
      Q => slv_reg0(13),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(15),
      D => \slv_reg0[14]_i_1_n_0\,
      Q => slv_reg0(14),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(15),
      D => \slv_reg0[15]_i_2_n_0\,
      Q => slv_reg0(15),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(23),
      D => \slv_reg0[16]_i_1_n_0\,
      Q => slv_reg0(16),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(23),
      D => \slv_reg0[17]_i_1_n_0\,
      Q => slv_reg0(17),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(23),
      D => \slv_reg0[18]_i_1_n_0\,
      Q => slv_reg0(18),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(23),
      D => \slv_reg0[19]_i_1_n_0\,
      Q => slv_reg0(19),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(7),
      D => \slv_reg0[1]_i_1_n_0\,
      Q => slv_reg0(1),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(23),
      D => \slv_reg0[20]_i_1_n_0\,
      Q => slv_reg0(20),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(23),
      D => \slv_reg0[21]_i_1_n_0\,
      Q => slv_reg0(21),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(23),
      D => \slv_reg0[22]_i_1_n_0\,
      Q => slv_reg0(22),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(23),
      D => \slv_reg0[23]_i_2_n_0\,
      Q => slv_reg0(23),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(31),
      D => \slv_reg0[24]_i_1_n_0\,
      Q => slv_reg0(24),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(31),
      D => \slv_reg0[25]_i_1_n_0\,
      Q => slv_reg0(25),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(31),
      D => \slv_reg0[26]_i_1_n_0\,
      Q => slv_reg0(26),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(31),
      D => \slv_reg0[27]_i_1_n_0\,
      Q => slv_reg0(27),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(31),
      D => \slv_reg0[28]_i_1_n_0\,
      Q => slv_reg0(28),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(31),
      D => \slv_reg0[29]_i_1_n_0\,
      Q => slv_reg0(29),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(7),
      D => \slv_reg0[2]_i_1_n_0\,
      Q => slv_reg0(2),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(31),
      D => \slv_reg0[30]_i_1_n_0\,
      Q => slv_reg0(30),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(31),
      D => \slv_reg0[31]_i_2_n_0\,
      Q => slv_reg0(31),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(7),
      D => \slv_reg0[3]_i_1_n_0\,
      Q => slv_reg0(3),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(7),
      D => \slv_reg0[4]_i_1_n_0\,
      Q => slv_reg0(4),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(7),
      D => \slv_reg0[5]_i_1_n_0\,
      Q => slv_reg0(5),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(7),
      D => \slv_reg0[6]_i_1_n_0\,
      Q => slv_reg0(6),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(7),
      D => \slv_reg0[7]_i_2_n_0\,
      Q => slv_reg0(7),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(15),
      D => \slv_reg0[8]_i_1_n_0\,
      Q => slv_reg0(8),
      R => \^s00_axi_aresetn_0\
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0_0(15),
      D => \slv_reg0[9]_i_1_n_0\,
      Q => slv_reg0(9),
      R => \^s00_axi_aresetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_design_Instrument_Reader_0_0_instrument_reader_module is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    cur_start_read_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_design_Instrument_Reader_0_0_instrument_reader_module : entity is "instrument_reader_module";
end soc_design_Instrument_Reader_0_0_instrument_reader_module;

architecture STRUCTURE of soc_design_Instrument_Reader_0_0_instrument_reader_module is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cur_start_read : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal instrument_val : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \instrument_val[0]_i_1_n_0\ : STD_LOGIC;
  signal \instrument_val[31]_i_10_n_0\ : STD_LOGIC;
  signal \instrument_val[31]_i_1_n_0\ : STD_LOGIC;
  signal \instrument_val[31]_i_3_n_0\ : STD_LOGIC;
  signal \instrument_val[31]_i_4_n_0\ : STD_LOGIC;
  signal \instrument_val[31]_i_5_n_0\ : STD_LOGIC;
  signal \instrument_val[31]_i_6_n_0\ : STD_LOGIC;
  signal \instrument_val[31]_i_7_n_0\ : STD_LOGIC;
  signal \instrument_val[31]_i_8_n_0\ : STD_LOGIC;
  signal \instrument_val[31]_i_9_n_0\ : STD_LOGIC;
  signal last_start_read : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_carry__6_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_plusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__6\ : label is 35;
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
cur_start_read_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cur_start_read_reg_0(0),
      Q => cur_start_read,
      R => SR(0)
    );
\instrument_val[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \instrument_val[31]_i_3_n_0\,
      I1 => \instrument_val[31]_i_4_n_0\,
      I2 => \instrument_val[31]_i_5_n_0\,
      I3 => \instrument_val[31]_i_6_n_0\,
      I4 => \^q\(0),
      O => \instrument_val[0]_i_1_n_0\
    );
\instrument_val[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(10),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(10)
    );
\instrument_val[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(11),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(11)
    );
\instrument_val[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(12),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(12)
    );
\instrument_val[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(13),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(13)
    );
\instrument_val[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(14),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(14)
    );
\instrument_val[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(15),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(15)
    );
\instrument_val[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(16),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(16)
    );
\instrument_val[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(17),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(17)
    );
\instrument_val[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(18),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(18)
    );
\instrument_val[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(19),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(19)
    );
\instrument_val[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(1),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(1)
    );
\instrument_val[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(20),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(20)
    );
\instrument_val[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(21),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(21)
    );
\instrument_val[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(22),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(22)
    );
\instrument_val[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(23),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(23)
    );
\instrument_val[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(24),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(24)
    );
\instrument_val[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(25),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(25)
    );
\instrument_val[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(26),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(26)
    );
\instrument_val[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(27),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(27)
    );
\instrument_val[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(28),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(28)
    );
\instrument_val[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(29),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(29)
    );
\instrument_val[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(2),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(2)
    );
\instrument_val[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(30),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(30)
    );
\instrument_val[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => last_start_read,
      I1 => cur_start_read,
      O => \instrument_val[31]_i_1_n_0\
    );
\instrument_val[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(30),
      I2 => \^q\(16),
      I3 => \^q\(17),
      O => \instrument_val[31]_i_10_n_0\
    );
\instrument_val[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(31),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(31)
    );
\instrument_val[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^q\(12),
      I2 => \^q\(18),
      I3 => \^q\(14),
      I4 => \instrument_val[31]_i_7_n_0\,
      O => \instrument_val[31]_i_3_n_0\
    );
\instrument_val[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(27),
      I2 => \^q\(24),
      I3 => \^q\(25),
      I4 => \instrument_val[31]_i_8_n_0\,
      O => \instrument_val[31]_i_4_n_0\
    );
\instrument_val[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(15),
      I3 => \^q\(1),
      I4 => \instrument_val[31]_i_9_n_0\,
      O => \instrument_val[31]_i_5_n_0\
    );
\instrument_val[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      I2 => \^q\(8),
      I3 => \^q\(9),
      I4 => \instrument_val[31]_i_10_n_0\,
      O => \instrument_val[31]_i_6_n_0\
    );
\instrument_val[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(20),
      I2 => \^q\(23),
      I3 => \^q\(22),
      O => \instrument_val[31]_i_7_n_0\
    );
\instrument_val[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(28),
      I2 => \^q\(0),
      I3 => \^q\(31),
      O => \instrument_val[31]_i_8_n_0\
    );
\instrument_val[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(7),
      I3 => \^q\(6),
      O => \instrument_val[31]_i_9_n_0\
    );
\instrument_val[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(3),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(3)
    );
\instrument_val[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(4),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(4)
    );
\instrument_val[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(5),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(5)
    );
\instrument_val[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(6),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(6)
    );
\instrument_val[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(7),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(7)
    );
\instrument_val[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(8),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(8)
    );
\instrument_val[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => data0(9),
      I1 => \instrument_val[31]_i_3_n_0\,
      I2 => \instrument_val[31]_i_4_n_0\,
      I3 => \instrument_val[31]_i_5_n_0\,
      I4 => \instrument_val[31]_i_6_n_0\,
      O => instrument_val(9)
    );
\instrument_val_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => \instrument_val[0]_i_1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\instrument_val_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(10),
      Q => \^q\(10),
      S => SR(0)
    );
\instrument_val_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(11),
      Q => \^q\(11),
      S => SR(0)
    );
\instrument_val_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(12),
      Q => \^q\(12),
      R => SR(0)
    );
\instrument_val_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(13),
      Q => \^q\(13),
      S => SR(0)
    );
\instrument_val_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(14),
      Q => \^q\(14),
      R => SR(0)
    );
\instrument_val_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(15),
      Q => \^q\(15),
      S => SR(0)
    );
\instrument_val_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(16),
      Q => \^q\(16),
      R => SR(0)
    );
\instrument_val_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(17),
      Q => \^q\(17),
      R => SR(0)
    );
\instrument_val_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(18),
      Q => \^q\(18),
      R => SR(0)
    );
\instrument_val_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(19),
      Q => \^q\(19),
      R => SR(0)
    );
\instrument_val_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(1),
      Q => \^q\(1),
      S => SR(0)
    );
\instrument_val_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(20),
      Q => \^q\(20),
      R => SR(0)
    );
\instrument_val_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(21),
      Q => \^q\(21),
      R => SR(0)
    );
\instrument_val_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(22),
      Q => \^q\(22),
      R => SR(0)
    );
\instrument_val_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(23),
      Q => \^q\(23),
      R => SR(0)
    );
\instrument_val_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(24),
      Q => \^q\(24),
      R => SR(0)
    );
\instrument_val_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(25),
      Q => \^q\(25),
      R => SR(0)
    );
\instrument_val_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(26),
      Q => \^q\(26),
      R => SR(0)
    );
\instrument_val_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(27),
      Q => \^q\(27),
      R => SR(0)
    );
\instrument_val_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(28),
      Q => \^q\(28),
      R => SR(0)
    );
\instrument_val_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(29),
      Q => \^q\(29),
      R => SR(0)
    );
\instrument_val_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(2),
      Q => \^q\(2),
      S => SR(0)
    );
\instrument_val_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(30),
      Q => \^q\(30),
      R => SR(0)
    );
\instrument_val_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(31),
      Q => \^q\(31),
      R => SR(0)
    );
\instrument_val_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(3),
      Q => \^q\(3),
      S => SR(0)
    );
\instrument_val_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(4),
      Q => \^q\(4),
      S => SR(0)
    );
\instrument_val_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(5),
      Q => \^q\(5),
      S => SR(0)
    );
\instrument_val_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(6),
      Q => \^q\(6),
      S => SR(0)
    );
\instrument_val_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(7),
      Q => \^q\(7),
      S => SR(0)
    );
\instrument_val_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(8),
      Q => \^q\(8),
      S => SR(0)
    );
\instrument_val_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \instrument_val[31]_i_1_n_0\,
      D => instrument_val(9),
      Q => \^q\(9),
      S => SR(0)
    );
last_start_read_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cur_start_read,
      Q => last_start_read,
      R => SR(0)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \^q\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => \^q\(4 downto 1)
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
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => \^q\(8 downto 5)
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
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => \^q\(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => \^q\(16 downto 13)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => \^q\(20 downto 17)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2) => \plusOp_carry__4_n_1\,
      CO(1) => \plusOp_carry__4_n_2\,
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => \^q\(24 downto 21)
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3) => \plusOp_carry__5_n_0\,
      CO(2) => \plusOp_carry__5_n_1\,
      CO(1) => \plusOp_carry__5_n_2\,
      CO(0) => \plusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => \^q\(28 downto 25)
    );
\plusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__6_n_2\,
      CO(0) => \plusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \^q\(31 downto 29)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_design_Instrument_Reader_0_0_Instrument_Reader is
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_design_Instrument_Reader_0_0_Instrument_Reader : entity is "Instrument_Reader";
end soc_design_Instrument_Reader_0_0_Instrument_Reader;

architecture STRUCTURE of soc_design_Instrument_Reader_0_0_Instrument_Reader is
  signal Instrument_Reader_slave_lite_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal instrument_val : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 0 to 0 );
begin
Instrument_Reader_slave_lite_v1_0_S00_AXI_inst: entity work.soc_design_Instrument_Reader_0_0_Instrument_Reader_slave_lite_v1_0_S00_AXI
     port map (
      Q(31 downto 0) => instrument_val(31 downto 0),
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => Instrument_Reader_slave_lite_v1_0_S00_AXI_inst_n_1,
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
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[0]_0\(0) => slv_reg0(0)
    );
Instrument_reader_module_inst: entity work.soc_design_Instrument_Reader_0_0_instrument_reader_module
     port map (
      Q(31 downto 0) => instrument_val(31 downto 0),
      SR(0) => Instrument_Reader_slave_lite_v1_0_S00_AXI_inst_n_1,
      cur_start_read_reg_0(0) => slv_reg0(0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_design_Instrument_Reader_0_0 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
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
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of soc_design_Instrument_Reader_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_design_Instrument_Reader_0_0 : entity is "soc_design_Instrument_Reader_0_0,Instrument_Reader,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of soc_design_Instrument_Reader_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of soc_design_Instrument_Reader_0_0 : entity is "Instrument_Reader,Vivado 2025.1";
end soc_design_Instrument_Reader_0_0;

architecture STRUCTURE of soc_design_Instrument_Reader_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal n_0_127 : STD_LOGIC;
  signal n_0_128 : STD_LOGIC;
  signal n_0_129 : STD_LOGIC;
  signal n_0_130 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of i_127 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of i_128 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of i_129 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of i_130 : label is "soft_lutpair17";
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
U0: entity work.soc_design_Instrument_Reader_0_0_Instrument_Reader
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
i_127: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => n_0_127
    );
i_128: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => n_0_128
    );
i_129: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => n_0_129
    );
i_130: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => n_0_130
    );
end STRUCTURE;
