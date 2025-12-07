-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Dec  7 18:16:19 2025
-- Host        : Azmis_Laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/azmib/Desktop/HardwareSoftwareCodesign/Vivado_Project/SoC_Project/SoC_Project.gen/sources_1/bd/soc_design/ip/soc_design_Temperature_Control_0_0/soc_design_Temperature_Control_0_0_sim_netlist.vhdl
-- Design      : soc_design_Temperature_Control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_design_Temperature_Control_0_0_Temperature_Control_Module is
  port (
    sensor2_raw : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sensor1_raw : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_design_Temperature_Control_0_0_Temperature_Control_Module : entity is "Temperature_Control_Module";
end soc_design_Temperature_Control_0_0_Temperature_Control_Module;

architecture STRUCTURE of soc_design_Temperature_Control_0_0_Temperature_Control_Module is
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_carry__3_n_4\ : STD_LOGIC;
  signal \minusOp_carry__3_n_5\ : STD_LOGIC;
  signal \minusOp_carry__3_n_6\ : STD_LOGIC;
  signal \minusOp_carry__3_n_7\ : STD_LOGIC;
  signal \minusOp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_1\ : STD_LOGIC;
  signal \minusOp_carry__4_n_2\ : STD_LOGIC;
  signal \minusOp_carry__4_n_3\ : STD_LOGIC;
  signal \minusOp_carry__4_n_4\ : STD_LOGIC;
  signal \minusOp_carry__4_n_5\ : STD_LOGIC;
  signal \minusOp_carry__4_n_6\ : STD_LOGIC;
  signal \minusOp_carry__4_n_7\ : STD_LOGIC;
  signal \minusOp_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_n_1\ : STD_LOGIC;
  signal \minusOp_carry__5_n_2\ : STD_LOGIC;
  signal \minusOp_carry__5_n_3\ : STD_LOGIC;
  signal \minusOp_carry__5_n_4\ : STD_LOGIC;
  signal \minusOp_carry__5_n_5\ : STD_LOGIC;
  signal \minusOp_carry__5_n_6\ : STD_LOGIC;
  signal \minusOp_carry__5_n_7\ : STD_LOGIC;
  signal \minusOp_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_n_2\ : STD_LOGIC;
  signal \minusOp_carry__6_n_3\ : STD_LOGIC;
  signal \minusOp_carry__6_n_5\ : STD_LOGIC;
  signal \minusOp_carry__6_n_6\ : STD_LOGIC;
  signal \minusOp_carry__6_n_7\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_4 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \plusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_carry__2_n_7\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_4\ : STD_LOGIC;
  signal \plusOp_carry__3_n_5\ : STD_LOGIC;
  signal \plusOp_carry__3_n_6\ : STD_LOGIC;
  signal \plusOp_carry__3_n_7\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_4\ : STD_LOGIC;
  signal \plusOp_carry__4_n_5\ : STD_LOGIC;
  signal \plusOp_carry__4_n_6\ : STD_LOGIC;
  signal \plusOp_carry__4_n_7\ : STD_LOGIC;
  signal \plusOp_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_carry__5_n_4\ : STD_LOGIC;
  signal \plusOp_carry__5_n_5\ : STD_LOGIC;
  signal \plusOp_carry__5_n_6\ : STD_LOGIC;
  signal \plusOp_carry__5_n_7\ : STD_LOGIC;
  signal \plusOp_carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_carry__6_n_5\ : STD_LOGIC;
  signal \plusOp_carry__6_n_6\ : STD_LOGIC;
  signal \plusOp_carry__6_n_7\ : STD_LOGIC;
  signal plusOp_carry_i_1_n_0 : STD_LOGIC;
  signal plusOp_carry_i_2_n_0 : STD_LOGIC;
  signal plusOp_carry_i_3_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \^sensor1_raw\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sensor1_raw0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__0_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__0_n_1\ : STD_LOGIC;
  signal \sensor1_raw0_carry__0_n_2\ : STD_LOGIC;
  signal \sensor1_raw0_carry__0_n_3\ : STD_LOGIC;
  signal \sensor1_raw0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__1_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__1_n_1\ : STD_LOGIC;
  signal \sensor1_raw0_carry__1_n_2\ : STD_LOGIC;
  signal \sensor1_raw0_carry__1_n_3\ : STD_LOGIC;
  signal \sensor1_raw0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__2_n_0\ : STD_LOGIC;
  signal \sensor1_raw0_carry__2_n_1\ : STD_LOGIC;
  signal \sensor1_raw0_carry__2_n_2\ : STD_LOGIC;
  signal \sensor1_raw0_carry__2_n_3\ : STD_LOGIC;
  signal sensor1_raw0_carry_i_1_n_0 : STD_LOGIC;
  signal sensor1_raw0_carry_i_2_n_0 : STD_LOGIC;
  signal sensor1_raw0_carry_i_3_n_0 : STD_LOGIC;
  signal sensor1_raw0_carry_i_4_n_0 : STD_LOGIC;
  signal sensor1_raw0_carry_i_5_n_0 : STD_LOGIC;
  signal sensor1_raw0_carry_i_6_n_0 : STD_LOGIC;
  signal sensor1_raw0_carry_i_7_n_0 : STD_LOGIC;
  signal sensor1_raw0_carry_i_8_n_0 : STD_LOGIC;
  signal sensor1_raw0_carry_n_0 : STD_LOGIC;
  signal sensor1_raw0_carry_n_1 : STD_LOGIC;
  signal sensor1_raw0_carry_n_2 : STD_LOGIC;
  signal sensor1_raw0_carry_n_3 : STD_LOGIC;
  signal \sensor1_raw[14]_i_2_n_0\ : STD_LOGIC;
  signal \sensor1_raw[15]_i_2_n_0\ : STD_LOGIC;
  signal \sensor1_raw[15]_i_3_n_0\ : STD_LOGIC;
  signal \sensor1_raw[15]_i_4_n_0\ : STD_LOGIC;
  signal \sensor1_raw[15]_i_5_n_0\ : STD_LOGIC;
  signal \sensor1_raw[15]_i_6_n_0\ : STD_LOGIC;
  signal \sensor1_raw[31]_i_1_n_0\ : STD_LOGIC;
  signal \^sensor2_raw\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sensor2_raw[0]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[10]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[11]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[12]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[13]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[14]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[14]_i_2_n_0\ : STD_LOGIC;
  signal \sensor2_raw[15]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[15]_i_2_n_0\ : STD_LOGIC;
  signal \sensor2_raw[15]_i_3_n_0\ : STD_LOGIC;
  signal \sensor2_raw[15]_i_4_n_0\ : STD_LOGIC;
  signal \sensor2_raw[15]_i_5_n_0\ : STD_LOGIC;
  signal \sensor2_raw[15]_i_6_n_0\ : STD_LOGIC;
  signal \sensor2_raw[15]_i_7_n_0\ : STD_LOGIC;
  signal \sensor2_raw[1]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[2]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[31]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[3]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[4]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[5]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[6]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[7]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[8]_i_1_n_0\ : STD_LOGIC;
  signal \sensor2_raw[9]_i_1_n_0\ : STD_LOGIC;
  signal \ticks[0]_i_2_n_0\ : STD_LOGIC;
  signal ticks_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ticks_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ticks_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_minusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sensor1_raw0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sensor1_raw0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sensor1_raw0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sensor1_raw0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ticks_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of minusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__6\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of sensor1_raw0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \sensor1_raw0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sensor1_raw0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sensor1_raw0_carry__2\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sensor1_raw[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sensor2_raw[0]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \ticks_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ticks_reg[8]_i_1\ : label is 11;
begin
  sensor1_raw(31 downto 0) <= \^sensor1_raw\(31 downto 0);
  sensor2_raw(31 downto 0) <= \^sensor2_raw\(31 downto 0);
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(5),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(16),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(15),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(14),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(13),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(20),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(19),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(18),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(17),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(24),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(23),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(22),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(21),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(28),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(27),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(26),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(25),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(31),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(30),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(29),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(1),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(4),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor1_raw\(2),
      O => \i__carry_i_3_n_0\
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => \^sensor2_raw\(0),
      DI(3 downto 1) => B"000",
      DI(0) => \^sensor2_raw\(1),
      O(3) => minusOp_carry_n_4,
      O(2) => minusOp_carry_n_5,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(3 downto 1) => \^sensor2_raw\(4 downto 2),
      S(0) => minusOp_carry_i_1_n_0
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \^sensor2_raw\(8 downto 6),
      DI(0) => '0',
      O(3) => \minusOp_carry__0_n_4\,
      O(2) => \minusOp_carry__0_n_5\,
      O(1) => \minusOp_carry__0_n_6\,
      O(0) => \minusOp_carry__0_n_7\,
      S(3) => \minusOp_carry__0_i_1_n_0\,
      S(2) => \minusOp_carry__0_i_2_n_0\,
      S(1) => \minusOp_carry__0_i_3_n_0\,
      S(0) => \^sensor2_raw\(5)
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(8),
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(7),
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(6),
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^sensor2_raw\(12 downto 9),
      O(3) => \minusOp_carry__1_n_4\,
      O(2) => \minusOp_carry__1_n_5\,
      O(1) => \minusOp_carry__1_n_6\,
      O(0) => \minusOp_carry__1_n_7\,
      S(3) => \minusOp_carry__1_i_1_n_0\,
      S(2) => \minusOp_carry__1_i_2_n_0\,
      S(1) => \minusOp_carry__1_i_3_n_0\,
      S(0) => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(12),
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(11),
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(10),
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(9),
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \minusOp_carry__2_n_0\,
      CO(2) => \minusOp_carry__2_n_1\,
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^sensor2_raw\(16 downto 13),
      O(3) => \minusOp_carry__2_n_4\,
      O(2) => \minusOp_carry__2_n_5\,
      O(1) => \minusOp_carry__2_n_6\,
      O(0) => \minusOp_carry__2_n_7\,
      S(3) => \minusOp_carry__2_i_1_n_0\,
      S(2) => \minusOp_carry__2_i_2_n_0\,
      S(1) => \minusOp_carry__2_i_3_n_0\,
      S(0) => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(16),
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(15),
      O => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(14),
      O => \minusOp_carry__2_i_3_n_0\
    );
\minusOp_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(13),
      O => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__2_n_0\,
      CO(3) => \minusOp_carry__3_n_0\,
      CO(2) => \minusOp_carry__3_n_1\,
      CO(1) => \minusOp_carry__3_n_2\,
      CO(0) => \minusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^sensor2_raw\(20 downto 17),
      O(3) => \minusOp_carry__3_n_4\,
      O(2) => \minusOp_carry__3_n_5\,
      O(1) => \minusOp_carry__3_n_6\,
      O(0) => \minusOp_carry__3_n_7\,
      S(3) => \minusOp_carry__3_i_1_n_0\,
      S(2) => \minusOp_carry__3_i_2_n_0\,
      S(1) => \minusOp_carry__3_i_3_n_0\,
      S(0) => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(20),
      O => \minusOp_carry__3_i_1_n_0\
    );
\minusOp_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(19),
      O => \minusOp_carry__3_i_2_n_0\
    );
\minusOp_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(18),
      O => \minusOp_carry__3_i_3_n_0\
    );
\minusOp_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(17),
      O => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__3_n_0\,
      CO(3) => \minusOp_carry__4_n_0\,
      CO(2) => \minusOp_carry__4_n_1\,
      CO(1) => \minusOp_carry__4_n_2\,
      CO(0) => \minusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^sensor2_raw\(24 downto 21),
      O(3) => \minusOp_carry__4_n_4\,
      O(2) => \minusOp_carry__4_n_5\,
      O(1) => \minusOp_carry__4_n_6\,
      O(0) => \minusOp_carry__4_n_7\,
      S(3) => \minusOp_carry__4_i_1_n_0\,
      S(2) => \minusOp_carry__4_i_2_n_0\,
      S(1) => \minusOp_carry__4_i_3_n_0\,
      S(0) => \minusOp_carry__4_i_4_n_0\
    );
\minusOp_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(24),
      O => \minusOp_carry__4_i_1_n_0\
    );
\minusOp_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(23),
      O => \minusOp_carry__4_i_2_n_0\
    );
\minusOp_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(22),
      O => \minusOp_carry__4_i_3_n_0\
    );
\minusOp_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(21),
      O => \minusOp_carry__4_i_4_n_0\
    );
\minusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__4_n_0\,
      CO(3) => \minusOp_carry__5_n_0\,
      CO(2) => \minusOp_carry__5_n_1\,
      CO(1) => \minusOp_carry__5_n_2\,
      CO(0) => \minusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^sensor2_raw\(28 downto 25),
      O(3) => \minusOp_carry__5_n_4\,
      O(2) => \minusOp_carry__5_n_5\,
      O(1) => \minusOp_carry__5_n_6\,
      O(0) => \minusOp_carry__5_n_7\,
      S(3) => \minusOp_carry__5_i_1_n_0\,
      S(2) => \minusOp_carry__5_i_2_n_0\,
      S(1) => \minusOp_carry__5_i_3_n_0\,
      S(0) => \minusOp_carry__5_i_4_n_0\
    );
\minusOp_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(28),
      O => \minusOp_carry__5_i_1_n_0\
    );
\minusOp_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(27),
      O => \minusOp_carry__5_i_2_n_0\
    );
\minusOp_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(26),
      O => \minusOp_carry__5_i_3_n_0\
    );
\minusOp_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(25),
      O => \minusOp_carry__5_i_4_n_0\
    );
\minusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__5_n_0\,
      CO(3 downto 2) => \NLW_minusOp_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_carry__6_n_2\,
      CO(0) => \minusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^sensor2_raw\(30 downto 29),
      O(3) => \NLW_minusOp_carry__6_O_UNCONNECTED\(3),
      O(2) => \minusOp_carry__6_n_5\,
      O(1) => \minusOp_carry__6_n_6\,
      O(0) => \minusOp_carry__6_n_7\,
      S(3) => '0',
      S(2) => \minusOp_carry__6_i_1_n_0\,
      S(1) => \minusOp_carry__6_i_2_n_0\,
      S(0) => \minusOp_carry__6_i_3_n_0\
    );
\minusOp_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(31),
      O => \minusOp_carry__6_i_1_n_0\
    );
\minusOp_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(30),
      O => \minusOp_carry__6_i_2_n_0\
    );
\minusOp_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(29),
      O => \minusOp_carry__6_i_3_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(1),
      O => minusOp_carry_i_1_n_0
    );
\minusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i__carry_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry_n_3\,
      CYINIT => \^sensor1_raw\(0),
      DI(3 downto 1) => B"000",
      DI(0) => \^sensor1_raw\(1),
      O(3 downto 0) => minusOp(4 downto 1),
      S(3 downto 1) => \^sensor1_raw\(4 downto 2),
      S(0) => \i__carry_i_1_n_0\
    );
\minusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \^sensor1_raw\(8 downto 6),
      DI(0) => '0',
      O(3 downto 0) => minusOp(8 downto 5),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \^sensor1_raw\(5)
    );
\minusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^sensor1_raw\(12 downto 9),
      O(3 downto 0) => minusOp(12 downto 9),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^sensor1_raw\(16 downto 13),
      O(3 downto 0) => minusOp(16 downto 13),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__3_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__3_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^sensor1_raw\(20 downto 17),
      O(3 downto 0) => minusOp(20 downto 17),
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__3_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__4_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__4_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__4_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^sensor1_raw\(24 downto 21),
      O(3 downto 0) => minusOp(24 downto 21),
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__4_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__5_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__5_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__5_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^sensor1_raw\(28 downto 25),
      O(3 downto 0) => minusOp(28 downto 25),
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_inferred__0/i__carry__6_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^sensor1_raw\(30 downto 29),
      O(3) => \NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => minusOp(31 downto 29),
      S(3) => '0',
      S(2) => \i__carry__6_i_1_n_0\,
      S(1) => \i__carry__6_i_2_n_0\,
      S(0) => \i__carry__6_i_3_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \^sensor2_raw\(0),
      DI(3 downto 1) => \^sensor2_raw\(4 downto 2),
      DI(0) => '0',
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3) => plusOp_carry_i_1_n_0,
      S(2) => plusOp_carry_i_2_n_0,
      S(1) => plusOp_carry_i_3_n_0,
      S(0) => \^sensor2_raw\(1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^sensor2_raw\(5),
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3 downto 1) => \^sensor2_raw\(8 downto 6),
      S(0) => \plusOp_carry__0_i_1_n_0\
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(5),
      O => \plusOp_carry__0_i_1_n_0\
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
      O(3) => \plusOp_carry__1_n_4\,
      O(2) => \plusOp_carry__1_n_5\,
      O(1) => \plusOp_carry__1_n_6\,
      O(0) => \plusOp_carry__1_n_7\,
      S(3 downto 0) => \^sensor2_raw\(12 downto 9)
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
      O(3) => \plusOp_carry__2_n_4\,
      O(2) => \plusOp_carry__2_n_5\,
      O(1) => \plusOp_carry__2_n_6\,
      O(0) => \plusOp_carry__2_n_7\,
      S(3 downto 0) => \^sensor2_raw\(16 downto 13)
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
      O(3) => \plusOp_carry__3_n_4\,
      O(2) => \plusOp_carry__3_n_5\,
      O(1) => \plusOp_carry__3_n_6\,
      O(0) => \plusOp_carry__3_n_7\,
      S(3 downto 0) => \^sensor2_raw\(20 downto 17)
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
      O(3) => \plusOp_carry__4_n_4\,
      O(2) => \plusOp_carry__4_n_5\,
      O(1) => \plusOp_carry__4_n_6\,
      O(0) => \plusOp_carry__4_n_7\,
      S(3 downto 0) => \^sensor2_raw\(24 downto 21)
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
      O(3) => \plusOp_carry__5_n_4\,
      O(2) => \plusOp_carry__5_n_5\,
      O(1) => \plusOp_carry__5_n_6\,
      O(0) => \plusOp_carry__5_n_7\,
      S(3 downto 0) => \^sensor2_raw\(28 downto 25)
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
      O(2) => \plusOp_carry__6_n_5\,
      O(1) => \plusOp_carry__6_n_6\,
      O(0) => \plusOp_carry__6_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^sensor2_raw\(31 downto 29)
    );
plusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(4),
      O => plusOp_carry_i_1_n_0
    );
plusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(3),
      O => plusOp_carry_i_2_n_0
    );
plusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sensor2_raw\(2),
      O => plusOp_carry_i_3_n_0
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__0/i__carry_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry_n_3\,
      CYINIT => \^sensor1_raw\(0),
      DI(3 downto 1) => \^sensor1_raw\(4 downto 2),
      DI(0) => '0',
      O(3 downto 0) => plusOp(4 downto 1),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \^sensor1_raw\(1)
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^sensor1_raw\(5),
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 1) => \^sensor1_raw\(8 downto 6),
      S(0) => \i__carry__0_i_1__0_n_0\
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => \^sensor1_raw\(12 downto 9)
    );
\plusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => \^sensor1_raw\(16 downto 13)
    );
\plusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__3_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(20 downto 17),
      S(3 downto 0) => \^sensor1_raw\(20 downto 17)
    );
\plusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__4_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__4_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__4_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(24 downto 21),
      S(3 downto 0) => \^sensor1_raw\(24 downto 21)
    );
\plusOp_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__4_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__5_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__5_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__5_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(28 downto 25),
      S(3 downto 0) => \^sensor1_raw\(28 downto 25)
    );
\plusOp_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_inferred__0/i__carry__6_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \^sensor1_raw\(31 downto 29)
    );
sensor1_raw0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sensor1_raw0_carry_n_0,
      CO(2) => sensor1_raw0_carry_n_1,
      CO(1) => sensor1_raw0_carry_n_2,
      CO(0) => sensor1_raw0_carry_n_3,
      CYINIT => '1',
      DI(3) => sensor1_raw0_carry_i_1_n_0,
      DI(2) => sensor1_raw0_carry_i_2_n_0,
      DI(1) => sensor1_raw0_carry_i_3_n_0,
      DI(0) => sensor1_raw0_carry_i_4_n_0,
      O(3 downto 0) => NLW_sensor1_raw0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sensor1_raw0_carry_i_5_n_0,
      S(2) => sensor1_raw0_carry_i_6_n_0,
      S(1) => sensor1_raw0_carry_i_7_n_0,
      S(0) => sensor1_raw0_carry_i_8_n_0
    );
\sensor1_raw0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sensor1_raw0_carry_n_0,
      CO(3) => \sensor1_raw0_carry__0_n_0\,
      CO(2) => \sensor1_raw0_carry__0_n_1\,
      CO(1) => \sensor1_raw0_carry__0_n_2\,
      CO(0) => \sensor1_raw0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \sensor1_raw0_carry__0_i_1_n_0\,
      DI(1) => \sensor1_raw0_carry__0_i_2_n_0\,
      DI(0) => ticks_reg(9),
      O(3 downto 0) => \NLW_sensor1_raw0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \sensor1_raw0_carry__0_i_3_n_0\,
      S(2) => \sensor1_raw0_carry__0_i_4_n_0\,
      S(1) => \sensor1_raw0_carry__0_i_5_n_0\,
      S(0) => \sensor1_raw0_carry__0_i_6_n_0\
    );
\sensor1_raw0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ticks_reg(12),
      I1 => ticks_reg(13),
      O => \sensor1_raw0_carry__0_i_1_n_0\
    );
\sensor1_raw0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ticks_reg(10),
      I1 => ticks_reg(11),
      O => \sensor1_raw0_carry__0_i_2_n_0\
    );
\sensor1_raw0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ticks_reg(14),
      I1 => ticks_reg(15),
      O => \sensor1_raw0_carry__0_i_3_n_0\
    );
\sensor1_raw0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ticks_reg(13),
      I1 => ticks_reg(12),
      O => \sensor1_raw0_carry__0_i_4_n_0\
    );
\sensor1_raw0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks_reg(10),
      I1 => ticks_reg(11),
      O => \sensor1_raw0_carry__0_i_5_n_0\
    );
\sensor1_raw0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ticks_reg(8),
      I1 => ticks_reg(9),
      O => \sensor1_raw0_carry__0_i_6_n_0\
    );
\sensor1_raw0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sensor1_raw0_carry__0_n_0\,
      CO(3) => \sensor1_raw0_carry__1_n_0\,
      CO(2) => \sensor1_raw0_carry__1_n_1\,
      CO(1) => \sensor1_raw0_carry__1_n_2\,
      CO(0) => \sensor1_raw0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => ticks_reg(19),
      DI(0) => ticks_reg(17),
      O(3 downto 0) => \NLW_sensor1_raw0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \sensor1_raw0_carry__1_i_1_n_0\,
      S(2) => \sensor1_raw0_carry__1_i_2_n_0\,
      S(1) => \sensor1_raw0_carry__1_i_3_n_0\,
      S(0) => \sensor1_raw0_carry__1_i_4_n_0\
    );
\sensor1_raw0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ticks_reg(22),
      I1 => ticks_reg(23),
      O => \sensor1_raw0_carry__1_i_1_n_0\
    );
\sensor1_raw0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ticks_reg(20),
      I1 => ticks_reg(21),
      O => \sensor1_raw0_carry__1_i_2_n_0\
    );
\sensor1_raw0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ticks_reg(18),
      I1 => ticks_reg(19),
      O => \sensor1_raw0_carry__1_i_3_n_0\
    );
\sensor1_raw0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ticks_reg(16),
      I1 => ticks_reg(17),
      O => \sensor1_raw0_carry__1_i_4_n_0\
    );
\sensor1_raw0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sensor1_raw0_carry__1_n_0\,
      CO(3) => \sensor1_raw0_carry__2_n_0\,
      CO(2) => \sensor1_raw0_carry__2_n_1\,
      CO(1) => \sensor1_raw0_carry__2_n_2\,
      CO(0) => \sensor1_raw0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \sensor1_raw0_carry__2_i_1_n_0\,
      DI(2) => \sensor1_raw0_carry__2_i_2_n_0\,
      DI(1) => ticks_reg(27),
      DI(0) => ticks_reg(25),
      O(3 downto 0) => \NLW_sensor1_raw0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \sensor1_raw0_carry__2_i_3_n_0\,
      S(2) => \sensor1_raw0_carry__2_i_4_n_0\,
      S(1) => \sensor1_raw0_carry__2_i_5_n_0\,
      S(0) => \sensor1_raw0_carry__2_i_6_n_0\
    );
\sensor1_raw0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ticks_reg(30),
      I1 => ticks_reg(31),
      O => \sensor1_raw0_carry__2_i_1_n_0\
    );
\sensor1_raw0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ticks_reg(28),
      I1 => ticks_reg(29),
      O => \sensor1_raw0_carry__2_i_2_n_0\
    );
\sensor1_raw0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks_reg(30),
      I1 => ticks_reg(31),
      O => \sensor1_raw0_carry__2_i_3_n_0\
    );
\sensor1_raw0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks_reg(28),
      I1 => ticks_reg(29),
      O => \sensor1_raw0_carry__2_i_4_n_0\
    );
\sensor1_raw0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ticks_reg(26),
      I1 => ticks_reg(27),
      O => \sensor1_raw0_carry__2_i_5_n_0\
    );
\sensor1_raw0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ticks_reg(24),
      I1 => ticks_reg(25),
      O => \sensor1_raw0_carry__2_i_6_n_0\
    );
sensor1_raw0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ticks_reg(6),
      I1 => ticks_reg(7),
      O => sensor1_raw0_carry_i_1_n_0
    );
sensor1_raw0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ticks_reg(4),
      I1 => ticks_reg(5),
      O => sensor1_raw0_carry_i_2_n_0
    );
sensor1_raw0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ticks_reg(2),
      I1 => ticks_reg(3),
      O => sensor1_raw0_carry_i_3_n_0
    );
sensor1_raw0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ticks_reg(0),
      I1 => ticks_reg(1),
      O => sensor1_raw0_carry_i_4_n_0
    );
sensor1_raw0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks_reg(6),
      I1 => ticks_reg(7),
      O => sensor1_raw0_carry_i_5_n_0
    );
sensor1_raw0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks_reg(4),
      I1 => ticks_reg(5),
      O => sensor1_raw0_carry_i_6_n_0
    );
sensor1_raw0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks_reg(2),
      I1 => ticks_reg(3),
      O => sensor1_raw0_carry_i_7_n_0
    );
sensor1_raw0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks_reg(0),
      I1 => ticks_reg(1),
      O => sensor1_raw0_carry_i_8_n_0
    );
\sensor1_raw[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^sensor1_raw\(0),
      I1 => s00_axi_aresetn,
      I2 => \sensor1_raw[15]_i_2_n_0\,
      O => p_0_in(0)
    );
\sensor1_raw[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(10),
      I2 => plusOp(10),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(10)
    );
\sensor1_raw[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(11),
      I2 => plusOp(11),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(11)
    );
\sensor1_raw[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(12),
      I2 => plusOp(12),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(12)
    );
\sensor1_raw[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \sensor1_raw[14]_i_2_n_0\,
      I1 => minusOp(13),
      I2 => Q(0),
      I3 => plusOp(13),
      O => p_0_in(13)
    );
\sensor1_raw[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \sensor1_raw[14]_i_2_n_0\,
      I1 => minusOp(14),
      I2 => Q(0),
      I3 => plusOp(14),
      O => p_0_in(14)
    );
\sensor1_raw[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8FFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => \sensor1_raw[15]_i_6_n_0\,
      I2 => \sensor1_raw[15]_i_5_n_0\,
      I3 => \sensor1_raw[15]_i_4_n_0\,
      I4 => \sensor1_raw[15]_i_3_n_0\,
      I5 => s00_axi_aresetn,
      O => \sensor1_raw[14]_i_2_n_0\
    );
\sensor1_raw[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFC840"
    )
        port map (
      I0 => Q(0),
      I1 => s00_axi_aresetn,
      I2 => minusOp(15),
      I3 => plusOp(15),
      I4 => \sensor1_raw[15]_i_2_n_0\,
      O => p_0_in(15)
    );
\sensor1_raw[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => \sensor1_raw[15]_i_3_n_0\,
      I1 => \sensor1_raw[15]_i_4_n_0\,
      I2 => \sensor1_raw[15]_i_5_n_0\,
      I3 => \sensor1_raw[15]_i_6_n_0\,
      I4 => s00_axi_aresetn,
      I5 => Q(0),
      O => \sensor1_raw[15]_i_2_n_0\
    );
\sensor1_raw[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => plusOp(25),
      I1 => plusOp(24),
      I2 => plusOp(27),
      I3 => plusOp(26),
      O => \sensor1_raw[15]_i_3_n_0\
    );
\sensor1_raw[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => plusOp(29),
      I1 => plusOp(28),
      I2 => plusOp(31),
      I3 => plusOp(30),
      O => \sensor1_raw[15]_i_4_n_0\
    );
\sensor1_raw[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => plusOp(17),
      I1 => plusOp(16),
      I2 => plusOp(19),
      I3 => plusOp(18),
      O => \sensor1_raw[15]_i_5_n_0\
    );
\sensor1_raw[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => plusOp(21),
      I1 => plusOp(20),
      I2 => plusOp(23),
      I3 => plusOp(22),
      O => \sensor1_raw[15]_i_6_n_0\
    );
\sensor1_raw[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(1),
      I2 => plusOp(1),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(1)
    );
\sensor1_raw[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(2),
      I2 => plusOp(2),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(2)
    );
\sensor1_raw[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \sensor1_raw0_carry__2_n_0\,
      I1 => Q(0),
      I2 => s00_axi_aresetn,
      O => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(3),
      I2 => plusOp(3),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(3)
    );
\sensor1_raw[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(4),
      I2 => plusOp(4),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(4)
    );
\sensor1_raw[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(5),
      I2 => plusOp(5),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(5)
    );
\sensor1_raw[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(6),
      I2 => plusOp(6),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(6)
    );
\sensor1_raw[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(7),
      I2 => plusOp(7),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(7)
    );
\sensor1_raw[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(8),
      I2 => plusOp(8),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(8)
    );
\sensor1_raw[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor1_raw[15]_i_2_n_0\,
      I1 => minusOp(9),
      I2 => plusOp(9),
      I3 => Q(0),
      I4 => s00_axi_aresetn,
      O => p_0_in(9)
    );
\sensor1_raw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(0),
      Q => \^sensor1_raw\(0),
      R => '0'
    );
\sensor1_raw_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(10),
      Q => \^sensor1_raw\(10),
      R => '0'
    );
\sensor1_raw_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(11),
      Q => \^sensor1_raw\(11),
      R => '0'
    );
\sensor1_raw_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(12),
      Q => \^sensor1_raw\(12),
      R => '0'
    );
\sensor1_raw_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(13),
      Q => \^sensor1_raw\(13),
      R => '0'
    );
\sensor1_raw_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(14),
      Q => \^sensor1_raw\(14),
      R => '0'
    );
\sensor1_raw_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(15),
      Q => \^sensor1_raw\(15),
      R => '0'
    );
\sensor1_raw_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(16),
      Q => \^sensor1_raw\(16),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(17),
      Q => \^sensor1_raw\(17),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(18),
      Q => \^sensor1_raw\(18),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(19),
      Q => \^sensor1_raw\(19),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(1),
      Q => \^sensor1_raw\(1),
      R => '0'
    );
\sensor1_raw_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(20),
      Q => \^sensor1_raw\(20),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(21),
      Q => \^sensor1_raw\(21),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(22),
      Q => \^sensor1_raw\(22),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(23),
      Q => \^sensor1_raw\(23),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(24),
      Q => \^sensor1_raw\(24),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(25),
      Q => \^sensor1_raw\(25),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(26),
      Q => \^sensor1_raw\(26),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(27),
      Q => \^sensor1_raw\(27),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(28),
      Q => \^sensor1_raw\(28),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(29),
      Q => \^sensor1_raw\(29),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(2),
      Q => \^sensor1_raw\(2),
      R => '0'
    );
\sensor1_raw_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(30),
      Q => \^sensor1_raw\(30),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => minusOp(31),
      Q => \^sensor1_raw\(31),
      R => \sensor1_raw[31]_i_1_n_0\
    );
\sensor1_raw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(3),
      Q => \^sensor1_raw\(3),
      R => '0'
    );
\sensor1_raw_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(4),
      Q => \^sensor1_raw\(4),
      R => '0'
    );
\sensor1_raw_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(5),
      Q => \^sensor1_raw\(5),
      R => '0'
    );
\sensor1_raw_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(6),
      Q => \^sensor1_raw\(6),
      R => '0'
    );
\sensor1_raw_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(7),
      Q => \^sensor1_raw\(7),
      R => '0'
    );
\sensor1_raw_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(8),
      Q => \^sensor1_raw\(8),
      R => '0'
    );
\sensor1_raw_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => p_0_in(9),
      Q => \^sensor1_raw\(9),
      R => '0'
    );
\sensor2_raw[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^sensor2_raw\(0),
      I1 => s00_axi_aresetn,
      I2 => \sensor2_raw[15]_i_3_n_0\,
      O => \sensor2_raw[0]_i_1_n_0\
    );
\sensor2_raw[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => \minusOp_carry__1_n_6\,
      I2 => \plusOp_carry__1_n_6\,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[10]_i_1_n_0\
    );
\sensor2_raw[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => \minusOp_carry__1_n_5\,
      I2 => \plusOp_carry__1_n_5\,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[11]_i_1_n_0\
    );
\sensor2_raw[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => \minusOp_carry__1_n_4\,
      I2 => \plusOp_carry__1_n_4\,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[12]_i_1_n_0\
    );
\sensor2_raw[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAEE"
    )
        port map (
      I0 => \sensor2_raw[14]_i_2_n_0\,
      I1 => \minusOp_carry__2_n_7\,
      I2 => \plusOp_carry__2_n_7\,
      I3 => Q(1),
      O => \sensor2_raw[13]_i_1_n_0\
    );
\sensor2_raw[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAEE"
    )
        port map (
      I0 => \sensor2_raw[14]_i_2_n_0\,
      I1 => \minusOp_carry__2_n_6\,
      I2 => \plusOp_carry__2_n_6\,
      I3 => Q(1),
      O => \sensor2_raw[14]_i_1_n_0\
    );
\sensor2_raw[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8FFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => \sensor2_raw[15]_i_7_n_0\,
      I2 => \sensor2_raw[15]_i_6_n_0\,
      I3 => \sensor2_raw[15]_i_5_n_0\,
      I4 => \sensor2_raw[15]_i_4_n_0\,
      I5 => s00_axi_aresetn,
      O => \sensor2_raw[14]_i_2_n_0\
    );
\sensor2_raw[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \sensor1_raw0_carry__2_n_0\,
      I1 => s00_axi_aresetn,
      O => \sensor2_raw[15]_i_1_n_0\
    );
\sensor2_raw[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFC840"
    )
        port map (
      I0 => Q(1),
      I1 => s00_axi_aresetn,
      I2 => \minusOp_carry__2_n_5\,
      I3 => \plusOp_carry__2_n_5\,
      I4 => \sensor2_raw[15]_i_3_n_0\,
      O => \sensor2_raw[15]_i_2_n_0\
    );
\sensor2_raw[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => \sensor2_raw[15]_i_4_n_0\,
      I1 => \sensor2_raw[15]_i_5_n_0\,
      I2 => \sensor2_raw[15]_i_6_n_0\,
      I3 => \sensor2_raw[15]_i_7_n_0\,
      I4 => s00_axi_aresetn,
      I5 => Q(1),
      O => \sensor2_raw[15]_i_3_n_0\
    );
\sensor2_raw[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \plusOp_carry__5_n_7\,
      I1 => \plusOp_carry__4_n_4\,
      I2 => \plusOp_carry__5_n_5\,
      I3 => \plusOp_carry__5_n_6\,
      O => \sensor2_raw[15]_i_4_n_0\
    );
\sensor2_raw[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \plusOp_carry__6_n_7\,
      I1 => \plusOp_carry__5_n_4\,
      I2 => \plusOp_carry__6_n_5\,
      I3 => \plusOp_carry__6_n_6\,
      O => \sensor2_raw[15]_i_5_n_0\
    );
\sensor2_raw[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \plusOp_carry__3_n_7\,
      I1 => \plusOp_carry__2_n_4\,
      I2 => \plusOp_carry__3_n_5\,
      I3 => \plusOp_carry__3_n_6\,
      O => \sensor2_raw[15]_i_6_n_0\
    );
\sensor2_raw[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \plusOp_carry__4_n_7\,
      I1 => \plusOp_carry__3_n_4\,
      I2 => \plusOp_carry__4_n_5\,
      I3 => \plusOp_carry__4_n_6\,
      O => \sensor2_raw[15]_i_7_n_0\
    );
\sensor2_raw[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => minusOp_carry_n_7,
      I2 => plusOp_carry_n_7,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[1]_i_1_n_0\
    );
\sensor2_raw[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => minusOp_carry_n_6,
      I2 => plusOp_carry_n_6,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[2]_i_1_n_0\
    );
\sensor2_raw[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \sensor1_raw0_carry__2_n_0\,
      I1 => Q(1),
      I2 => s00_axi_aresetn,
      O => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => minusOp_carry_n_5,
      I2 => plusOp_carry_n_5,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[3]_i_1_n_0\
    );
\sensor2_raw[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => minusOp_carry_n_4,
      I2 => plusOp_carry_n_4,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[4]_i_1_n_0\
    );
\sensor2_raw[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => \minusOp_carry__0_n_7\,
      I2 => \plusOp_carry__0_n_7\,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[5]_i_1_n_0\
    );
\sensor2_raw[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => \minusOp_carry__0_n_6\,
      I2 => \plusOp_carry__0_n_6\,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[6]_i_1_n_0\
    );
\sensor2_raw[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => \minusOp_carry__0_n_5\,
      I2 => \plusOp_carry__0_n_5\,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[7]_i_1_n_0\
    );
\sensor2_raw[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => \minusOp_carry__0_n_4\,
      I2 => \plusOp_carry__0_n_4\,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[8]_i_1_n_0\
    );
\sensor2_raw[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEEAAAA"
    )
        port map (
      I0 => \sensor2_raw[15]_i_3_n_0\,
      I1 => \minusOp_carry__1_n_7\,
      I2 => \plusOp_carry__1_n_7\,
      I3 => Q(1),
      I4 => s00_axi_aresetn,
      O => \sensor2_raw[9]_i_1_n_0\
    );
\sensor2_raw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[0]_i_1_n_0\,
      Q => \^sensor2_raw\(0),
      R => '0'
    );
\sensor2_raw_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[10]_i_1_n_0\,
      Q => \^sensor2_raw\(10),
      R => '0'
    );
\sensor2_raw_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[11]_i_1_n_0\,
      Q => \^sensor2_raw\(11),
      R => '0'
    );
\sensor2_raw_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[12]_i_1_n_0\,
      Q => \^sensor2_raw\(12),
      R => '0'
    );
\sensor2_raw_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[13]_i_1_n_0\,
      Q => \^sensor2_raw\(13),
      R => '0'
    );
\sensor2_raw_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[14]_i_1_n_0\,
      Q => \^sensor2_raw\(14),
      R => '0'
    );
\sensor2_raw_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[15]_i_2_n_0\,
      Q => \^sensor2_raw\(15),
      R => '0'
    );
\sensor2_raw_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__2_n_4\,
      Q => \^sensor2_raw\(16),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__3_n_7\,
      Q => \^sensor2_raw\(17),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__3_n_6\,
      Q => \^sensor2_raw\(18),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__3_n_5\,
      Q => \^sensor2_raw\(19),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[1]_i_1_n_0\,
      Q => \^sensor2_raw\(1),
      R => '0'
    );
\sensor2_raw_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__3_n_4\,
      Q => \^sensor2_raw\(20),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__4_n_7\,
      Q => \^sensor2_raw\(21),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__4_n_6\,
      Q => \^sensor2_raw\(22),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__4_n_5\,
      Q => \^sensor2_raw\(23),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__4_n_4\,
      Q => \^sensor2_raw\(24),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__5_n_7\,
      Q => \^sensor2_raw\(25),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__5_n_6\,
      Q => \^sensor2_raw\(26),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__5_n_5\,
      Q => \^sensor2_raw\(27),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__5_n_4\,
      Q => \^sensor2_raw\(28),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__6_n_7\,
      Q => \^sensor2_raw\(29),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[2]_i_1_n_0\,
      Q => \^sensor2_raw\(2),
      R => '0'
    );
\sensor2_raw_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__6_n_6\,
      Q => \^sensor2_raw\(30),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor1_raw0_carry__2_n_0\,
      D => \minusOp_carry__6_n_5\,
      Q => \^sensor2_raw\(31),
      R => \sensor2_raw[31]_i_1_n_0\
    );
\sensor2_raw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[3]_i_1_n_0\,
      Q => \^sensor2_raw\(3),
      R => '0'
    );
\sensor2_raw_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[4]_i_1_n_0\,
      Q => \^sensor2_raw\(4),
      R => '0'
    );
\sensor2_raw_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[5]_i_1_n_0\,
      Q => \^sensor2_raw\(5),
      R => '0'
    );
\sensor2_raw_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[6]_i_1_n_0\,
      Q => \^sensor2_raw\(6),
      R => '0'
    );
\sensor2_raw_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[7]_i_1_n_0\,
      Q => \^sensor2_raw\(7),
      R => '0'
    );
\sensor2_raw_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[8]_i_1_n_0\,
      Q => \^sensor2_raw\(8),
      R => '0'
    );
\sensor2_raw_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \sensor2_raw[15]_i_1_n_0\,
      D => \sensor2_raw[9]_i_1_n_0\,
      Q => \^sensor2_raw\(9),
      R => '0'
    );
\ticks[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ticks_reg(0),
      O => \ticks[0]_i_2_n_0\
    );
\ticks_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[0]_i_1_n_7\,
      Q => ticks_reg(0),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ticks_reg[0]_i_1_n_0\,
      CO(2) => \ticks_reg[0]_i_1_n_1\,
      CO(1) => \ticks_reg[0]_i_1_n_2\,
      CO(0) => \ticks_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ticks_reg[0]_i_1_n_4\,
      O(2) => \ticks_reg[0]_i_1_n_5\,
      O(1) => \ticks_reg[0]_i_1_n_6\,
      O(0) => \ticks_reg[0]_i_1_n_7\,
      S(3 downto 1) => ticks_reg(3 downto 1),
      S(0) => \ticks[0]_i_2_n_0\
    );
\ticks_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[8]_i_1_n_5\,
      Q => ticks_reg(10),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[8]_i_1_n_4\,
      Q => ticks_reg(11),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[12]_i_1_n_7\,
      Q => ticks_reg(12),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[8]_i_1_n_0\,
      CO(3) => \ticks_reg[12]_i_1_n_0\,
      CO(2) => \ticks_reg[12]_i_1_n_1\,
      CO(1) => \ticks_reg[12]_i_1_n_2\,
      CO(0) => \ticks_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[12]_i_1_n_4\,
      O(2) => \ticks_reg[12]_i_1_n_5\,
      O(1) => \ticks_reg[12]_i_1_n_6\,
      O(0) => \ticks_reg[12]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(15 downto 12)
    );
\ticks_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[12]_i_1_n_6\,
      Q => ticks_reg(13),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[12]_i_1_n_5\,
      Q => ticks_reg(14),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[12]_i_1_n_4\,
      Q => ticks_reg(15),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[16]_i_1_n_7\,
      Q => ticks_reg(16),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[12]_i_1_n_0\,
      CO(3) => \ticks_reg[16]_i_1_n_0\,
      CO(2) => \ticks_reg[16]_i_1_n_1\,
      CO(1) => \ticks_reg[16]_i_1_n_2\,
      CO(0) => \ticks_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[16]_i_1_n_4\,
      O(2) => \ticks_reg[16]_i_1_n_5\,
      O(1) => \ticks_reg[16]_i_1_n_6\,
      O(0) => \ticks_reg[16]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(19 downto 16)
    );
\ticks_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[16]_i_1_n_6\,
      Q => ticks_reg(17),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[16]_i_1_n_5\,
      Q => ticks_reg(18),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[16]_i_1_n_4\,
      Q => ticks_reg(19),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[0]_i_1_n_6\,
      Q => ticks_reg(1),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[20]_i_1_n_7\,
      Q => ticks_reg(20),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[16]_i_1_n_0\,
      CO(3) => \ticks_reg[20]_i_1_n_0\,
      CO(2) => \ticks_reg[20]_i_1_n_1\,
      CO(1) => \ticks_reg[20]_i_1_n_2\,
      CO(0) => \ticks_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[20]_i_1_n_4\,
      O(2) => \ticks_reg[20]_i_1_n_5\,
      O(1) => \ticks_reg[20]_i_1_n_6\,
      O(0) => \ticks_reg[20]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(23 downto 20)
    );
\ticks_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[20]_i_1_n_6\,
      Q => ticks_reg(21),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[20]_i_1_n_5\,
      Q => ticks_reg(22),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[20]_i_1_n_4\,
      Q => ticks_reg(23),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[24]_i_1_n_7\,
      Q => ticks_reg(24),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[20]_i_1_n_0\,
      CO(3) => \ticks_reg[24]_i_1_n_0\,
      CO(2) => \ticks_reg[24]_i_1_n_1\,
      CO(1) => \ticks_reg[24]_i_1_n_2\,
      CO(0) => \ticks_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[24]_i_1_n_4\,
      O(2) => \ticks_reg[24]_i_1_n_5\,
      O(1) => \ticks_reg[24]_i_1_n_6\,
      O(0) => \ticks_reg[24]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(27 downto 24)
    );
\ticks_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[24]_i_1_n_6\,
      Q => ticks_reg(25),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[24]_i_1_n_5\,
      Q => ticks_reg(26),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[24]_i_1_n_4\,
      Q => ticks_reg(27),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[28]_i_1_n_7\,
      Q => ticks_reg(28),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[24]_i_1_n_0\,
      CO(3) => \NLW_ticks_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ticks_reg[28]_i_1_n_1\,
      CO(1) => \ticks_reg[28]_i_1_n_2\,
      CO(0) => \ticks_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[28]_i_1_n_4\,
      O(2) => \ticks_reg[28]_i_1_n_5\,
      O(1) => \ticks_reg[28]_i_1_n_6\,
      O(0) => \ticks_reg[28]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(31 downto 28)
    );
\ticks_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[28]_i_1_n_6\,
      Q => ticks_reg(29),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[0]_i_1_n_5\,
      Q => ticks_reg(2),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[28]_i_1_n_5\,
      Q => ticks_reg(30),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[28]_i_1_n_4\,
      Q => ticks_reg(31),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[0]_i_1_n_4\,
      Q => ticks_reg(3),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[4]_i_1_n_7\,
      Q => ticks_reg(4),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[0]_i_1_n_0\,
      CO(3) => \ticks_reg[4]_i_1_n_0\,
      CO(2) => \ticks_reg[4]_i_1_n_1\,
      CO(1) => \ticks_reg[4]_i_1_n_2\,
      CO(0) => \ticks_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[4]_i_1_n_4\,
      O(2) => \ticks_reg[4]_i_1_n_5\,
      O(1) => \ticks_reg[4]_i_1_n_6\,
      O(0) => \ticks_reg[4]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(7 downto 4)
    );
\ticks_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[4]_i_1_n_6\,
      Q => ticks_reg(5),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[4]_i_1_n_5\,
      Q => ticks_reg(6),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[4]_i_1_n_4\,
      Q => ticks_reg(7),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[8]_i_1_n_7\,
      Q => ticks_reg(8),
      R => \sensor2_raw[15]_i_1_n_0\
    );
\ticks_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ticks_reg[4]_i_1_n_0\,
      CO(3) => \ticks_reg[8]_i_1_n_0\,
      CO(2) => \ticks_reg[8]_i_1_n_1\,
      CO(1) => \ticks_reg[8]_i_1_n_2\,
      CO(0) => \ticks_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ticks_reg[8]_i_1_n_4\,
      O(2) => \ticks_reg[8]_i_1_n_5\,
      O(1) => \ticks_reg[8]_i_1_n_6\,
      O(0) => \ticks_reg[8]_i_1_n_7\,
      S(3 downto 0) => ticks_reg(11 downto 8)
    );
\ticks_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ticks_reg[8]_i_1_n_6\,
      Q => ticks_reg(9),
      R => \sensor2_raw[15]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_design_Temperature_Control_0_0_Temperature_Control_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sensor1_raw : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sensor2_raw : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_design_Temperature_Control_0_0_Temperature_Control_slave_lite_v1_0_S00_AXI : entity is "Temperature_Control_slave_lite_v1_0_S00_AXI";
end soc_design_Temperature_Control_0_0_Temperature_Control_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of soc_design_Temperature_Control_0_0_Temperature_Control_slave_lite_v1_0_S00_AXI is
  signal \FSM_onehot_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_2_n_0\ : STD_LOGIC;
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
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_write[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[0]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[1]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_write_reg[2]\ : label is "idle:001,wdata:100,waddr:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "idle:00,rdata:10,raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "idle:00,rdata:10,raddr:01";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_onehot_state_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7F7F000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I5 => axi_wready,
      O => \FSM_onehot_state_write[1]_i_1_n_0\
    );
\FSM_onehot_state_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080F00"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_write_reg_n_0_[1]\,
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
      INIT => X"FFFF7777F0000000"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => \^axi_arready_reg_0\,
      I3 => s00_axi_arvalid,
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
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_aresetn,
      I2 => state_read(0),
      I3 => \axi_araddr[3]_i_2_n_0\,
      I4 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_aresetn,
      I2 => state_read(0),
      I3 => \axi_araddr[3]_i_2_n_0\,
      I4 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(1),
      O => \axi_araddr[3]_i_2_n_0\
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
      INIT => X"FF55FFFF40554055"
    )
        port map (
      I0 => state_read(0),
      I1 => s00_axi_rready,
      I2 => \^axi_rvalid_reg_0\,
      I3 => state_read(1),
      I4 => s00_axi_arvalid,
      I5 => \^axi_arready_reg_0\,
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
      INIT => X"FAFFEAEAFFFFEAEA"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \FSM_onehot_state_write_reg_n_0_[1]\,
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
      INIT => X"FFFFFFFFABFF0000"
    )
        port map (
      I0 => axi_wready,
      I1 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I3 => s00_axi_bready,
      I4 => \^s00_axi_bvalid\,
      I5 => axi_bvalid_i_2_n_0,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => \FSM_onehot_state_write_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_write_reg_n_0_[1]\,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      O => axi_bvalid_i_2_n_0
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
      INIT => X"A2A2A2A2FAAAAAAA"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => state_read(0),
      I3 => \^axi_arready_reg_0\,
      I4 => s00_axi_arvalid,
      I5 => state_read(1),
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
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => sensor1_raw(0),
      I2 => sensor2_raw(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => sensor1_raw(10),
      I2 => sensor2_raw(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => sensor1_raw(11),
      I2 => sensor2_raw(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(12),
      I1 => sensor1_raw(12),
      I2 => sensor2_raw(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(13),
      I1 => sensor1_raw(13),
      I2 => sensor2_raw(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(14),
      I1 => sensor1_raw(14),
      I2 => sensor2_raw(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(15),
      I1 => sensor1_raw(15),
      I2 => sensor2_raw(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => sensor1_raw(16),
      I2 => sensor2_raw(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => sensor1_raw(17),
      I2 => sensor2_raw(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => sensor1_raw(18),
      I2 => sensor2_raw(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => sensor1_raw(19),
      I2 => sensor2_raw(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => sensor1_raw(1),
      I2 => sensor2_raw(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => sensor1_raw(20),
      I2 => sensor2_raw(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(21),
      I1 => sensor1_raw(21),
      I2 => sensor2_raw(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(22),
      I1 => sensor1_raw(22),
      I2 => sensor2_raw(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => sensor1_raw(23),
      I2 => sensor2_raw(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => sensor1_raw(24),
      I2 => sensor2_raw(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(25),
      I1 => sensor1_raw(25),
      I2 => sensor2_raw(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(26),
      I1 => sensor1_raw(26),
      I2 => sensor2_raw(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(27),
      I1 => sensor1_raw(27),
      I2 => sensor2_raw(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(28),
      I1 => sensor1_raw(28),
      I2 => sensor2_raw(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(29),
      I1 => sensor1_raw(29),
      I2 => sensor2_raw(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => sensor1_raw(2),
      I2 => sensor2_raw(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => sensor1_raw(30),
      I2 => sensor2_raw(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(31),
      I1 => sensor1_raw(31),
      I2 => sensor2_raw(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(3),
      I1 => sensor1_raw(3),
      I2 => sensor2_raw(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(4),
      I1 => sensor1_raw(4),
      I2 => sensor2_raw(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(5),
      I1 => sensor1_raw(5),
      I2 => sensor2_raw(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(6),
      I1 => sensor1_raw(6),
      I2 => sensor2_raw(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(7),
      I1 => sensor1_raw(7),
      I2 => sensor2_raw(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => sensor1_raw(8),
      I2 => sensor2_raw(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCF0AA"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => sensor1_raw(9),
      I2 => sensor2_raw(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => s00_axi_rdata(9)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010101F100000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awaddr(0),
      I5 => s00_axi_wvalid,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_design_Temperature_Control_0_0_Temperature_Control is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_design_Temperature_Control_0_0_Temperature_Control : entity is "Temperature_Control";
end soc_design_Temperature_Control_0_0_Temperature_Control;

architecture STRUCTURE of soc_design_Temperature_Control_0_0_Temperature_Control is
  signal sensor1_raw : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sensor2_raw : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
Temperature_Control_Module_inst: entity work.soc_design_Temperature_Control_0_0_Temperature_Control_Module
     port map (
      Q(1 downto 0) => slv_reg0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sensor1_raw(31 downto 0) => sensor1_raw(31 downto 0),
      sensor2_raw(31 downto 0) => sensor2_raw(31 downto 0)
    );
Temperature_Control_slave_lite_v1_0_S00_AXI_inst: entity work.soc_design_Temperature_Control_0_0_Temperature_Control_slave_lite_v1_0_S00_AXI
     port map (
      Q(1 downto 0) => slv_reg0(1 downto 0),
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
      s00_axi_wvalid => s00_axi_wvalid,
      sensor1_raw(31 downto 0) => sensor1_raw(31 downto 0),
      sensor2_raw(31 downto 0) => sensor2_raw(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_design_Temperature_Control_0_0 is
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
  attribute NotValidForBitStream of soc_design_Temperature_Control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_design_Temperature_Control_0_0 : entity is "soc_design_Temperature_Control_0_0,Temperature_Control,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of soc_design_Temperature_Control_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of soc_design_Temperature_Control_0_0 : entity is "Temperature_Control,Vivado 2025.1";
end soc_design_Temperature_Control_0_0;

architecture STRUCTURE of soc_design_Temperature_Control_0_0 is
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
U0: entity work.soc_design_Temperature_Control_0_0_Temperature_Control
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
