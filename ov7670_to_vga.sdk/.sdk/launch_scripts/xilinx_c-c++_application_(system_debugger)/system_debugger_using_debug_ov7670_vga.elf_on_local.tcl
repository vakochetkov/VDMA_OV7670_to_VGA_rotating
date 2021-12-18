connect -url tcp:127.0.0.1:3121
source F:/m3s/ius_zynq/ov7670_to_vga/ov7670_to_vga.sdk/system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248B0203B"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248B0203B" && level==0} -index 1
fpga -file F:/m3s/ius_zynq/ov7670_to_vga/ov7670_to_vga.sdk/system_wrapper_hw_platform_0/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248B0203B"} -index 0
loadhw -hw F:/m3s/ius_zynq/ov7670_to_vga/ov7670_to_vga.sdk/system_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248B0203B"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248B0203B"} -index 0
dow F:/m3s/ius_zynq/ov7670_to_vga/ov7670_to_vga.sdk/ov7670_vga/Debug/ov7670_vga.elf
configparams force-mem-access 0
bpadd -addr &main
