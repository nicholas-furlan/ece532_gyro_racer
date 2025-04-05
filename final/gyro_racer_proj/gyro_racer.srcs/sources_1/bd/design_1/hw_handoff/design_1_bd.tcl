
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# axis_acker8k, pmod_gyro_l3g4200d, pmod_gyro_l3g4200d, pwm_generator, sprite_controller, test3_v1_0, test3_v1_0, vid_to_vga_mixer

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set PS2_Clk_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PS2_Clk_0 ]
  set PS2_Data_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PS2_Data_0 ]
  set ddr2_sdram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 ddr2_sdram ]
  set dip_switches_16bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 dip_switches_16bits ]
  set push_buttons_5bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 push_buttons_5bits ]
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]

  # Create ports
  set AUD_PWM [ create_bd_port -dir O AUD_PWM ]
  set blue [ create_bd_port -dir O -from 3 -to 0 blue ]
  set green [ create_bd_port -dir O -from 3 -to 0 green ]
  set hsync_n [ create_bd_port -dir O hsync_n ]
  set miso_0 [ create_bd_port -dir I miso_0 ]
  set miso_1 [ create_bd_port -dir I miso_1 ]
  set mosi_0 [ create_bd_port -dir O mosi_0 ]
  set mosi_1 [ create_bd_port -dir O mosi_1 ]
  set red [ create_bd_port -dir O -from 3 -to 0 red ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sclk_0 [ create_bd_port -dir O sclk_0 ]
  set sclk_1 [ create_bd_port -dir O sclk_1 ]
  set ss_n_0 [ create_bd_port -dir O -from 0 -to 0 ss_n_0 ]
  set ss_n_1 [ create_bd_port -dir O -from 0 -to 0 ss_n_1 ]
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock
  set vsync_n [ create_bd_port -dir O vsync_n ]

  # Create instance: audio_fifo_ef, and set properties
  set audio_fifo_ef [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 audio_fifo_ef ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 axi_bram_ctrl_0_bram ]

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_s2mm {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
 ] $axi_dma_0

  # Create instance: axi_gpio_ctrl, and set properties
  set axi_gpio_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_ctrl ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_GPIO2_WIDTH {16} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.GPIO2_BOARD_INTERFACE {dip_switches_16bits} \
   CONFIG.GPIO_BOARD_INTERFACE {push_buttons_5bits} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_ctrl

  # Create instance: axi_gpio_gyrocon, and set properties
  set axi_gpio_gyrocon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_gyrocon ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {2} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_gyrocon

  # Create instance: axi_ps2_0, and set properties
  set axi_ps2_0 [ create_bd_cell -type ip -vlnv digilentinc.com:IP:axi_ps2:1.0 axi_ps2_0 ]

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
   CONFIG.NUM_CLKS {2} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {6} \
 ] $axi_smc

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.UARTLITE_BOARD_INTERFACE {usb_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: axis_acker8k_0, and set properties
  set block_name axis_acker8k
  set block_cell_name axis_acker8k_0
  if { [catch {set axis_acker8k_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axis_acker8k_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 axis_data_fifo_0 ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {1024} \
   CONFIG.HAS_PROG_EMPTY {1} \
   CONFIG.HAS_PROG_FULL {1} \
   CONFIG.PROG_EMPTY_THRESH {200} \
   CONFIG.PROG_FULL_THRESH {800} \
 ] $axis_data_fifo_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1 ]
  set_property -dict [ list \
   CONFIG.CLKOUT2_JITTER {114.829} \
   CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {200} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {159.371} \
   CONFIG.CLKOUT3_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {40} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.CLK_OUT1_PORT {clk_sys} \
   CONFIG.CLK_OUT2_PORT {clk_mig} \
   CONFIG.CLK_OUT3_PORT {clk_vga} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {5} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {25} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIM_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_1

  # Create instance: gpio_ctrl_index0, and set properties
  set gpio_ctrl_index0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_ctrl_index0 ]

  # Create instance: gpio_ctrl_index1, and set properties
  set gpio_ctrl_index1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_ctrl_index1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_ctrl_index1

  # Create instance: gpio_ctrl_index2, and set properties
  set gpio_ctrl_index2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_ctrl_index2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_ctrl_index2

  # Create instance: gpio_ctrl_index3, and set properties
  set gpio_ctrl_index3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_ctrl_index3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_ctrl_index3

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {1} \
   CONFIG.C_PROBE3_WIDTH {1} \
   CONFIG.C_PROBE4_WIDTH {1} \
   CONFIG.C_PROBE5_WIDTH {1} \
   CONFIG.C_PROBE6_WIDTH {1} \
   CONFIG.C_PROBE7_WIDTH {1} \
 ] $ila_0

  # Create instance: interrupts_concat, and set properties
  set interrupts_concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 interrupts_concat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {5} \
 ] $interrupts_concat

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_TAG_BITS {16} \
   CONFIG.C_CACHE_BYTE_SIZE {32768} \
   CONFIG.C_DCACHE_ADDR_TAG {16} \
   CONFIG.C_DCACHE_BYTE_SIZE {32768} \
   CONFIG.C_DCACHE_LINE_LEN {8} \
   CONFIG.C_DCACHE_USE_WRITEBACK {1} \
   CONFIG.C_DCACHE_VICTIMS {8} \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_FSL_LINKS {0} \
   CONFIG.C_ICACHE_LINE_LEN {8} \
   CONFIG.C_ICACHE_STREAMS {1} \
   CONFIG.C_ICACHE_VICTIMS {8} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_MMU_DTLB_SIZE {4} \
   CONFIG.C_MMU_ITLB_SIZE {2} \
   CONFIG.C_MMU_ZONES {2} \
   CONFIG.C_TRACE {1} \
   CONFIG.C_USE_BARREL {1} \
   CONFIG.C_USE_BRANCH_TARGET_CACHE {1} \
   CONFIG.C_USE_DCACHE {1} \
   CONFIG.C_USE_DIV {1} \
   CONFIG.C_USE_FPU {2} \
   CONFIG.C_USE_HW_MUL {2} \
   CONFIG.C_USE_ICACHE {1} \
   CONFIG.C_USE_MSR_INSTR {1} \
   CONFIG.C_USE_PCMP_INSTR {1} \
   CONFIG.G_TEMPLATE_LIST {2} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {12} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 mig_7series_0 ]
  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {ddr2_sdram} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
 ] $mig_7series_0

  # Create instance: pmod_gyro_l3g4200d_0, and set properties
  set block_name pmod_gyro_l3g4200d
  set block_cell_name pmod_gyro_l3g4200d_0
  if { [catch {set pmod_gyro_l3g4200d_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pmod_gyro_l3g4200d_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pmod_gyro_l3g4200d_1, and set properties
  set block_name pmod_gyro_l3g4200d
  set block_cell_name pmod_gyro_l3g4200d_1
  if { [catch {set pmod_gyro_l3g4200d_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pmod_gyro_l3g4200d_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $proc_sys_reset_0

  # Create instance: pwm_generator_0, and set properties
  set block_name pwm_generator
  set block_cell_name pwm_generator_0
  if { [catch {set pwm_generator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pwm_generator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rst_clk_wiz_1_100M, and set properties
  set rst_clk_wiz_1_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_1_100M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_clk_wiz_1_100M

  # Create instance: rst_mig_7series_0_81M, and set properties
  set rst_mig_7series_0_81M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_81M ]

  # Create instance: sprite_controller_0, and set properties
  set block_name sprite_controller
  set block_cell_name sprite_controller_0
  if { [catch {set sprite_controller_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sprite_controller_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: test3_v1_0_0, and set properties
  set block_name test3_v1_0
  set block_cell_name test3_v1_0_0
  if { [catch {set test3_v1_0_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $test3_v1_0_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: test3_v1_0_1, and set properties
  set block_name test3_v1_0
  set block_cell_name test3_v1_0_1
  if { [catch {set test3_v1_0_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $test3_v1_0_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.GEN_F0_VBLANK_HEND {800} \
   CONFIG.GEN_F0_VBLANK_HSTART {800} \
   CONFIG.GEN_F0_VFRAME_SIZE {628} \
   CONFIG.GEN_F0_VSYNC_HEND {800} \
   CONFIG.GEN_F0_VSYNC_HSTART {800} \
   CONFIG.GEN_F0_VSYNC_VEND {604} \
   CONFIG.GEN_F0_VSYNC_VSTART {600} \
   CONFIG.GEN_F1_VBLANK_HEND {800} \
   CONFIG.GEN_F1_VBLANK_HSTART {800} \
   CONFIG.GEN_F1_VFRAME_SIZE {628} \
   CONFIG.GEN_F1_VSYNC_HEND {800} \
   CONFIG.GEN_F1_VSYNC_HSTART {800} \
   CONFIG.GEN_F1_VSYNC_VEND {604} \
   CONFIG.GEN_F1_VSYNC_VSTART {600} \
   CONFIG.GEN_HACTIVE_SIZE {800} \
   CONFIG.GEN_HFRAME_SIZE {1056} \
   CONFIG.GEN_HSYNC_END {968} \
   CONFIG.GEN_HSYNC_START {840} \
   CONFIG.GEN_VACTIVE_SIZE {600} \
   CONFIG.HAS_AXI4_LITE {false} \
   CONFIG.HAS_INTC_IF {false} \
   CONFIG.INTERLACE_EN {false} \
   CONFIG.SYNC_EN {false} \
   CONFIG.VIDEO_MODE {800x600p} \
   CONFIG.enable_detection {false} \
   CONFIG.max_clocks_per_line {2048} \
   CONFIG.max_lines_per_frame {1024} \
 ] $v_tc_0

  # Create instance: vdma_bg, and set properties
  set vdma_bg [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 vdma_bg ]
  set_property -dict [ list \
   CONFIG.c_include_s2mm {0} \
   CONFIG.c_m_axi_mm2s_data_width {32} \
   CONFIG.c_m_axis_mm2s_tdata_width {16} \
   CONFIG.c_mm2s_genlock_mode {0} \
   CONFIG.c_mm2s_max_burst_length {16} \
   CONFIG.c_s2mm_genlock_mode {0} \
 ] $vdma_bg

  # Create instance: vdma_fg0, and set properties
  set vdma_fg0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 vdma_fg0 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s_dre {1} \
   CONFIG.c_include_s2mm {0} \
   CONFIG.c_m_axi_mm2s_data_width {32} \
   CONFIG.c_m_axis_mm2s_tdata_width {16} \
   CONFIG.c_mm2s_genlock_mode {0} \
   CONFIG.c_mm2s_max_burst_length {16} \
   CONFIG.c_s2mm_genlock_mode {0} \
 ] $vdma_fg0

  # Create instance: vid_bg, and set properties
  set vid_bg [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 vid_bg ]
  set_property -dict [ list \
   CONFIG.C_HAS_ASYNC_CLK {0} \
   CONFIG.C_NATIVE_COMPONENT_WIDTH {16} \
   CONFIG.C_S_AXIS_VIDEO_DATA_WIDTH {16} \
   CONFIG.C_S_AXIS_VIDEO_FORMAT {12} \
   CONFIG.C_VTG_MASTER_SLAVE {1} \
 ] $vid_bg

  # Create instance: vid_fg0, and set properties
  set vid_fg0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 vid_fg0 ]
  set_property -dict [ list \
   CONFIG.C_NATIVE_COMPONENT_WIDTH {16} \
   CONFIG.C_S_AXIS_VIDEO_DATA_WIDTH {16} \
   CONFIG.C_S_AXIS_VIDEO_FORMAT {12} \
   CONFIG.C_VTG_MASTER_SLAVE {1} \
 ] $vid_fg0

  # Create instance: vid_to_vga_mixer_0, and set properties
  set block_name vid_to_vga_mixer
  set block_cell_name vid_to_vga_mixer_0
  if { [catch {set vid_to_vga_mixer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vid_to_vga_mixer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXIS_MM2S [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] [get_bd_intf_pins axis_data_fifo_0/S_AXIS]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_smc/S05_AXI]
  connect_bd_intf_net -intf_net axi_gpio_ctrl_GPIO [get_bd_intf_ports push_buttons_5bits] [get_bd_intf_pins axi_gpio_ctrl/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_ctrl_GPIO2 [get_bd_intf_ports dip_switches_16bits] [get_bd_intf_pins axi_gpio_ctrl/GPIO2]
  connect_bd_intf_net -intf_net axi_ps2_0_PS2_Clk [get_bd_intf_ports PS2_Clk_0] [get_bd_intf_pins axi_ps2_0/PS2_Clk]
  connect_bd_intf_net -intf_net axi_ps2_0_PS2_Data [get_bd_intf_ports PS2_Data_0] [get_bd_intf_pins axi_ps2_0/PS2_Data]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_smc/M00_AXI]
  connect_bd_intf_net -intf_net axi_smc_M01_AXI [get_bd_intf_pins axi_smc/M01_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_smc/S03_AXI] [get_bd_intf_pins vdma_fg0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins axis_acker8k_0/s_axis] [get_bd_intf_pins axis_data_fifo_0/M_AXIS]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DC [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins microblaze_0/M_AXI_DC]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_IC [get_bd_intf_pins axi_smc/S01_AXI] [get_bd_intf_pins microblaze_0/M_AXI_IC]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins axi_ps2_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI] [get_bd_intf_pins sprite_controller_0/s_axi]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI] [get_bd_intf_pins vdma_fg0/S_AXI_LITE]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M06_AXI [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI] [get_bd_intf_pins vdma_bg/S_AXI_LITE]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins axi_gpio_gyrocon/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M08_AXI [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M09_AXI [get_bd_intf_pins microblaze_0_axi_periph/M09_AXI] [get_bd_intf_pins test3_v1_0_0/s00_axi]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M10_AXI [get_bd_intf_pins microblaze_0_axi_periph/M10_AXI] [get_bd_intf_pins test3_v1_0_1/s00_axi]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M11_AXI [get_bd_intf_pins axi_gpio_ctrl/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins microblaze_0_axi_intc/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_0/INTERRUPT] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]
  connect_bd_intf_net -intf_net mig_7series_0_DDR2 [get_bd_intf_ports ddr2_sdram] [get_bd_intf_pins mig_7series_0/DDR2]
  connect_bd_intf_net -intf_net sprite_controller_0_m_axi [get_bd_intf_pins axi_smc/S02_AXI] [get_bd_intf_pins sprite_controller_0/m_axi]
  connect_bd_intf_net -intf_net vdma_bg_M_AXIS_MM2S [get_bd_intf_pins vdma_bg/M_AXIS_MM2S] [get_bd_intf_pins vid_bg/video_in]
  connect_bd_intf_net -intf_net vdma_bg_M_AXI_MM2S [get_bd_intf_pins axi_smc/S04_AXI] [get_bd_intf_pins vdma_bg/M_AXI_MM2S]
  connect_bd_intf_net -intf_net vdma_fg0_M_AXIS_MM2S [get_bd_intf_pins vdma_fg0/M_AXIS_MM2S] [get_bd_intf_pins vid_fg0/video_in]

  # Create port connections
  connect_bd_net -net audio_fifo_ef_dout [get_bd_pins audio_fifo_ef/dout] [get_bd_pins axi_gpio_gyrocon/gpio2_io_i]
  connect_bd_net -net axi_gpio_ctrl_gpio_io_o [get_bd_pins axi_gpio_gyrocon/gpio_io_o] [get_bd_pins gpio_ctrl_index0/Din] [get_bd_pins gpio_ctrl_index1/Din] [get_bd_pins gpio_ctrl_index2/Din] [get_bd_pins gpio_ctrl_index3/Din]
  connect_bd_net -net axi_ps2_0_PS2_interrupt [get_bd_pins axi_ps2_0/PS2_interrupt] [get_bd_pins ila_0/probe0] [get_bd_pins interrupts_concat/In2]
  connect_bd_net -net axis_acker8k_0_out_data [get_bd_pins axis_acker8k_0/out_data] [get_bd_pins pwm_generator_0/pwm_duty]
  connect_bd_net -net axis_data_fifo_0_prog_empty [get_bd_pins audio_fifo_ef/In0] [get_bd_pins axis_data_fifo_0/prog_empty]
  connect_bd_net -net axis_data_fifo_0_prog_full [get_bd_pins audio_fifo_ef/In1] [get_bd_pins axis_data_fifo_0/prog_full]
  connect_bd_net -net clk_wiz_1_clk_mig [get_bd_pins clk_wiz_1/clk_mig] [get_bd_pins mig_7series_0/sys_clk_i]
  connect_bd_net -net clk_wiz_1_clk_vga [get_bd_pins clk_wiz_1/clk_vga] [get_bd_pins ila_0/clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins v_tc_0/clk] [get_bd_pins vdma_bg/m_axis_mm2s_aclk] [get_bd_pins vdma_fg0/m_axis_mm2s_aclk] [get_bd_pins vid_bg/aclk] [get_bd_pins vid_fg0/aclk]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_1/locked] [get_bd_pins rst_clk_wiz_1_100M/dcm_locked]
  connect_bd_net -net gpio_ctrl_index1_Dout [get_bd_pins gpio_ctrl_index1/Dout] [get_bd_pins test3_v1_0_0/angle_reset]
  connect_bd_net -net gpio_ctrl_index3_Dout [get_bd_pins gpio_ctrl_index3/Dout] [get_bd_pins test3_v1_0_1/angle_reset]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_gpio_ctrl/s_axi_aclk] [get_bd_pins axi_gpio_gyrocon/s_axi_aclk] [get_bd_pins axi_ps2_0/S_AXI_aclk] [get_bd_pins axi_smc/aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins axis_acker8k_0/clk] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins clk_wiz_1/clk_sys] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/M05_ACLK] [get_bd_pins microblaze_0_axi_periph/M06_ACLK] [get_bd_pins microblaze_0_axi_periph/M07_ACLK] [get_bd_pins microblaze_0_axi_periph/M08_ACLK] [get_bd_pins microblaze_0_axi_periph/M09_ACLK] [get_bd_pins microblaze_0_axi_periph/M10_ACLK] [get_bd_pins microblaze_0_axi_periph/M11_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins pmod_gyro_l3g4200d_0/clk] [get_bd_pins pmod_gyro_l3g4200d_1/clk] [get_bd_pins pwm_generator_0/clk] [get_bd_pins rst_clk_wiz_1_100M/slowest_sync_clk] [get_bd_pins sprite_controller_0/aclk] [get_bd_pins test3_v1_0_0/s00_axi_aclk] [get_bd_pins test3_v1_0_1/s00_axi_aclk] [get_bd_pins vdma_bg/m_axi_mm2s_aclk] [get_bd_pins vdma_bg/s_axi_lite_aclk] [get_bd_pins vdma_fg0/m_axi_mm2s_aclk] [get_bd_pins vdma_fg0/s_axi_lite_aclk]
  connect_bd_net -net microblaze_0_intr [get_bd_pins interrupts_concat/dout] [get_bd_pins microblaze_0_axi_intc/intr]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_pins mig_7series_0/mmcm_locked] [get_bd_pins rst_mig_7series_0_81M/dcm_locked]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins axi_smc/aclk1] [get_bd_pins mig_7series_0/ui_clk] [get_bd_pins rst_mig_7series_0_81M/slowest_sync_clk]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins mig_7series_0/ui_clk_sync_rst] [get_bd_pins rst_mig_7series_0_81M/ext_reset_in]
  connect_bd_net -net miso_0_1 [get_bd_ports miso_0] [get_bd_pins pmod_gyro_l3g4200d_0/miso]
  connect_bd_net -net miso_1_1 [get_bd_ports miso_1] [get_bd_pins pmod_gyro_l3g4200d_1/miso]
  connect_bd_net -net pmod_gyro_l3g4200d_0_angular_rate_x [get_bd_pins pmod_gyro_l3g4200d_0/angular_rate_x] [get_bd_pins test3_v1_0_0/angular_rate_x]
  connect_bd_net -net pmod_gyro_l3g4200d_0_angular_rate_y [get_bd_pins pmod_gyro_l3g4200d_0/angular_rate_y] [get_bd_pins test3_v1_0_0/angular_rate_y]
  connect_bd_net -net pmod_gyro_l3g4200d_0_angular_rate_z [get_bd_pins pmod_gyro_l3g4200d_0/angular_rate_z] [get_bd_pins test3_v1_0_0/angular_rate_z]
  connect_bd_net -net pmod_gyro_l3g4200d_0_mosi [get_bd_ports mosi_0] [get_bd_pins pmod_gyro_l3g4200d_0/mosi]
  connect_bd_net -net pmod_gyro_l3g4200d_0_sclk [get_bd_ports sclk_0] [get_bd_pins pmod_gyro_l3g4200d_0/sclk]
  connect_bd_net -net pmod_gyro_l3g4200d_0_ss_n [get_bd_ports ss_n_0] [get_bd_pins pmod_gyro_l3g4200d_0/ss_n]
  connect_bd_net -net pmod_gyro_l3g4200d_1_angular_rate_x [get_bd_pins pmod_gyro_l3g4200d_1/angular_rate_x] [get_bd_pins test3_v1_0_1/angular_rate_x]
  connect_bd_net -net pmod_gyro_l3g4200d_1_angular_rate_y [get_bd_pins pmod_gyro_l3g4200d_1/angular_rate_y] [get_bd_pins test3_v1_0_1/angular_rate_y]
  connect_bd_net -net pmod_gyro_l3g4200d_1_angular_rate_z [get_bd_pins pmod_gyro_l3g4200d_1/angular_rate_z] [get_bd_pins test3_v1_0_1/angular_rate_z]
  connect_bd_net -net pmod_gyro_l3g4200d_1_mosi [get_bd_ports mosi_1] [get_bd_pins pmod_gyro_l3g4200d_1/mosi]
  connect_bd_net -net pmod_gyro_l3g4200d_1_sclk [get_bd_ports sclk_1] [get_bd_pins pmod_gyro_l3g4200d_1/sclk]
  connect_bd_net -net pmod_gyro_l3g4200d_1_ss_n [get_bd_ports ss_n_1] [get_bd_pins pmod_gyro_l3g4200d_1/ss_n]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins v_tc_0/resetn]
  connect_bd_net -net pwm_generator_0_pwm_signal [get_bd_ports AUD_PWM] [get_bd_pins pwm_generator_0/pwm_signal]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_1/resetn] [get_bd_pins mig_7series_0/sys_rst] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins rst_clk_wiz_1_100M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_1_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins microblaze_0_axi_intc/processor_rst] [get_bd_pins rst_clk_wiz_1_100M/mb_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_gpio_ctrl/s_axi_aresetn] [get_bd_pins axi_gpio_gyrocon/s_axi_aresetn] [get_bd_pins axi_ps2_0/S_AXI_aresetn] [get_bd_pins axi_smc/aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins axis_acker8k_0/resetn] [get_bd_pins axis_data_fifo_0/s_axis_aresetn] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/M05_ARESETN] [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] [get_bd_pins microblaze_0_axi_periph/M08_ARESETN] [get_bd_pins microblaze_0_axi_periph/M09_ARESETN] [get_bd_pins microblaze_0_axi_periph/M10_ARESETN] [get_bd_pins microblaze_0_axi_periph/M11_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins pmod_gyro_l3g4200d_0/reset_n] [get_bd_pins pmod_gyro_l3g4200d_1/reset_n] [get_bd_pins pwm_generator_0/rstn] [get_bd_pins rst_clk_wiz_1_100M/peripheral_aresetn] [get_bd_pins sprite_controller_0/aresetn] [get_bd_pins test3_v1_0_0/s00_axi_aresetn] [get_bd_pins test3_v1_0_0/system_reset] [get_bd_pins test3_v1_0_1/s00_axi_aresetn] [get_bd_pins test3_v1_0_1/system_reset] [get_bd_pins vdma_bg/axi_resetn] [get_bd_pins vdma_fg0/axi_resetn]
  connect_bd_net -net rst_mig_7series_0_81M_peripheral_aresetn [get_bd_pins mig_7series_0/aresetn] [get_bd_pins rst_mig_7series_0_81M/peripheral_aresetn]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_1/clk_in1]
  connect_bd_net -net timer_irq [get_bd_pins axi_timer_0/interrupt] [get_bd_pins interrupts_concat/In1]
  connect_bd_net -net uart_irq [get_bd_pins axi_uartlite_0/interrupt] [get_bd_pins interrupts_concat/In0]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net v_tc_0_active_video_out [get_bd_pins v_tc_0/active_video_out] [get_bd_pins vid_bg/vtg_active_video] [get_bd_pins vid_fg0/vtg_active_video] [get_bd_pins vid_to_vga_mixer_0/active]
  connect_bd_net -net v_tc_0_hblank_out [get_bd_pins v_tc_0/hblank_out] [get_bd_pins vid_bg/vtg_hblank] [get_bd_pins vid_fg0/vtg_hblank]
  connect_bd_net -net v_tc_0_hsync_out [get_bd_pins v_tc_0/hsync_out] [get_bd_pins vid_bg/vtg_hsync] [get_bd_pins vid_fg0/vtg_hsync] [get_bd_pins vid_to_vga_mixer_0/hsync]
  connect_bd_net -net v_tc_0_vblank_out [get_bd_pins v_tc_0/vblank_out] [get_bd_pins vid_bg/vtg_vblank] [get_bd_pins vid_fg0/vtg_vblank]
  connect_bd_net -net v_tc_0_vsync_out [get_bd_pins v_tc_0/vsync_out] [get_bd_pins vid_bg/vtg_vsync] [get_bd_pins vid_fg0/vtg_vsync] [get_bd_pins vid_to_vga_mixer_0/vsync]
  connect_bd_net -net vdma_bg_irq [get_bd_pins interrupts_concat/In3] [get_bd_pins vdma_bg/mm2s_introut]
  connect_bd_net -net vdma_fg0_irq [get_bd_pins interrupts_concat/In4] [get_bd_pins vdma_fg0/mm2s_introut]
  connect_bd_net -net vid_bg_vid_data [get_bd_pins vid_bg/vid_data] [get_bd_pins vid_to_vga_mixer_0/rgba_background]
  connect_bd_net -net vid_bg_vtg_ce [get_bd_pins util_vector_logic_0/Op2] [get_bd_pins vid_bg/vtg_ce]
  connect_bd_net -net vid_fg0_vid_data [get_bd_pins vid_fg0/vid_data] [get_bd_pins vid_to_vga_mixer_0/rgba_sprites]
  connect_bd_net -net vid_fg0_vtg_ce [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins vid_fg0/vtg_ce]
  connect_bd_net -net vid_to_vga_mixer_0_blue [get_bd_ports blue] [get_bd_pins vid_to_vga_mixer_0/blue]
  connect_bd_net -net vid_to_vga_mixer_0_green [get_bd_ports green] [get_bd_pins vid_to_vga_mixer_0/green]
  connect_bd_net -net vid_to_vga_mixer_0_hsync_n [get_bd_ports hsync_n] [get_bd_pins vid_to_vga_mixer_0/hsync_n]
  connect_bd_net -net vid_to_vga_mixer_0_red [get_bd_ports red] [get_bd_pins vid_to_vga_mixer_0/red]
  connect_bd_net -net vid_to_vga_mixer_0_vsync_n [get_bd_ports vsync_n] [get_bd_pins vid_to_vga_mixer_0/vsync_n]

  # Create address segments
  create_bd_addr_seg -range 0x00002000 -offset 0xC0000000 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x00002000 -offset 0xC0000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00002000 -offset 0xC0000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x41E00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_gyrocon/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_ctrl/S_AXI/Reg] SEG_axi_gpio_ctrl_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A50000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_ps2_0/S_AXI/S_AXI_reg] SEG_axi_ps2_0_S_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A10000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs vdma_fg0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  create_bd_addr_seg -range 0x00004000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00004000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs sprite_controller_0/s_axi/reg0] SEG_sprite_controller_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A30000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs test3_v1_0_0/s00_axi/reg0] SEG_test3_v1_0_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A40000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs test3_v1_0_1/s00_axi/reg0] SEG_test3_v1_0_1_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A20000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs vdma_bg/S_AXI_LITE/Reg] SEG_vdma_bg_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0xC0000000 [get_bd_addr_spaces sprite_controller_0/m_axi] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces sprite_controller_0/m_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x00002000 -offset 0xC0000000 [get_bd_addr_spaces vdma_bg/Data_MM2S] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces vdma_bg/Data_MM2S] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x00002000 -offset 0xC0000000 [get_bd_addr_spaces vdma_fg0/Data_MM2S] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces vdma_fg0/Data_MM2S] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


