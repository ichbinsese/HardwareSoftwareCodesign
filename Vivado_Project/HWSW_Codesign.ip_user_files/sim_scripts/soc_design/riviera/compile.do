transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_21
vlib riviera/processing_system7_vip_v1_0_23
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_10
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_35

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 riviera/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 riviera/processing_system7_vip_v1_0_23
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_10 riviera/xlconstant_v1_1_10
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_35 riviera/axi_register_slice_v2_1_35

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_processing_system7_0_0/sim/soc_design_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/soc_design/ipshared/55d5/hdl/two_bit_adder_slave_lite_v1_0_S00_AXI.vhd" \
"../../../bd/soc_design/ipshared/55d5/hdl/two_bit_adder.vhd" \
"../../../bd/soc_design/ip/soc_design_two_bit_adder_0_2/sim/soc_design_two_bit_adder_0_2.vhd" \
"../../../bd/soc_design/ipshared/95dd/hdl/instruments_slave_lite_v1_0_S00_AXI.vhd" \
"../../../bd/soc_design/ipshared/95dd/hdl/instruments.vhd" \
"../../../bd/soc_design/ip/soc_design_instruments_0_2/sim/soc_design_instruments_0_2.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/sim/bd_81cb.v" \

vlog -work xlconstant_v1_1_10  -incr -v2k5 "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_0/sim/bd_81cb_one_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_1/sim/bd_81cb_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_2/sim/bd_81cb_arinsw_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_3/sim/bd_81cb_rinsw_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_4/sim/bd_81cb_awinsw_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_5/sim/bd_81cb_winsw_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_6/sim/bd_81cb_binsw_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_7/sim/bd_81cb_aroutsw_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_8/sim/bd_81cb_routsw_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_9/sim/bd_81cb_awoutsw_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_10/sim/bd_81cb_woutsw_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_11/sim/bd_81cb_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_12/sim/bd_81cb_arni_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_13/sim/bd_81cb_rni_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_14/sim/bd_81cb_awni_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_15/sim/bd_81cb_wni_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_16/sim/bd_81cb_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_17/sim/bd_81cb_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_18/sim/bd_81cb_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_19/sim/bd_81cb_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_20/sim/bd_81cb_s00a2s_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_21/sim/bd_81cb_sarn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_22/sim/bd_81cb_srn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_23/sim/bd_81cb_sawn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_24/sim/bd_81cb_swn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_25/sim/bd_81cb_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_26/sim/bd_81cb_m00s2a_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_27/sim/bd_81cb_m00arn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_28/sim/bd_81cb_m00rn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_29/sim/bd_81cb_m00awn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_30/sim/bd_81cb_m00wn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_31/sim/bd_81cb_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_32/sim/bd_81cb_m00e_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_33/sim/bd_81cb_m01s2a_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_34/sim/bd_81cb_m01arn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_35/sim/bd_81cb_m01rn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_36/sim/bd_81cb_m01awn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_37/sim/bd_81cb_m01wn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_38/sim/bd_81cb_m01bn_0.sv" \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/bd_0/ip/ip_39/sim/bd_81cb_m01e_0.sv" \

vlog -work axi_register_slice_v2_1_35  -incr -v2k5 "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/ip/soc_design_axi_smc_2/sim/soc_design_axi_smc_2.sv" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/soc_design/ip/soc_design_rst_ps7_0_100M_2/sim/soc_design_rst_ps7_0_100M_2.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/ec67/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/6cfa/hdl" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../HWSW_Codesign.gen/sources_1/bd/soc_design/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/soc_design/sim/soc_design.v" \

vlog -work xil_defaultlib \
"glbl.v"

