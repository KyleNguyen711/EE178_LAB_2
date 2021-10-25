##Clock
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13P_T2_MRCC_35 Schematic=SYSCLK
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 4} [get_ports { clk }];
# Constraints for SW0
set_property PACKAGE_PIN R17 [get_ports {va10[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va10[0]}]
# Constraints for SW1
set_property PACKAGE_PIN U20 [get_ports {va10[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va10[1]}]
# Constraints for SW2
set_property PACKAGE_PIN R16 [get_ports {va10[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va10[2]}]
# Constraints for SW3
set_property PACKAGE_PIN N16 [get_ports {va10[3]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va10[3]}]
# Constraints for SW4
set_property PACKAGE_PIN R14 [get_ports {va11[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va11[0]}]
# Constraints for SW5
set_property PACKAGE_PIN P14 [get_ports {va11[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va11[1]}]
# Constraints for SW6
set_property PACKAGE_PIN L15 [get_ports {va11[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va11[2]}]
# Constraints for SW7
set_property PACKAGE_PIN M15 [get_ports {va11[3]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va11[3]}]
# Constraints for SW8
set_property PACKAGE_PIN T10 [get_ports {va12[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va12[0]}]
# Constraints for SW9
set_property PACKAGE_PIN T12 [get_ports {va12[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va12[1]}]
# Constraints for SW10
set_property PACKAGE_PIN T11 [get_ports {va12[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va12[2]}]
# Constraints for SW11
set_property PACKAGE_PIN T14 [get_ports {va12[3]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va12[3]}]
# Constraints for SW12
set_property PACKAGE_PIN W14 [get_ports {va13[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va13[0]}]
# Constraints for SW13
set_property PACKAGE_PIN W13 [get_ports {va13[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va13[1]}]
# Constraints for SW14
set_property PACKAGE_PIN P15 [get_ports {va13[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va13[2]}]
# Constraints for SW15
set_property PACKAGE_PIN M14 [get_ports {va13[3]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {va13[3]}]
# Constraints for CA
set_property PACKAGE_PIN K14 [get_ports {ca}] 
set_property IOSTANDARD LVCMOS33 [get_ports {ca}]
# Constraints for CB
set_property PACKAGE_PIN H15 [get_ports {cb}] 
set_property IOSTANDARD LVCMOS33 [get_ports {cb}]
# Constraints for CC
set_property PACKAGE_PIN J18 [get_ports {cc}] 
set_property IOSTANDARD LVCMOS33 [get_ports {cc}]
# Constraints for CD
set_property PACKAGE_PIN J15 [get_ports {cd}] 
set_property IOSTANDARD LVCMOS33 [get_ports {cd}]
# Constraints for CE
set_property PACKAGE_PIN M17 [get_ports {ce}] 
set_property IOSTANDARD LVCMOS33 [get_ports {ce}]
# Constraints for CF
set_property PACKAGE_PIN J16 [get_ports {cf}] 
set_property IOSTANDARD LVCMOS33 [get_ports {cf}]
# Constraints for CG
set_property PACKAGE_PIN H18 [get_ports {cg}] 
set_property IOSTANDARD LVCMOS33 [get_ports {cg}]
# Constraints for DP
set_property PACKAGE_PIN K18 [get_ports dp]
set_property IOSTANDARD LVCMOS33 [get_ports dp]
# Constraints for AN0
set_property PACKAGE_PIN K19 [get_ports {an[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
# Constraints for AN1
set_property PACKAGE_PIN H17 [get_ports {an[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
# Constraints for AN2
set_property PACKAGE_PIN M18 [get_ports {an[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
# Constraints for AN3
set_property PACKAGE_PIN L16 [get_ports {an[3]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
