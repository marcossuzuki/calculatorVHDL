onerror {quit -f}
vlib work
vlog -work work add.vo
vlog -work work add.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.add_vlg_vec_tst
vcd file -direction add.msim.vcd
vcd add -internal add_vlg_vec_tst/*
vcd add -internal add_vlg_vec_tst/i1/*
add wave /*
run -all
