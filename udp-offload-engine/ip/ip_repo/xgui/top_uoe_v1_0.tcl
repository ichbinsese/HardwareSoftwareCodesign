# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "G_ACTIVE_RST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_ASYNC_RST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_ENABLE_ARP_MODULE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_ENABLE_ARP_TABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_ENABLE_PKT_DROP_EXT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_ENABLE_PKT_DROP_RAW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_ENABLE_PKT_DROP_UDP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_ENABLE_TESTENV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_MAC_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_ROUTER_FIFO_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_UOE_FREQ_KHZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "G_UOE_TDATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.G_ACTIVE_RST { PARAM_VALUE.G_ACTIVE_RST } {
	# Procedure called to update G_ACTIVE_RST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_ACTIVE_RST { PARAM_VALUE.G_ACTIVE_RST } {
	# Procedure called to validate G_ACTIVE_RST
	return true
}

proc update_PARAM_VALUE.G_ASYNC_RST { PARAM_VALUE.G_ASYNC_RST } {
	# Procedure called to update G_ASYNC_RST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_ASYNC_RST { PARAM_VALUE.G_ASYNC_RST } {
	# Procedure called to validate G_ASYNC_RST
	return true
}

proc update_PARAM_VALUE.G_ENABLE_ARP_MODULE { PARAM_VALUE.G_ENABLE_ARP_MODULE } {
	# Procedure called to update G_ENABLE_ARP_MODULE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_ENABLE_ARP_MODULE { PARAM_VALUE.G_ENABLE_ARP_MODULE } {
	# Procedure called to validate G_ENABLE_ARP_MODULE
	return true
}

proc update_PARAM_VALUE.G_ENABLE_ARP_TABLE { PARAM_VALUE.G_ENABLE_ARP_TABLE } {
	# Procedure called to update G_ENABLE_ARP_TABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_ENABLE_ARP_TABLE { PARAM_VALUE.G_ENABLE_ARP_TABLE } {
	# Procedure called to validate G_ENABLE_ARP_TABLE
	return true
}

proc update_PARAM_VALUE.G_ENABLE_PKT_DROP_EXT { PARAM_VALUE.G_ENABLE_PKT_DROP_EXT } {
	# Procedure called to update G_ENABLE_PKT_DROP_EXT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_ENABLE_PKT_DROP_EXT { PARAM_VALUE.G_ENABLE_PKT_DROP_EXT } {
	# Procedure called to validate G_ENABLE_PKT_DROP_EXT
	return true
}

proc update_PARAM_VALUE.G_ENABLE_PKT_DROP_RAW { PARAM_VALUE.G_ENABLE_PKT_DROP_RAW } {
	# Procedure called to update G_ENABLE_PKT_DROP_RAW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_ENABLE_PKT_DROP_RAW { PARAM_VALUE.G_ENABLE_PKT_DROP_RAW } {
	# Procedure called to validate G_ENABLE_PKT_DROP_RAW
	return true
}

proc update_PARAM_VALUE.G_ENABLE_PKT_DROP_UDP { PARAM_VALUE.G_ENABLE_PKT_DROP_UDP } {
	# Procedure called to update G_ENABLE_PKT_DROP_UDP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_ENABLE_PKT_DROP_UDP { PARAM_VALUE.G_ENABLE_PKT_DROP_UDP } {
	# Procedure called to validate G_ENABLE_PKT_DROP_UDP
	return true
}

proc update_PARAM_VALUE.G_ENABLE_TESTENV { PARAM_VALUE.G_ENABLE_TESTENV } {
	# Procedure called to update G_ENABLE_TESTENV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_ENABLE_TESTENV { PARAM_VALUE.G_ENABLE_TESTENV } {
	# Procedure called to validate G_ENABLE_TESTENV
	return true
}

proc update_PARAM_VALUE.G_MAC_TDATA_WIDTH { PARAM_VALUE.G_MAC_TDATA_WIDTH } {
	# Procedure called to update G_MAC_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_MAC_TDATA_WIDTH { PARAM_VALUE.G_MAC_TDATA_WIDTH } {
	# Procedure called to validate G_MAC_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.G_ROUTER_FIFO_DEPTH { PARAM_VALUE.G_ROUTER_FIFO_DEPTH } {
	# Procedure called to update G_ROUTER_FIFO_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_ROUTER_FIFO_DEPTH { PARAM_VALUE.G_ROUTER_FIFO_DEPTH } {
	# Procedure called to validate G_ROUTER_FIFO_DEPTH
	return true
}

proc update_PARAM_VALUE.G_UOE_FREQ_KHZ { PARAM_VALUE.G_UOE_FREQ_KHZ } {
	# Procedure called to update G_UOE_FREQ_KHZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_UOE_FREQ_KHZ { PARAM_VALUE.G_UOE_FREQ_KHZ } {
	# Procedure called to validate G_UOE_FREQ_KHZ
	return true
}

proc update_PARAM_VALUE.G_UOE_TDATA_WIDTH { PARAM_VALUE.G_UOE_TDATA_WIDTH } {
	# Procedure called to update G_UOE_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_UOE_TDATA_WIDTH { PARAM_VALUE.G_UOE_TDATA_WIDTH } {
	# Procedure called to validate G_UOE_TDATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.G_ACTIVE_RST { MODELPARAM_VALUE.G_ACTIVE_RST PARAM_VALUE.G_ACTIVE_RST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_ACTIVE_RST}] ${MODELPARAM_VALUE.G_ACTIVE_RST}
}

proc update_MODELPARAM_VALUE.G_ASYNC_RST { MODELPARAM_VALUE.G_ASYNC_RST PARAM_VALUE.G_ASYNC_RST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_ASYNC_RST}] ${MODELPARAM_VALUE.G_ASYNC_RST}
}

proc update_MODELPARAM_VALUE.G_ENABLE_ARP_MODULE { MODELPARAM_VALUE.G_ENABLE_ARP_MODULE PARAM_VALUE.G_ENABLE_ARP_MODULE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_ENABLE_ARP_MODULE}] ${MODELPARAM_VALUE.G_ENABLE_ARP_MODULE}
}

proc update_MODELPARAM_VALUE.G_ENABLE_ARP_TABLE { MODELPARAM_VALUE.G_ENABLE_ARP_TABLE PARAM_VALUE.G_ENABLE_ARP_TABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_ENABLE_ARP_TABLE}] ${MODELPARAM_VALUE.G_ENABLE_ARP_TABLE}
}

proc update_MODELPARAM_VALUE.G_ENABLE_TESTENV { MODELPARAM_VALUE.G_ENABLE_TESTENV PARAM_VALUE.G_ENABLE_TESTENV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_ENABLE_TESTENV}] ${MODELPARAM_VALUE.G_ENABLE_TESTENV}
}

proc update_MODELPARAM_VALUE.G_ENABLE_PKT_DROP_EXT { MODELPARAM_VALUE.G_ENABLE_PKT_DROP_EXT PARAM_VALUE.G_ENABLE_PKT_DROP_EXT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_ENABLE_PKT_DROP_EXT}] ${MODELPARAM_VALUE.G_ENABLE_PKT_DROP_EXT}
}

proc update_MODELPARAM_VALUE.G_ENABLE_PKT_DROP_RAW { MODELPARAM_VALUE.G_ENABLE_PKT_DROP_RAW PARAM_VALUE.G_ENABLE_PKT_DROP_RAW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_ENABLE_PKT_DROP_RAW}] ${MODELPARAM_VALUE.G_ENABLE_PKT_DROP_RAW}
}

proc update_MODELPARAM_VALUE.G_ENABLE_PKT_DROP_UDP { MODELPARAM_VALUE.G_ENABLE_PKT_DROP_UDP PARAM_VALUE.G_ENABLE_PKT_DROP_UDP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_ENABLE_PKT_DROP_UDP}] ${MODELPARAM_VALUE.G_ENABLE_PKT_DROP_UDP}
}

proc update_MODELPARAM_VALUE.G_MAC_TDATA_WIDTH { MODELPARAM_VALUE.G_MAC_TDATA_WIDTH PARAM_VALUE.G_MAC_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_MAC_TDATA_WIDTH}] ${MODELPARAM_VALUE.G_MAC_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.G_UOE_TDATA_WIDTH { MODELPARAM_VALUE.G_UOE_TDATA_WIDTH PARAM_VALUE.G_UOE_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_UOE_TDATA_WIDTH}] ${MODELPARAM_VALUE.G_UOE_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.G_ROUTER_FIFO_DEPTH { MODELPARAM_VALUE.G_ROUTER_FIFO_DEPTH PARAM_VALUE.G_ROUTER_FIFO_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_ROUTER_FIFO_DEPTH}] ${MODELPARAM_VALUE.G_ROUTER_FIFO_DEPTH}
}

proc update_MODELPARAM_VALUE.G_UOE_FREQ_KHZ { MODELPARAM_VALUE.G_UOE_FREQ_KHZ PARAM_VALUE.G_UOE_FREQ_KHZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_UOE_FREQ_KHZ}] ${MODELPARAM_VALUE.G_UOE_FREQ_KHZ}
}

