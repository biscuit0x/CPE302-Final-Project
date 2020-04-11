transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/peace/Desktop/Computer\ Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/CLOCK_500.v}
vlog -vlog01compat -work work +incdir+C:/Users/peace/Desktop/Computer\ Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/i2c.v}
vlog -vlog01compat -work work +incdir+C:/Users/peace/Desktop/Computer\ Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/keytr.v}
vcom -93 -work work {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/ram_gpio.vhd}
vcom -93 -work work {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/top.vhd}
vcom -93 -work work {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/sipo.vhd}
vcom -93 -work work {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/ave_cal.vhd}
vcom -93 -work work {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/aud_dec.vhd}
vcom -93 -work work {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/shift8.vhd}
vcom -93 -work work {C:/Users/peace/Desktop/Computer Engineering/DE2_System_v1.6/DE2_demonstrations/DE2_i2sound/clk_mult.vhd}

