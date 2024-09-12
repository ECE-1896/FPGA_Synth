onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+blk_diag1 -L xilinx_vip -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_10 -L processing_system7_vip_v1_0_12 -L util_vector_logic_v2_0_1 -L xlconcat_v2_1_4 -L xlconstant_v1_1_7 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.blk_diag1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {blk_diag1.udo}

run -all

endsim

quit -force
