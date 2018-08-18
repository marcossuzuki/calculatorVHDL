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

-- DATE "08/04/2018 20:31:00"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Counter IS
    PORT (
	clock : IN std_logic;
	enable : IN std_logic;
	stop : IN std_logic;
	initValue : IN std_logic_vector(7 DOWNTO 0);
	output : OUT std_logic_vector(7 DOWNTO 0);
	finished : OUT std_logic
	);
END Counter;

-- Design Ports Information
-- output[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[5]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[6]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[7]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- finished	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- initValue[0]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- stop	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- initValue[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- initValue[2]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- initValue[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- initValue[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- initValue[5]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- initValue[6]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- initValue[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_initValue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_finished : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stop~combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \internalValue[0]~8_combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \prevEnable~feeder_combout\ : std_logic;
SIGNAL \prevEnable~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.writingInTheOutput~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.stoped~regout\ : std_logic;
SIGNAL \p1~0_combout\ : std_logic;
SIGNAL \internalValue[0]~10_combout\ : std_logic;
SIGNAL \state.increasing~feeder_combout\ : std_logic;
SIGNAL \state.increasing~regout\ : std_logic;
SIGNAL \output[0]~reg0_regout\ : std_logic;
SIGNAL \internalValue[0]~9\ : std_logic;
SIGNAL \internalValue[1]~11_combout\ : std_logic;
SIGNAL \output[1]~reg0feeder_combout\ : std_logic;
SIGNAL \output[1]~reg0_regout\ : std_logic;
SIGNAL \internalValue[1]~12\ : std_logic;
SIGNAL \internalValue[2]~13_combout\ : std_logic;
SIGNAL \output[2]~reg0feeder_combout\ : std_logic;
SIGNAL \output[2]~reg0_regout\ : std_logic;
SIGNAL \internalValue[2]~14\ : std_logic;
SIGNAL \internalValue[3]~15_combout\ : std_logic;
SIGNAL \output[3]~reg0feeder_combout\ : std_logic;
SIGNAL \output[3]~reg0_regout\ : std_logic;
SIGNAL \internalValue[3]~16\ : std_logic;
SIGNAL \internalValue[4]~17_combout\ : std_logic;
SIGNAL \output[4]~reg0_regout\ : std_logic;
SIGNAL \internalValue[4]~18\ : std_logic;
SIGNAL \internalValue[5]~19_combout\ : std_logic;
SIGNAL \output[5]~reg0_regout\ : std_logic;
SIGNAL \internalValue[5]~20\ : std_logic;
SIGNAL \internalValue[6]~21_combout\ : std_logic;
SIGNAL \output[6]~reg0_regout\ : std_logic;
SIGNAL \internalValue[6]~22\ : std_logic;
SIGNAL \internalValue[7]~23_combout\ : std_logic;
SIGNAL \output[7]~reg0_regout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \finished~reg0_regout\ : std_logic;
SIGNAL internalValue : std_logic_vector(7 DOWNTO 0);
SIGNAL \initValue~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_state.increasing~regout\ : std_logic;
SIGNAL \ALT_INV_finished~reg0_regout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_enable <= enable;
ww_stop <= stop;
ww_initValue <= initValue;
output <= ww_output;
finished <= ww_finished;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\ALT_INV_state.increasing~regout\ <= NOT \state.increasing~regout\;
\ALT_INV_finished~reg0_regout\ <= NOT \finished~reg0_regout\;

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\stop~I\ : cycloneii_io
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
	padio => ww_stop,
	combout => \stop~combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y23_N0
\internalValue[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \internalValue[0]~8_combout\ = internalValue(0) $ (VCC)
-- \internalValue[0]~9\ = CARRY(internalValue(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => internalValue(0),
	datad => VCC,
	combout => \internalValue[0]~8_combout\,
	cout => \internalValue[0]~9\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\initValue[0]~I\ : cycloneii_io
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
	padio => ww_initValue(0),
	combout => \initValue~combout\(0));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
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
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: LCCOMB_X26_Y23_N22
\prevEnable~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \prevEnable~feeder_combout\ = \enable~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \enable~combout\,
	combout => \prevEnable~feeder_combout\);

-- Location: LCFF_X26_Y23_N23
prevEnable : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \prevEnable~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prevEnable~regout\);

-- Location: LCCOMB_X26_Y23_N30
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\stop~combout\ & \state.increasing~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datad => \state.increasing~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X26_Y23_N31
\state.writingInTheOutput\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.writingInTheOutput~regout\);

-- Location: LCCOMB_X26_Y23_N24
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state.writingInTheOutput~regout\ & ((\state.stoped~regout\) # ((\enable~combout\ & !\prevEnable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \prevEnable~regout\,
	datac => \state.stoped~regout\,
	datad => \state.writingInTheOutput~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X26_Y23_N25
\state.stoped\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.stoped~regout\);

-- Location: LCCOMB_X26_Y23_N28
\p1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1~0_combout\ = (\enable~combout\ & !\prevEnable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datad => \prevEnable~regout\,
	combout => \p1~0_combout\);

-- Location: LCCOMB_X26_Y23_N20
\internalValue[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \internalValue[0]~10_combout\ = (\stop~combout\ & (((!\state.stoped~regout\ & \p1~0_combout\)))) # (!\stop~combout\ & ((\state.increasing~regout\) # ((!\state.stoped~regout\ & \p1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datab => \state.increasing~regout\,
	datac => \state.stoped~regout\,
	datad => \p1~0_combout\,
	combout => \internalValue[0]~10_combout\);

-- Location: LCCOMB_X26_Y23_N26
\state.increasing~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.increasing~feeder_combout\ = \internalValue[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \internalValue[0]~10_combout\,
	combout => \state.increasing~feeder_combout\);

-- Location: LCFF_X26_Y23_N27
\state.increasing\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state.increasing~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.increasing~regout\);

-- Location: LCFF_X26_Y23_N1
\internalValue[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \internalValue[0]~8_combout\,
	sdata => \initValue~combout\(0),
	sload => \ALT_INV_state.increasing~regout\,
	ena => \internalValue[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => internalValue(0));

-- Location: LCFF_X25_Y23_N13
\output[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => internalValue(0),
	sload => VCC,
	ena => \state.writingInTheOutput~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[0]~reg0_regout\);

-- Location: LCCOMB_X26_Y23_N2
\internalValue[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \internalValue[1]~11_combout\ = (internalValue(1) & (!\internalValue[0]~9\)) # (!internalValue(1) & ((\internalValue[0]~9\) # (GND)))
-- \internalValue[1]~12\ = CARRY((!\internalValue[0]~9\) # (!internalValue(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internalValue(1),
	datad => VCC,
	cin => \internalValue[0]~9\,
	combout => \internalValue[1]~11_combout\,
	cout => \internalValue[1]~12\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\initValue[1]~I\ : cycloneii_io
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
	padio => ww_initValue(1),
	combout => \initValue~combout\(1));

-- Location: LCFF_X26_Y23_N3
\internalValue[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \internalValue[1]~11_combout\,
	sdata => \initValue~combout\(1),
	sload => \ALT_INV_state.increasing~regout\,
	ena => \internalValue[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => internalValue(1));

-- Location: LCCOMB_X25_Y23_N18
\output[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \output[1]~reg0feeder_combout\ = internalValue(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => internalValue(1),
	combout => \output[1]~reg0feeder_combout\);

-- Location: LCFF_X25_Y23_N19
\output[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \output[1]~reg0feeder_combout\,
	ena => \state.writingInTheOutput~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[1]~reg0_regout\);

-- Location: LCCOMB_X26_Y23_N4
\internalValue[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \internalValue[2]~13_combout\ = (internalValue(2) & (\internalValue[1]~12\ $ (GND))) # (!internalValue(2) & (!\internalValue[1]~12\ & VCC))
-- \internalValue[2]~14\ = CARRY((internalValue(2) & !\internalValue[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internalValue(2),
	datad => VCC,
	cin => \internalValue[1]~12\,
	combout => \internalValue[2]~13_combout\,
	cout => \internalValue[2]~14\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\initValue[2]~I\ : cycloneii_io
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
	padio => ww_initValue(2),
	combout => \initValue~combout\(2));

-- Location: LCFF_X26_Y23_N5
\internalValue[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \internalValue[2]~13_combout\,
	sdata => \initValue~combout\(2),
	sload => \ALT_INV_state.increasing~regout\,
	ena => \internalValue[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => internalValue(2));

-- Location: LCCOMB_X25_Y23_N20
\output[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \output[2]~reg0feeder_combout\ = internalValue(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => internalValue(2),
	combout => \output[2]~reg0feeder_combout\);

-- Location: LCFF_X25_Y23_N21
\output[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \output[2]~reg0feeder_combout\,
	ena => \state.writingInTheOutput~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[2]~reg0_regout\);

-- Location: LCCOMB_X26_Y23_N6
\internalValue[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \internalValue[3]~15_combout\ = (internalValue(3) & (!\internalValue[2]~14\)) # (!internalValue(3) & ((\internalValue[2]~14\) # (GND)))
-- \internalValue[3]~16\ = CARRY((!\internalValue[2]~14\) # (!internalValue(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internalValue(3),
	datad => VCC,
	cin => \internalValue[2]~14\,
	combout => \internalValue[3]~15_combout\,
	cout => \internalValue[3]~16\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\initValue[3]~I\ : cycloneii_io
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
	padio => ww_initValue(3),
	combout => \initValue~combout\(3));

-- Location: LCFF_X26_Y23_N7
\internalValue[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \internalValue[3]~15_combout\,
	sdata => \initValue~combout\(3),
	sload => \ALT_INV_state.increasing~regout\,
	ena => \internalValue[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => internalValue(3));

-- Location: LCCOMB_X25_Y23_N10
\output[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \output[3]~reg0feeder_combout\ = internalValue(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => internalValue(3),
	combout => \output[3]~reg0feeder_combout\);

-- Location: LCFF_X25_Y23_N11
\output[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \output[3]~reg0feeder_combout\,
	ena => \state.writingInTheOutput~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[3]~reg0_regout\);

-- Location: LCCOMB_X26_Y23_N8
\internalValue[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \internalValue[4]~17_combout\ = (internalValue(4) & (\internalValue[3]~16\ $ (GND))) # (!internalValue(4) & (!\internalValue[3]~16\ & VCC))
-- \internalValue[4]~18\ = CARRY((internalValue(4) & !\internalValue[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internalValue(4),
	datad => VCC,
	cin => \internalValue[3]~16\,
	combout => \internalValue[4]~17_combout\,
	cout => \internalValue[4]~18\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\initValue[4]~I\ : cycloneii_io
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
	padio => ww_initValue(4),
	combout => \initValue~combout\(4));

-- Location: LCFF_X26_Y23_N9
\internalValue[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \internalValue[4]~17_combout\,
	sdata => \initValue~combout\(4),
	sload => \ALT_INV_state.increasing~regout\,
	ena => \internalValue[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => internalValue(4));

-- Location: LCFF_X25_Y23_N5
\output[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => internalValue(4),
	sload => VCC,
	ena => \state.writingInTheOutput~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[4]~reg0_regout\);

-- Location: LCCOMB_X26_Y23_N10
\internalValue[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \internalValue[5]~19_combout\ = (internalValue(5) & (!\internalValue[4]~18\)) # (!internalValue(5) & ((\internalValue[4]~18\) # (GND)))
-- \internalValue[5]~20\ = CARRY((!\internalValue[4]~18\) # (!internalValue(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internalValue(5),
	datad => VCC,
	cin => \internalValue[4]~18\,
	combout => \internalValue[5]~19_combout\,
	cout => \internalValue[5]~20\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\initValue[5]~I\ : cycloneii_io
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
	padio => ww_initValue(5),
	combout => \initValue~combout\(5));

-- Location: LCFF_X26_Y23_N11
\internalValue[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \internalValue[5]~19_combout\,
	sdata => \initValue~combout\(5),
	sload => \ALT_INV_state.increasing~regout\,
	ena => \internalValue[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => internalValue(5));

-- Location: LCFF_X25_Y23_N23
\output[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => internalValue(5),
	sload => VCC,
	ena => \state.writingInTheOutput~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[5]~reg0_regout\);

-- Location: LCCOMB_X26_Y23_N12
\internalValue[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \internalValue[6]~21_combout\ = (internalValue(6) & (\internalValue[5]~20\ $ (GND))) # (!internalValue(6) & (!\internalValue[5]~20\ & VCC))
-- \internalValue[6]~22\ = CARRY((internalValue(6) & !\internalValue[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internalValue(6),
	datad => VCC,
	cin => \internalValue[5]~20\,
	combout => \internalValue[6]~21_combout\,
	cout => \internalValue[6]~22\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\initValue[6]~I\ : cycloneii_io
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
	padio => ww_initValue(6),
	combout => \initValue~combout\(6));

-- Location: LCFF_X26_Y23_N13
\internalValue[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \internalValue[6]~21_combout\,
	sdata => \initValue~combout\(6),
	sload => \ALT_INV_state.increasing~regout\,
	ena => \internalValue[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => internalValue(6));

-- Location: LCFF_X25_Y23_N9
\output[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => internalValue(6),
	sload => VCC,
	ena => \state.writingInTheOutput~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[6]~reg0_regout\);

-- Location: LCCOMB_X26_Y23_N14
\internalValue[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \internalValue[7]~23_combout\ = \internalValue[6]~22\ $ (internalValue(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => internalValue(7),
	cin => \internalValue[6]~22\,
	combout => \internalValue[7]~23_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\initValue[7]~I\ : cycloneii_io
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
	padio => ww_initValue(7),
	combout => \initValue~combout\(7));

-- Location: LCFF_X26_Y23_N15
\internalValue[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \internalValue[7]~23_combout\,
	sdata => \initValue~combout\(7),
	sload => \ALT_INV_state.increasing~regout\,
	ena => \internalValue[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => internalValue(7));

-- Location: LCFF_X25_Y23_N27
\output[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => internalValue(7),
	sload => VCC,
	ena => \state.writingInTheOutput~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output[7]~reg0_regout\);

-- Location: LCCOMB_X26_Y23_N16
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.stoped~regout\ & (\state.increasing~regout\ & (\finished~reg0_regout\))) # (!\state.stoped~regout\ & (((\finished~reg0_regout\) # (\p1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.stoped~regout\,
	datab => \state.increasing~regout\,
	datac => \finished~reg0_regout\,
	datad => \p1~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X26_Y23_N17
\finished~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \finished~reg0_regout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[0]~I\ : cycloneii_io
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
	datain => \output[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[1]~I\ : cycloneii_io
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
	datain => \output[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[2]~I\ : cycloneii_io
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
	datain => \output[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[3]~I\ : cycloneii_io
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
	datain => \output[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[4]~I\ : cycloneii_io
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
	datain => \output[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(4));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[5]~I\ : cycloneii_io
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
	datain => \output[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(5));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[6]~I\ : cycloneii_io
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
	datain => \output[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(6));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[7]~I\ : cycloneii_io
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
	datain => \output[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(7));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\finished~I\ : cycloneii_io
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
	datain => \ALT_INV_finished~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_finished);
END structure;


