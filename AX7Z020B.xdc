## This file is a general .xdc for the AX7Z020B board 
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project


##  ========== Voltage Level: ==========
##    By default the VCCIO35 is set to 3.3V
##
##    If J28 has a jumper-cap installed, VCCIO35 = 2.5V
##    If J29 has a jumper-cap installed, VCCIO35 = 1.8V
##    If J28 & J29 are not connected, VCCIO35 = 3.3V (Default)
##  
##  ========== PS PERIPHERALS: ==========
##    * DDR (MT41K256M16TW-107)
##    * QSPI (MIO1:MIO6)
##    * CAN0 (MIO10-MIO11)
##    * CAN1 (MIO12-MIO13)
##    * RS485 (MIO9-MIO14-MIO15)
##    * ETH (MIO16:MIO27-MIO52-MIO53)
##    * USB (MIO28:MIO39-MIO46)
##    * UART(MIO48-MIO49)
##    * SD (MIO40:MIO45-MIO47)
##    * EEPROM I2C (MIO50-MIO51)
##    * RT-CLK I2C (MIO50-MIO51-MIO7)



## PL SYSTEM CLK (50 MHz)
#set_property -dict { PACKAGE_PIN U18    IOSTANDARD LVCMOS33 } [get_ports { sys_clock }];
#create_clock -add -name sys_clock_pin -period 20 [get_ports { sys_clock }];

## BUTTONS
#set_property -dict { PACKAGE_PIN M15    IOSTANDARD LVCMOS33 } [get_ports { btn[0] }];
#set_property -dict { PACKAGE_PIN M14    IOSTANDARD LVCMOS33 } [get_ports { btn[1] }];
#set_property -dict { PACKAGE_PIN L17    IOSTANDARD LVCMOS33 } [get_ports { btn[2] }];
#set_property -dict { PACKAGE_PIN L16    IOSTANDARD LVCMOS33 } [get_ports { btn[3] }];

## LEDS
set_property -dict { PACKAGE_PIN J14    IOSTANDARD LVCMOS33 } [get_ports { led[0] }];
set_property -dict { PACKAGE_PIN K14    IOSTANDARD LVCMOS33 } [get_ports { led[1] }];
set_property -dict { PACKAGE_PIN J18    IOSTANDARD LVCMOS33 } [get_ports { led[2] }];
set_property -dict { PACKAGE_PIN H18    IOSTANDARD LVCMOS33 } [get_ports { led[3] }];


## HDMI OUT (Check iostandard!)
#set_property -dict { PACKAGE_PIN U13    IOSTANDARD TMDS_33 } [get_ports { HDMI_CLK_P }];
#set_property -dict { PACKAGE_PIN V13    IOSTANDARD TMDS_33 } [get_ports { HDMI_CLK_N }];
#set_property -dict { PACKAGE_PIN W14    IOSTANDARD TMDS_33 } [get_ports { HDMI_D0_P }];
#set_property -dict { PACKAGE_PIN Y14    IOSTANDARD TMDS_33 } [get_ports { HDMI_D0_N }];
#set_property -dict { PACKAGE_PIN Y18    IOSTANDARD TMDS_33 } [get_ports { HDMI_D1_P }];
#set_property -dict { PACKAGE_PIN Y19    IOSTANDARD TMDS_33 } [get_ports { HDMI_D1_N }];
#set_property -dict { PACKAGE_PIN Y16    IOSTANDARD TMDS_33 } [get_ports { HDMI_D2_P }];
#set_property -dict { PACKAGE_PIN Y17    IOSTANDARD TMDS_33 } [get_ports { HDMI_D2_N }];
#set_property -dict { PACKAGE_PIN V18    IOSTANDARD LVCMOS33 } [get_ports { HDMI_SCL }];
#set_property -dict { PACKAGE_PIN V17    IOSTANDARD LVCMOS33 } [get_ports { HDMI_SDA }];

## MIPI Interface (Check iostandard!)
#set_property -dict { PACKAGE_PIN V8     IOSTANDARD TMDS_33 } [get_ports { LP_CLK_P }];
#set_property -dict { PACKAGE_PIN W8     IOSTANDARD TMDS_33 } [get_ports { LP_CLK_N }];
#set_property -dict { PACKAGE_PIN T9     IOSTANDARD TMDS_33 } [get_ports { LP_LANE0_P }];
#set_property -dict { PACKAGE_PIN U10    IOSTANDARD TMDS_33 } [get_ports { LP_LANE0_N }];
#set_property -dict { PACKAGE_PIN Y12    IOSTANDARD TMDS_33 } [get_ports { LP_LANE1_P }];
#set_property -dict { PACKAGE_PIN Y13    IOSTANDARD TMDS_33 } [get_ports { LP_LANE1_N }];
#set_property -dict { PACKAGE_PIN Y7     IOSTANDARD TMDS_33 } [get_ports { MIPI_CLK_P }];
#set_property -dict { PACKAGE_PIN Y6     IOSTANDARD TMDS_33 } [get_ports { MIPI_CLK_N }];
#set_property -dict { PACKAGE_PIN W11    IOSTANDARD TMDS_33 } [get_ports { MIPI_LAN0_P }];
#set_property -dict { PACKAGE_PIN Y11    IOSTANDARD TMDS_33 } [get_ports { MIPI_LAN0_N }];
#set_property -dict { PACKAGE_PIN U9     IOSTANDARD TMDS_33 } [get_ports { MIPI_LAN1_P }];
#set_property -dict { PACKAGE_PIN U8     IOSTANDARD TMDS_33 } [get_ports { MIPI_LAN1_N }];
#set_property -dict { PACKAGE_PIN U7     IOSTANDARD LVCMOS33 } [get_ports { CAM_GPIO }];
#set_property -dict { PACKAGE_PIN V7     IOSTANDARD LVCMOS33 } [get_ports { CAM_CLK }];
#set_property -dict { PACKAGE_PIN T5     IOSTANDARD LVCMOS33 } [get_ports { CAM_SCL }];
#set_property -dict { PACKAGE_PIN U5     IOSTANDARD LVCMOS33 } [get_ports { CAM_SDA }];

## J20 Connector
## Check pins used with manual
#set_property -dict { PACKAGE_PIN R14    IOSTANDARD LVCMOS33 } [get_ports { J20[0] }]; #J20_03
#set_property -dict { PACKAGE_PIN P14    IOSTANDARD LVCMOS33 } [get_ports { J20[1] }]; #J20_04
#set_property -dict { PACKAGE_PIN U12    IOSTANDARD LVCMOS33 } [get_ports { J20[2] }]; #J20_05
#set_property -dict { PACKAGE_PIN T12    IOSTANDARD LVCMOS33 } [get_ports { J20[3] }]; #J20_06
#set_property -dict { PACKAGE_PIN T15    IOSTANDARD LVCMOS33 } [get_ports { J20[4] }]; #J20_07
#set_property -dict { PACKAGE_PIN T14    IOSTANDARD LVCMOS33 } [get_ports { J20[5] }]; #J20_08
#set_property -dict { PACKAGE_PIN T11    IOSTANDARD LVCMOS33 } [get_ports { J20[6] }]; #J20_09
#set_property -dict { PACKAGE_PIN T10    IOSTANDARD LVCMOS33 } [get_ports { J20[7] }]; #J20_10
#set_property -dict { PACKAGE_PIN U15    IOSTANDARD LVCMOS33 } [get_ports { J20[8] }]; #J20_11
#set_property -dict { PACKAGE_PIN U14    IOSTANDARD LVCMOS33 } [get_ports { J20[9] }]; #J20_12
#set_property -dict { PACKAGE_PIN P19    IOSTANDARD LVCMOS33 } [get_ports { J20[10] }]; #J20_13
#set_property -dict { PACKAGE_PIN N18    IOSTANDARD LVCMOS33 } [get_ports { J20[11] }]; #J20_14
#set_property -dict { PACKAGE_PIN R17    IOSTANDARD LVCMOS33 } [get_ports { J20[12] }]; #J20_15
#set_property -dict { PACKAGE_PIN R16    IOSTANDARD LVCMOS33 } [get_ports { J20[13] }]; #J20_16
#set_property -dict { PACKAGE_PIN P15    IOSTANDARD LVCMOS33 } [get_ports { J20[14] }]; #J20_17
#set_property -dict { PACKAGE_PIN P16    IOSTANDARD LVCMOS33 } [get_ports { J20[15] }]; #J20_18
#set_property -dict { PACKAGE_PIN N17    IOSTANDARD LVCMOS33 } [get_ports { J20[16] }]; #J20_19
#set_property -dict { PACKAGE_PIN P18    IOSTANDARD LVCMOS33 } [get_ports { J20[17] }]; #J20_20
#set_property -dict { PACKAGE_PIN V16    IOSTANDARD LVCMOS33 } [get_ports { J20[18] }]; #J20_21
#set_property -dict { PACKAGE_PIN W16    IOSTANDARD LVCMOS33 } [get_ports { J20[19] }]; #J20_22
#set_property -dict { PACKAGE_PIN R18    IOSTANDARD LVCMOS33 } [get_ports { J20[20] }]; #J20_23
#set_property -dict { PACKAGE_PIN T17    IOSTANDARD LVCMOS33 } [get_ports { J20[21] }]; #J20_24
#set_property -dict { PACKAGE_PIN W19    IOSTANDARD LVCMOS33 } [get_ports { J20[22] }]; #J20_25
#set_property -dict { PACKAGE_PIN W18    IOSTANDARD LVCMOS33 } [get_ports { J20[23] }]; #J20_26
#set_property -dict { PACKAGE_PIN W20    IOSTANDARD LVCMOS33 } [get_ports { J20[24] }]; #J20_27
#set_property -dict { PACKAGE_PIN V20    IOSTANDARD LVCMOS33 } [get_ports { J20[25] }]; #J20_28
#set_property -dict { PACKAGE_PIN P20    IOSTANDARD LVCMOS33 } [get_ports { J20[26] }]; #J20_29
#set_property -dict { PACKAGE_PIN N20    IOSTANDARD LVCMOS33 } [get_ports { J20[27] }]; #J20_30
#set_property -dict { PACKAGE_PIN U17    IOSTANDARD LVCMOS33 } [get_ports { J20[28] }]; #J20_31
#set_property -dict { PACKAGE_PIN T16    IOSTANDARD LVCMOS33 } [get_ports { J20[29] }]; #J20_32
#set_property -dict { PACKAGE_PIN U20    IOSTANDARD LVCMOS33 } [get_ports { J20[30] }]; #J20_33
#set_property -dict { PACKAGE_PIN T20    IOSTANDARD LVCMOS33 } [get_ports { J20[31] }]; #J20_34
#set_property -dict { PACKAGE_PIN V15    IOSTANDARD LVCMOS33 } [get_ports { J20[32] }]; #J20_35
#set_property -dict { PACKAGE_PIN W15    IOSTANDARD LVCMOS33 } [get_ports { J20[33] }]; #J20_36

## J21 Connector
## Check pins used with manual
#set_property -dict { PACKAGE_PIN M18    IOSTANDARD LVCMOS33 } [get_ports { J21[0] }]; #J21_03
#set_property -dict { PACKAGE_PIN M17    IOSTANDARD LVCMOS33 } [get_ports { J21[1] }]; #J21_04
#set_property -dict { PACKAGE_PIN K19    IOSTANDARD LVCMOS33 } [get_ports { J21[2] }]; #J21_05
#set_property -dict { PACKAGE_PIN J19    IOSTANDARD LVCMOS33 } [get_ports { J21[3] }]; #J21_06
#set_property -dict { PACKAGE_PIN B19    IOSTANDARD LVCMOS33 } [get_ports { J21[4] }]; #J21_07
#set_property -dict { PACKAGE_PIN A20    IOSTANDARD LVCMOS33 } [get_ports { J21[5] }]; #J21_08
#set_property -dict { PACKAGE_PIN B20    IOSTANDARD LVCMOS33 } [get_ports { J21[6] }]; #J21_09
#set_property -dict { PACKAGE_PIN C20    IOSTANDARD LVCMOS33 } [get_ports { J21[7] }]; #J21_10
#set_property -dict { PACKAGE_PIN G19    IOSTANDARD LVCMOS33 } [get_ports { J21[8] }]; #J21_11
#set_property -dict { PACKAGE_PIN G20    IOSTANDARD LVCMOS33 } [get_ports { J21[9] }]; #J21_12
#set_property -dict { PACKAGE_PIN M19    IOSTANDARD LVCMOS33 } [get_ports { J21[10] }]; #J21_13
#set_property -dict { PACKAGE_PIN M20    IOSTANDARD LVCMOS33 } [get_ports { J21[11] }]; #J21_14
#set_property -dict { PACKAGE_PIN D20    IOSTANDARD LVCMOS33 } [get_ports { J21[12] }]; #J21_15
#set_property -dict { PACKAGE_PIN D19    IOSTANDARD LVCMOS33 } [get_ports { J21[13] }]; #J21_16
#set_property -dict { PACKAGE_PIN L20    IOSTANDARD LVCMOS33 } [get_ports { J21[14] }]; #J21_17
#set_property -dict { PACKAGE_PIN L19    IOSTANDARD LVCMOS33 } [get_ports { J21[15] }]; #J21_18
#set_property -dict { PACKAGE_PIN F16    IOSTANDARD LVCMOS33 } [get_ports { J21[16] }]; #J21_19
#set_property -dict { PACKAGE_PIN F17    IOSTANDARD LVCMOS33 } [get_ports { J21[17] }]; #J21_20
#set_property -dict { PACKAGE_PIN H20    IOSTANDARD LVCMOS33 } [get_ports { J21[18] }]; #J21_21
#set_property -dict { PACKAGE_PIN J20    IOSTANDARD LVCMOS33 } [get_ports { J21[19] }]; #J21_22
#set_property -dict { PACKAGE_PIN G18    IOSTANDARD LVCMOS33 } [get_ports { J21[20] }]; #J21_23
#set_property -dict { PACKAGE_PIN G17    IOSTANDARD LVCMOS33 } [get_ports { J21[21] }]; #J21_24
#set_property -dict { PACKAGE_PIN H17    IOSTANDARD LVCMOS33 } [get_ports { J21[22] }]; #J21_25
#set_property -dict { PACKAGE_PIN H16    IOSTANDARD LVCMOS33 } [get_ports { J21[23] }]; #J21_26
#set_property -dict { PACKAGE_PIN G15    IOSTANDARD LVCMOS33 } [get_ports { J21[24] }]; #J21_27
#set_property -dict { PACKAGE_PIN H15    IOSTANDARD LVCMOS33 } [get_ports { J21[25] }]; #J21_28
#set_property -dict { PACKAGE_PIN K18    IOSTANDARD LVCMOS33 } [get_ports { J21[26] }]; #J21_29
#set_property -dict { PACKAGE_PIN K17    IOSTANDARD LVCMOS33 } [get_ports { J21[27] }]; #J21_30
#set_property -dict { PACKAGE_PIN J16    IOSTANDARD LVCMOS33 } [get_ports { J21[28] }]; #J21_31
#set_property -dict { PACKAGE_PIN K16    IOSTANDARD LVCMOS33 } [get_ports { J21[29] }]; #J21_32
#set_property -dict { PACKAGE_PIN N16    IOSTANDARD LVCMOS33 } [get_ports { J21[30] }]; #J21_33
#set_property -dict { PACKAGE_PIN N15    IOSTANDARD LVCMOS33 } [get_ports { J21[31] }]; #J21_34
#set_property -dict { PACKAGE_PIN L15    IOSTANDARD LVCMOS33 } [get_ports { J21[32] }]; #J21_35
#set_property -dict { PACKAGE_PIN L14    IOSTANDARD LVCMOS33 } [get_ports { J21[33] }]; #J21_36

## RS485 2CH
#set_property -dict { PACKAGE_PIN W13    IOSTANDARD LVCMOS33 } [get_ports { 485_TXD2 }];
#set_property -dict { PACKAGE_PIN V12    IOSTANDARD LVCMOS33 } [get_ports { 485_RXD2 }];
#set_property -dict { PACKAGE_PIN U19    IOSTANDARD LVCMOS33 } [get_ports { 485_DE2 }];

## XADC
#set_property -dict { PACKAGE_PIN E17    IOSTANDARD LVCMOS33 } [get_ports { XADC_AD1P }];
#set_property -dict { PACKAGE_PIN D18    IOSTANDARD LVCMOS33 } [get_ports { XADC_AD1N }];
#set_property -dict { PACKAGE_PIN E18    IOSTANDARD LVCMOS33 } [get_ports { XADC_AD9P }];
#set_property -dict { PACKAGE_PIN E19    IOSTANDARD LVCMOS33 } [get_ports { XADC_AD9N }];
#set_property -dict { PACKAGE_PIN F19    IOSTANDARD LVCMOS33 } [get_ports { XADC_AD12P }];
#set_property -dict { PACKAGE_PIN F20    IOSTANDARD LVCMOS33 } [get_ports { XADC_AD12N }];
#set_property -dict { PACKAGE_PIN K9     IOSTANDARD LVCMOS33 } [get_ports { XADC_VP }];
#set_property -dict { PACKAGE_PIN L10    IOSTANDARD LVCMOS33 } [get_ports { XADC_VN }];