-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "12/03/2019 00:28:33"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TOP IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	GPIO_COL : OUT std_logic_vector(7 DOWNTO 0)
	);
END TOP;

-- Design Ports Information
-- GPIO_COL[0]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_COL[1]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_COL[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_COL[3]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_COL[4]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_COL[5]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_COL[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_COL[7]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_GPIO_COL : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \U2|temp[0]~2_combout\ : std_logic;
SIGNAL \RESET~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \U1|GPIO_RAM~7_combout\ : std_logic;
SIGNAL \U2|temp[2]~0_combout\ : std_logic;
SIGNAL \U2|temp[3]~1_combout\ : std_logic;
SIGNAL \U1|GPIO_RAM~0_combout\ : std_logic;
SIGNAL \U1|GPIO_RAM~1_combout\ : std_logic;
SIGNAL \U1|GPIO_RAM~2_combout\ : std_logic;
SIGNAL \U1|GPIO_RAM~3_combout\ : std_logic;
SIGNAL \U1|GPIO_RAM~4_combout\ : std_logic;
SIGNAL \U1|GPIO_RAM~5_combout\ : std_logic;
SIGNAL \U1|GPIO_RAM~6_combout\ : std_logic;
SIGNAL \U2|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_GPIO_RAM~6_combout\ : std_logic;
SIGNAL \U1|ALT_INV_GPIO_RAM~5_combout\ : std_logic;
SIGNAL \U1|ALT_INV_GPIO_RAM~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_GPIO_RAM~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
GPIO_COL <= ww_GPIO_COL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~clk_delay_ctrl_clkout\);
\U1|ALT_INV_GPIO_RAM~6_combout\ <= NOT \U1|GPIO_RAM~6_combout\;
\U1|ALT_INV_GPIO_RAM~5_combout\ <= NOT \U1|GPIO_RAM~5_combout\;
\U1|ALT_INV_GPIO_RAM~1_combout\ <= NOT \U1|GPIO_RAM~1_combout\;
\U1|ALT_INV_GPIO_RAM~0_combout\ <= NOT \U1|GPIO_RAM~0_combout\;

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: CLKCTRL_G11
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y22_N0
\U2|temp[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2|temp[0]~2_combout\ = !\U2|temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|temp\(0),
	combout => \U2|temp[0]~2_combout\);

-- Location: CLKDELAYCTRL_G7
\RESET~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \RESET~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\RESET~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~clkctrl_outclk\);

-- Location: LCFF_X64_Y22_N1
\U2|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U2|temp[0]~2_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|temp\(0));

-- Location: LCCOMB_X64_Y22_N18
\U1|GPIO_RAM~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|GPIO_RAM~7_combout\ = \U2|temp\(1) $ (\U2|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|temp\(1),
	datad => \U2|temp\(0),
	combout => \U1|GPIO_RAM~7_combout\);

-- Location: LCFF_X64_Y22_N19
\U2|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U1|GPIO_RAM~7_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|temp\(1));

-- Location: LCCOMB_X64_Y22_N28
\U2|temp[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2|temp[2]~0_combout\ = \U2|temp\(2) $ (((\U2|temp\(1) & \U2|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|temp\(1),
	datac => \U2|temp\(2),
	datad => \U2|temp\(0),
	combout => \U2|temp[2]~0_combout\);

-- Location: LCFF_X64_Y22_N29
\U2|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U2|temp[2]~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|temp\(2));

-- Location: LCCOMB_X64_Y22_N26
\U2|temp[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2|temp[3]~1_combout\ = \U2|temp\(3) $ (((\U2|temp\(2) & (\U2|temp\(1) & \U2|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp\(2),
	datab => \U2|temp\(1),
	datac => \U2|temp\(3),
	datad => \U2|temp\(0),
	combout => \U2|temp[3]~1_combout\);

-- Location: LCFF_X64_Y22_N27
\U2|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \U2|temp[3]~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|temp\(3));

-- Location: LCCOMB_X64_Y22_N20
\U1|GPIO_RAM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|GPIO_RAM~0_combout\ = (\U2|temp\(1) & ((\U2|temp\(0) & ((!\U2|temp\(3)))) # (!\U2|temp\(0) & (!\U2|temp\(2) & \U2|temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp\(0),
	datab => \U2|temp\(2),
	datac => \U2|temp\(1),
	datad => \U2|temp\(3),
	combout => \U1|GPIO_RAM~0_combout\);

-- Location: LCCOMB_X64_Y22_N14
\U1|GPIO_RAM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|GPIO_RAM~1_combout\ = (\U2|temp\(0) & (((!\U2|temp\(1))))) # (!\U2|temp\(0) & ((\U2|temp\(2)) # ((\U2|temp\(1) & !\U2|temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp\(0),
	datab => \U2|temp\(2),
	datac => \U2|temp\(1),
	datad => \U2|temp\(3),
	combout => \U1|GPIO_RAM~1_combout\);

-- Location: LCCOMB_X64_Y22_N12
\U1|GPIO_RAM~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|GPIO_RAM~2_combout\ = (\U2|temp\(0)) # ((\U2|temp\(1) & !\U2|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp\(0),
	datab => \U2|temp\(1),
	datad => \U2|temp\(2),
	combout => \U1|GPIO_RAM~2_combout\);

-- Location: LCCOMB_X64_Y22_N30
\U1|GPIO_RAM~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|GPIO_RAM~3_combout\ = (\U2|temp\(0) & \U2|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|temp\(0),
	datad => \U2|temp\(1),
	combout => \U1|GPIO_RAM~3_combout\);

-- Location: LCCOMB_X64_Y22_N24
\U1|GPIO_RAM~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|GPIO_RAM~4_combout\ = (\U2|temp\(0) & (\U2|temp\(1))) # (!\U2|temp\(0) & (!\U2|temp\(1) & !\U2|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp\(0),
	datab => \U2|temp\(1),
	datad => \U2|temp\(2),
	combout => \U1|GPIO_RAM~4_combout\);

-- Location: LCCOMB_X64_Y22_N22
\U1|GPIO_RAM~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|GPIO_RAM~5_combout\ = (\U2|temp\(0) & ((\U2|temp\(1) & ((!\U2|temp\(3)))) # (!\U2|temp\(1) & (!\U2|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp\(0),
	datab => \U2|temp\(2),
	datac => \U2|temp\(1),
	datad => \U2|temp\(3),
	combout => \U1|GPIO_RAM~5_combout\);

-- Location: LCCOMB_X64_Y22_N16
\U1|GPIO_RAM~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|GPIO_RAM~6_combout\ = (\U2|temp\(2)) # ((\U2|temp\(1) & ((\U2|temp\(0)) # (!\U2|temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|temp\(0),
	datab => \U2|temp\(2),
	datac => \U2|temp\(1),
	datad => \U2|temp\(3),
	combout => \U1|GPIO_RAM~6_combout\);

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_COL[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|ALT_INV_GPIO_RAM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_COL(0));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_COL[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|ALT_INV_GPIO_RAM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_COL(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_COL[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|GPIO_RAM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_COL(2));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_COL[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|GPIO_RAM~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_COL(3));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_COL[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|GPIO_RAM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_COL(4));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_COL[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|GPIO_RAM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_COL(5));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_COL[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|ALT_INV_GPIO_RAM~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_COL(6));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_COL[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|ALT_INV_GPIO_RAM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_COL(7));
END structure;


