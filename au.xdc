set_property -dict { PACKAGE_PIN N14    IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]

set_property -dict { PACKAGE_PIN P6    IOSTANDARD LVCMOS33 } [get_ports { rst_n }];

set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { led }]; 
# set_property -dict { PACKAGE_PIN K12   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; 
# set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; 
# set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { led[3] }];
# set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { led[4] }];
# set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led[5] }];
# set_property -dict { PACKAGE_PIN M12   IOSTANDARD LVCMOS33 } [get_ports { led[6] }];
# set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { led[7] }];

#set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
#set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
#set_property CONFIG_VOLTAGE 3.3 [current_design]
#set_property CFGBVS VCCO [current_design]
#set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR NO [current_design]
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 1 [current_design]
#set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]

set_property -dict { PACKAGE_PIN P9    IOSTANDARD LVCMOS33 } [get_ports { SevSeg_CS1 }];
set_property -dict { PACKAGE_PIN N9    IOSTANDARD LVCMOS33 } [get_ports { SevSeg_CS2 }];
set_property -dict { PACKAGE_PIN R8    IOSTANDARD LVCMOS33 } [get_ports { SevSeg_CS3 }];
set_property -dict { PACKAGE_PIN P8    IOSTANDARD LVCMOS33 } [get_ports { SevSeg_CS4 }];

set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { SevSeg_DP }];
set_property -dict { PACKAGE_PIN T5    IOSTANDARD LVCMOS33 } [get_ports { SevSeg_A }];
set_property -dict { PACKAGE_PIN R5    IOSTANDARD LVCMOS33 } [get_ports { SevSeg_B }];
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { SevSeg_C }];
set_property -dict { PACKAGE_PIN R6    IOSTANDARD LVCMOS33 } [get_ports { SevSeg_D }];
set_property -dict { PACKAGE_PIN R7    IOSTANDARD LVCMOS33 } [get_ports { SevSeg_E }];
set_property -dict { PACKAGE_PIN T7    IOSTANDARD LVCMOS33 } [get_ports { SevSeg_F }];
set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS33 } [get_ports { SevSeg_G }];