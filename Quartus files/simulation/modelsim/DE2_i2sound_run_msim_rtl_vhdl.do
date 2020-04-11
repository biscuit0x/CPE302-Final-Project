transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/counter.vhd}
vcom -93 -work work {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/ram_gpio.vhd}
vcom -93 -work work {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/top.vhd}
vcom -93 -work work {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/clk_mult.vhd}

