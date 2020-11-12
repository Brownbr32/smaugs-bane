connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A819C8A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351A819C8A-13722093-0"}
fpga -file C:/Users/DSmac/workspace/serverClient1/_ide/bitstream/design_Client1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/DSmac/workspace/design_Client1_wrapper/export/design_Client1_wrapper/hw/design_Client1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/DSmac/workspace/serverClient1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/DSmac/workspace/serverClient1/Debug/serverClient1.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
