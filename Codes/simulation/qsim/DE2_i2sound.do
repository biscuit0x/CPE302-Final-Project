onerror {quit -f}
vlib work
vlog -work work DE2_i2sound.vo
vlog -work work DE2_i2sound.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.top_vlg_vec_tst
vcd file -direction DE2_i2sound.msim.vcd
vcd add -internal top_vlg_vec_tst/*
vcd add -internal top_vlg_vec_tst/i1/*
add wave /*
run -all
