# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_M1_AXI_ID_WIDTH [ipgui::add_param $IPINST -name "C_M1_AXI_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Thread ID Width} ${C_M1_AXI_ID_WIDTH}
  set C_M1_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_M1_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of Address Bus} ${C_M1_AXI_ADDR_WIDTH}
  set C_M1_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M1_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_M1_AXI_DATA_WIDTH}
  set C_M0_AXI_ID_WIDTH [ipgui::add_param $IPINST -name "C_M0_AXI_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Thread ID Width} ${C_M0_AXI_ID_WIDTH}
  set C_M0_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_M0_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of Address Bus} ${C_M0_AXI_ADDR_WIDTH}
  set C_M0_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M0_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_M0_AXI_DATA_WIDTH}
  set C_S_AXI_ID_WIDTH [ipgui::add_param $IPINST -name "C_S_AXI_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of ID for for write address, write data, read address and read data} ${C_S_AXI_ID_WIDTH}
  set C_S_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S_AXI_DATA_WIDTH}
  set C_S_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S_AXI_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_S_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_HIGHADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_DRAM_BASE { PARAM_VALUE.C_DRAM_BASE } {
	# Procedure called to update C_DRAM_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DRAM_BASE { PARAM_VALUE.C_DRAM_BASE } {
	# Procedure called to validate C_DRAM_BASE
	return true
}

proc update_PARAM_VALUE.C_DRAM_BITS { PARAM_VALUE.C_DRAM_BITS } {
	# Procedure called to update C_DRAM_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DRAM_BITS { PARAM_VALUE.C_DRAM_BITS } {
	# Procedure called to validate C_DRAM_BITS
	return true
}

proc update_PARAM_VALUE.C_M1_AXI_ID_WIDTH { PARAM_VALUE.C_M1_AXI_ID_WIDTH } {
	# Procedure called to update C_M1_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M1_AXI_ID_WIDTH { PARAM_VALUE.C_M1_AXI_ID_WIDTH } {
	# Procedure called to validate C_M1_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M1_AXI_ADDR_WIDTH { PARAM_VALUE.C_M1_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M1_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M1_AXI_ADDR_WIDTH { PARAM_VALUE.C_M1_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M1_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M1_AXI_DATA_WIDTH { PARAM_VALUE.C_M1_AXI_DATA_WIDTH } {
	# Procedure called to update C_M1_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M1_AXI_DATA_WIDTH { PARAM_VALUE.C_M1_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M1_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M0_AXI_ID_WIDTH { PARAM_VALUE.C_M0_AXI_ID_WIDTH } {
	# Procedure called to update C_M0_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXI_ID_WIDTH { PARAM_VALUE.C_M0_AXI_ID_WIDTH } {
	# Procedure called to validate C_M0_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M0_AXI_ADDR_WIDTH { PARAM_VALUE.C_M0_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M0_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXI_ADDR_WIDTH { PARAM_VALUE.C_M0_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M0_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M0_AXI_DATA_WIDTH { PARAM_VALUE.C_M0_AXI_DATA_WIDTH } {
	# Procedure called to update C_M0_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXI_DATA_WIDTH { PARAM_VALUE.C_M0_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M0_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ID_WIDTH { PARAM_VALUE.C_S_AXI_ID_WIDTH } {
	# Procedure called to update C_S_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ID_WIDTH { PARAM_VALUE.C_S_AXI_ID_WIDTH } {
	# Procedure called to validate C_S_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_BASEADDR { PARAM_VALUE.C_S_AXI_BASEADDR } {
	# Procedure called to update C_S_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_BASEADDR { PARAM_VALUE.C_S_AXI_BASEADDR } {
	# Procedure called to validate C_S_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S_AXI_HIGHADDR { PARAM_VALUE.C_S_AXI_HIGHADDR } {
	# Procedure called to update C_S_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_HIGHADDR { PARAM_VALUE.C_S_AXI_HIGHADDR } {
	# Procedure called to validate C_S_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_M1_AXI_ID_WIDTH { MODELPARAM_VALUE.C_M1_AXI_ID_WIDTH PARAM_VALUE.C_M1_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M1_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_M1_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M1_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M1_AXI_ADDR_WIDTH PARAM_VALUE.C_M1_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M1_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M1_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M1_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M1_AXI_DATA_WIDTH PARAM_VALUE.C_M1_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M1_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M1_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXI_ID_WIDTH { MODELPARAM_VALUE.C_M0_AXI_ID_WIDTH PARAM_VALUE.C_M0_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M0_AXI_ADDR_WIDTH PARAM_VALUE.C_M0_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M0_AXI_DATA_WIDTH PARAM_VALUE.C_M0_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ID_WIDTH { MODELPARAM_VALUE.C_S_AXI_ID_WIDTH PARAM_VALUE.C_S_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_DRAM_BASE { MODELPARAM_VALUE.C_DRAM_BASE PARAM_VALUE.C_DRAM_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DRAM_BASE}] ${MODELPARAM_VALUE.C_DRAM_BASE}
}

proc update_MODELPARAM_VALUE.C_DRAM_BITS { MODELPARAM_VALUE.C_DRAM_BITS PARAM_VALUE.C_DRAM_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DRAM_BITS}] ${MODELPARAM_VALUE.C_DRAM_BITS}
}
