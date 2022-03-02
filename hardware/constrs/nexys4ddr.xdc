set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property -dict { PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports { w_btnu }];
set_property -dict { PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports { w_btnd }];
set_property -dict { PACKAGE_PIN E3  IOSTANDARD LVCMOS33} [get_ports { w_clk }];
create_clock -add -name sys_clk -period 10.00 [get_ports {w_clk}];
#create_clock -add -name sys_clk -period 5.88 [get_ports {CLK}];

###############################################################################################
# create_pblock PB0
# #resize_pblock [get_pblocks PB0] -add {CLOCKREGION_X0Y0}
# resize_pblock [get_pblocks PB0] -add {CLOCKREGION_X1Y1}
#resize_pblock [get_pblocks PB0] -add {CLOCKREGION_X0Y0} -add {CLOCKREGION_X1Y0}
#resize_pblock [get_pblocks PB0] -add {CLOCKREGION_X1Y1} -add {CLOCKREGION_X1Y2}
#resize_pblock [get_pblocks PB0] -add {CLOCKREGION_X0Y0} -add {CLOCKREGION_X1Y0} -add {CLOCKREGION_X0Y1} -add {CLOCKREGION_X1Y1}
#resize_pblock [get_pblocks PB0] -add {CLOCKREGION_X0Y1} -add {CLOCKREGION_X1Y1} -add {CLOCKREGION_X0Y2} -add {CLOCKREGION_X1Y2}
#resize_pblock [get_pblocks PB0] -add {CLOCKREGION_X0Y0} -add {CLOCKREGION_X1Y0} -add {CLOCKREGION_X0Y1} -add {CLOCKREGION_X1Y1} -add {CLOCKREGION_X0Y2} -add {CLOCKREGION_X1Y2}
# add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {p}]]
# add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {v}]]
# add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {imem}]]
# add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {dmem}]]

# add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {m_7segcon}]]
# add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {ploader}]]
# add_cells_to_pblock [get_pblocks PB0] [get_cells -quiet [list {UartTx0}]]
###############################################################################################

###### input from CH559
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { w_key_rxd }]; # Pmod JA10
#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { w_key_rxd }]; # Pmod JB10

##Pmod Header JC
# set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { SCL }]; #IO_L22N_T3_35 Sch=jc[3]
# set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { SDA }]; #IO_L19P_T3_35 Sch=jc[4]
#set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports { JC[7] }]; #IO_L6P_T0_35 Sch=jc[7]
# set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { SDA }]; #IO_L22P_T3_35 Sch=jc[8]
# set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { SCL }]; #IO_L21P_T3_DQS_35 Sch=jc[9]
# set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports { w_key_rxd }]; #IO_L5P_T0_AD13P_35 Sch=jc[10]

## Pmod Header JC
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { st7789_DC  }];    # pin1
set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { st7789_RES }];    # pin2
set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { st7789_SDA }];    # pin3
set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { st7789_SCL }];    # pin4

## Pmod Header JD
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { SDA }]; #IO_L22P_T3_35 Sch=jc[8]
set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { SCL }]; #IO_L21P_T3_DQS_35 Sch=jc[9]


# set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { SDA }]; # JB Pin3
# set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { SCL }]; # JB Pin4
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { SDA }]; # JA Pin3
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { SCL }]; # JA Pin4

# ## Pmod Header JA
set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { sioc }]; #IO_L20N_T3_A19_15 Sch=ja[1]
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { camera_v_sync }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2]
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { pclk }]; #IO_L21P_T3_DQS_15 Sch=ja[3]
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { din[7] }]; #IO_L18N_T2_A23_15 Sch=ja[4]
set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { siod }]; #IO_L16N_T2_A27_15 Sch=ja[7]
set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { camera_h_ref }]; #IO_L16P_T2_A28_15 Sch=ja[8]
set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { xclk }]; #IO_L22N_T3_A16_15 Sch=ja[9]
set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { din[6] }]; #IO_L22P_T3_A17_15 Sch=ja[10]

## Pmod Header JB
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { din[5] }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]
set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { din[3] }]; #IO_L14N_T2_SRCC_15 Sch=jb[2]
set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { din[1] }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L15P_T2_DQS_15 Sch=jb[4]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { din[4] }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { din[2] }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]
set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { din[0] }]; #IO_0_15 Sch=jb[9]
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { power_down }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]


## Pmod Header JXADC
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { CAM_SDA }];           # pin3
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { CAM_SCL }];           # pin4
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { lmotor }];        # pin9
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { rmotor }];        # pin10

## Pmod Header JXADC
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { CAM_SDA }];           # pin3
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { CAM_SCL }];           # pin4
#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { r_motor_b }];        # pin7
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { r_motor_f }];        # pin8
set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { l_motor_f }];        # pin9
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { r_motor_f }];        # pin10

# # PCLK property
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk_IBUF]


set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports { r_led[0] }];
set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports { r_led[1] }];
set_property -dict { PACKAGE_PIN J13 IOSTANDARD LVCMOS33} [get_ports { r_led[2] }];
set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports { r_led[3] }];
set_property -dict { PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports { r_led[4] }];
set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports { r_led[5] }];
set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports { r_led[6] }];
set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports { r_led[7] }];
set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports { r_led[8] }];
set_property -dict { PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports { r_led[9] }];
set_property -dict { PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports { r_led[10] }];
set_property -dict { PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports { r_led[11] }];
set_property -dict { PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports { r_led[12] }];
set_property -dict { PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports { r_led[13] }];
set_property -dict { PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports { r_led[14] }];
set_property -dict { PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports { r_led[15] }];

set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports { r_sg[6] }]; # segment a
set_property -dict { PACKAGE_PIN R10 IOSTANDARD LVCMOS33} [get_ports { r_sg[5] }]; # segment b
set_property -dict { PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports { r_sg[4] }]; # segment c
set_property -dict { PACKAGE_PIN K13 IOSTANDARD LVCMOS33} [get_ports { r_sg[3] }]; # segment d
set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports { r_sg[2] }]; # segment e
set_property -dict { PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports { r_sg[1] }]; # segment f
set_property -dict { PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports { r_sg[0] }]; # segment g

set_property -dict { PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports { r_an[0] }];
set_property -dict { PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports { r_an[1] }];
set_property -dict { PACKAGE_PIN T9  IOSTANDARD LVCMOS33} [get_ports { r_an[2] }];
set_property -dict { PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports { r_an[3] }];
set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports { r_an[4] }];
set_property -dict { PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports { r_an[5] }];
set_property -dict { PACKAGE_PIN K2  IOSTANDARD LVCMOS33} [get_ports { r_an[6] }];
set_property -dict { PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports { r_an[7] }];

set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { w_rxd }];
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { w_txd }];

##Switches

set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { SW[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { SW[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { SW[2] }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { SW[3] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { SW[4] }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { SW[5] }]; #IO_L7N_T1_D10_14 Sch=sw[5]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { SW[6] }]; #IO_L17N_T2_A13_D29_14 Sch=sw[6]
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { SW[7] }]; #IO_L5N_T0_D07_14 Sch=sw[7]
set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS18 } [get_ports { SW[8] }]; #IO_L24N_T3_34 Sch=sw[8]
set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS18 } [get_ports { SW[9] }]; #IO_25_34 Sch=sw[9]
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { SW[10] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=sw[10]
set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { SW[11] }]; #IO_L23P_T3_A03_D19_14 Sch=sw[11]
set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { SW[12] }]; #IO_L24P_T3_35 Sch=sw[12]
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { SW[13] }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]
set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { SW[14] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { SW[15] }]; #IO_L21P_T3_DQS_14 Sch=sw[15]
###############################################################################################

##Micro SD Connector

set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { sd_rst }]; #IO_L14P_T2_SRCC_35 Sch=sd_reset
set_property -dict { PACKAGE_PIN A1    IOSTANDARD LVCMOS33 } [get_ports { sd_cd }]; #IO_L9N_T1_DQS_AD7N_35 Sch=sd_cd
set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { sd_clk }]; #IO_L9P_T1_DQS_AD7P_35 Sch=sd_sck
set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { sd_cmd }]; #IO_L16N_T2_35 Sch=sd_cmd
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { sd_dat[0] }]; #IO_L16P_T2_35 Sch=sd_dat[0]
set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { sd_dat[1] }]; #IO_L18N_T2_35 Sch=sd_dat[1]
set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { sd_dat[2] }]; #IO_L18P_T2_35 Sch=sd_dat[2]
set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { sd_dat[3] }]; #IO_L14N_T2_SRCC_35 Sch=sd_dat[3]