# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_MAX_SPRITES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PIXEL_BYTE_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SCREEN_HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SCREEN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SPRITE_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SPRITE_LINE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TILE16_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TILE32_COUNT" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_MAX_SPRITES { PARAM_VALUE.C_MAX_SPRITES } {
	# Procedure called to update C_MAX_SPRITES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_SPRITES { PARAM_VALUE.C_MAX_SPRITES } {
	# Procedure called to validate C_MAX_SPRITES
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PIXEL_BYTE_SIZE { PARAM_VALUE.C_PIXEL_BYTE_SIZE } {
	# Procedure called to update C_PIXEL_BYTE_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PIXEL_BYTE_SIZE { PARAM_VALUE.C_PIXEL_BYTE_SIZE } {
	# Procedure called to validate C_PIXEL_BYTE_SIZE
	return true
}

proc update_PARAM_VALUE.C_SCREEN_HEIGHT { PARAM_VALUE.C_SCREEN_HEIGHT } {
	# Procedure called to update C_SCREEN_HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SCREEN_HEIGHT { PARAM_VALUE.C_SCREEN_HEIGHT } {
	# Procedure called to validate C_SCREEN_HEIGHT
	return true
}

proc update_PARAM_VALUE.C_SCREEN_WIDTH { PARAM_VALUE.C_SCREEN_WIDTH } {
	# Procedure called to update C_SCREEN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SCREEN_WIDTH { PARAM_VALUE.C_SCREEN_WIDTH } {
	# Procedure called to validate C_SCREEN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SPRITE_DATA_WIDTH { PARAM_VALUE.C_SPRITE_DATA_WIDTH } {
	# Procedure called to update C_SPRITE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SPRITE_DATA_WIDTH { PARAM_VALUE.C_SPRITE_DATA_WIDTH } {
	# Procedure called to validate C_SPRITE_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SPRITE_LINE_WIDTH { PARAM_VALUE.C_SPRITE_LINE_WIDTH } {
	# Procedure called to update C_SPRITE_LINE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SPRITE_LINE_WIDTH { PARAM_VALUE.C_SPRITE_LINE_WIDTH } {
	# Procedure called to validate C_SPRITE_LINE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TILE16_COUNT { PARAM_VALUE.C_TILE16_COUNT } {
	# Procedure called to update C_TILE16_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TILE16_COUNT { PARAM_VALUE.C_TILE16_COUNT } {
	# Procedure called to validate C_TILE16_COUNT
	return true
}

proc update_PARAM_VALUE.C_TILE32_COUNT { PARAM_VALUE.C_TILE32_COUNT } {
	# Procedure called to update C_TILE32_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TILE32_COUNT { PARAM_VALUE.C_TILE32_COUNT } {
	# Procedure called to validate C_TILE32_COUNT
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_SCREEN_WIDTH { MODELPARAM_VALUE.C_SCREEN_WIDTH PARAM_VALUE.C_SCREEN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SCREEN_WIDTH}] ${MODELPARAM_VALUE.C_SCREEN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_SCREEN_HEIGHT { MODELPARAM_VALUE.C_SCREEN_HEIGHT PARAM_VALUE.C_SCREEN_HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SCREEN_HEIGHT}] ${MODELPARAM_VALUE.C_SCREEN_HEIGHT}
}

proc update_MODELPARAM_VALUE.C_MAX_SPRITES { MODELPARAM_VALUE.C_MAX_SPRITES PARAM_VALUE.C_MAX_SPRITES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_SPRITES}] ${MODELPARAM_VALUE.C_MAX_SPRITES}
}

proc update_MODELPARAM_VALUE.C_SPRITE_DATA_WIDTH { MODELPARAM_VALUE.C_SPRITE_DATA_WIDTH PARAM_VALUE.C_SPRITE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SPRITE_DATA_WIDTH}] ${MODELPARAM_VALUE.C_SPRITE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_TILE16_COUNT { MODELPARAM_VALUE.C_TILE16_COUNT PARAM_VALUE.C_TILE16_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TILE16_COUNT}] ${MODELPARAM_VALUE.C_TILE16_COUNT}
}

proc update_MODELPARAM_VALUE.C_TILE32_COUNT { MODELPARAM_VALUE.C_TILE32_COUNT PARAM_VALUE.C_TILE32_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TILE32_COUNT}] ${MODELPARAM_VALUE.C_TILE32_COUNT}
}

proc update_MODELPARAM_VALUE.C_PIXEL_BYTE_SIZE { MODELPARAM_VALUE.C_PIXEL_BYTE_SIZE PARAM_VALUE.C_PIXEL_BYTE_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PIXEL_BYTE_SIZE}] ${MODELPARAM_VALUE.C_PIXEL_BYTE_SIZE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_SPRITE_LINE_WIDTH { MODELPARAM_VALUE.C_SPRITE_LINE_WIDTH PARAM_VALUE.C_SPRITE_LINE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SPRITE_LINE_WIDTH}] ${MODELPARAM_VALUE.C_SPRITE_LINE_WIDTH}
}

