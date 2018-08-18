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

-- DATE "08/05/2018 19:19:11"

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

ENTITY 	PWM IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	ENABLE : IN std_logic;
	DUTY : IN std_logic_vector(7 DOWNTO 0);
	PWM_OUT : OUT std_logic
	);
END PWM;

-- Design Ports Information
-- PWM_OUT	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENABLE	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY[7]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY[5]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY[4]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY[3]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY[1]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DUTY[0]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PWM IS
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
SIGNAL ww_RST : std_logic;
SIGNAL ww_ENABLE : std_logic;
SIGNAL ww_DUTY : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PWM_OUT : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \CONT[3]~14_combout\ : std_logic;
SIGNAL \CONT[5]~18_combout\ : std_logic;
SIGNAL \CONT[6]~20_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \CONT[0]~8_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \ENABLE~combout\ : std_logic;
SIGNAL \CONT[0]~9\ : std_logic;
SIGNAL \CONT[1]~10_combout\ : std_logic;
SIGNAL \CONT[1]~11\ : std_logic;
SIGNAL \CONT[2]~12_combout\ : std_logic;
SIGNAL \CONT[2]~13\ : std_logic;
SIGNAL \CONT[3]~15\ : std_logic;
SIGNAL \CONT[4]~16_combout\ : std_logic;
SIGNAL \CONT[4]~17\ : std_logic;
SIGNAL \CONT[5]~19\ : std_logic;
SIGNAL \CONT[6]~21\ : std_logic;
SIGNAL \CONT[7]~22_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \s_PWM_OUT~0_combout\ : std_logic;
SIGNAL \s_PWM_OUT~regout\ : std_logic;
SIGNAL CONT : std_logic_vector(7 DOWNTO 0);
SIGNAL \DUTY~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_ENABLE~combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_ENABLE <= ENABLE;
ww_DUTY <= DUTY;
PWM_OUT <= ww_PWM_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);
\ALT_INV_ENABLE~combout\ <= NOT \ENABLE~combout\;

-- Location: LCCOMB_X49_Y22_N14
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\DUTY~combout\(1) & (!\Add0~1_cout\)) # (!\DUTY~combout\(1) & (\Add0~1_cout\ & VCC))
-- \Add0~3\ = CARRY((\DUTY~combout\(1) & !\Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY~combout\(1),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X49_Y22_N16
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\DUTY~combout\(2) & (\Add0~3\ $ (GND))) # (!\DUTY~combout\(2) & ((GND) # (!\Add0~3\)))
-- \Add0~5\ = CARRY((!\Add0~3\) # (!\DUTY~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUTY~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X49_Y22_N20
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\DUTY~combout\(4) & (\Add0~7\ $ (GND))) # (!\DUTY~combout\(4) & ((GND) # (!\Add0~7\)))
-- \Add0~9\ = CARRY((!\Add0~7\) # (!\DUTY~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY~combout\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X49_Y22_N24
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\DUTY~combout\(6) & (\Add0~11\ $ (GND))) # (!\DUTY~combout\(6) & ((GND) # (!\Add0~11\)))
-- \Add0~13\ = CARRY((!\Add0~11\) # (!\DUTY~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUTY~combout\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X49_Y22_N26
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \DUTY~combout\(7) $ (\Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUTY~combout\(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCFF_X48_Y22_N13
\CONT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT[6]~20_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(6));

-- Location: LCFF_X48_Y22_N11
\CONT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT[5]~18_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(5));

-- Location: LCFF_X48_Y22_N7
\CONT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT[3]~14_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(3));

-- Location: LCCOMB_X48_Y22_N6
\CONT[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[3]~14_combout\ = (CONT(3) & (!\CONT[2]~13\)) # (!CONT(3) & ((\CONT[2]~13\) # (GND)))
-- \CONT[3]~15\ = CARRY((!\CONT[2]~13\) # (!CONT(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONT(3),
	datad => VCC,
	cin => \CONT[2]~13\,
	combout => \CONT[3]~14_combout\,
	cout => \CONT[3]~15\);

-- Location: LCCOMB_X48_Y22_N10
\CONT[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[5]~18_combout\ = (CONT(5) & (!\CONT[4]~17\)) # (!CONT(5) & ((\CONT[4]~17\) # (GND)))
-- \CONT[5]~19\ = CARRY((!\CONT[4]~17\) # (!CONT(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONT(5),
	datad => VCC,
	cin => \CONT[4]~17\,
	combout => \CONT[5]~18_combout\,
	cout => \CONT[5]~19\);

-- Location: LCCOMB_X48_Y22_N12
\CONT[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[6]~20_combout\ = (CONT(6) & (\CONT[5]~19\ $ (GND))) # (!CONT(6) & (!\CONT[5]~19\ & VCC))
-- \CONT[6]~21\ = CARRY((CONT(6) & !\CONT[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONT(6),
	datad => VCC,
	cin => \CONT[5]~19\,
	combout => \CONT[6]~20_combout\,
	cout => \CONT[6]~21\);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY[7]~I\ : cycloneii_io
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
	padio => ww_DUTY(7),
	combout => \DUTY~combout\(7));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY[5]~I\ : cycloneii_io
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
	padio => ww_DUTY(5),
	combout => \DUTY~combout\(5));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY[4]~I\ : cycloneii_io
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
	padio => ww_DUTY(4),
	combout => \DUTY~combout\(4));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY[1]~I\ : cycloneii_io
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
	padio => ww_DUTY(1),
	combout => \DUTY~combout\(1));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X48_Y22_N0
\CONT[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[0]~8_combout\ = CONT(0) $ (VCC)
-- \CONT[0]~9\ = CARRY(CONT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONT(0),
	datad => VCC,
	combout => \CONT[0]~8_combout\,
	cout => \CONT[0]~9\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : cycloneii_io
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
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: CLKCTRL_G1
\RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~clkctrl_outclk\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENABLE~I\ : cycloneii_io
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
	padio => ww_ENABLE,
	combout => \ENABLE~combout\);

-- Location: LCFF_X48_Y22_N1
\CONT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT[0]~8_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(0));

-- Location: LCCOMB_X48_Y22_N2
\CONT[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[1]~10_combout\ = (CONT(1) & (!\CONT[0]~9\)) # (!CONT(1) & ((\CONT[0]~9\) # (GND)))
-- \CONT[1]~11\ = CARRY((!\CONT[0]~9\) # (!CONT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONT(1),
	datad => VCC,
	cin => \CONT[0]~9\,
	combout => \CONT[1]~10_combout\,
	cout => \CONT[1]~11\);

-- Location: LCFF_X48_Y22_N3
\CONT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT[1]~10_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(1));

-- Location: LCCOMB_X48_Y22_N4
\CONT[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[2]~12_combout\ = (CONT(2) & (\CONT[1]~11\ $ (GND))) # (!CONT(2) & (!\CONT[1]~11\ & VCC))
-- \CONT[2]~13\ = CARRY((CONT(2) & !\CONT[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONT(2),
	datad => VCC,
	cin => \CONT[1]~11\,
	combout => \CONT[2]~12_combout\,
	cout => \CONT[2]~13\);

-- Location: LCFF_X48_Y22_N5
\CONT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT[2]~12_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(2));

-- Location: LCCOMB_X48_Y22_N8
\CONT[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[4]~16_combout\ = (CONT(4) & (\CONT[3]~15\ $ (GND))) # (!CONT(4) & (!\CONT[3]~15\ & VCC))
-- \CONT[4]~17\ = CARRY((CONT(4) & !\CONT[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONT(4),
	datad => VCC,
	cin => \CONT[3]~15\,
	combout => \CONT[4]~16_combout\,
	cout => \CONT[4]~17\);

-- Location: LCFF_X48_Y22_N9
\CONT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT[4]~16_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(4));

-- Location: LCCOMB_X48_Y22_N14
\CONT[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONT[7]~22_combout\ = CONT(7) $ (\CONT[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONT(7),
	cin => \CONT[6]~21\,
	combout => \CONT[7]~22_combout\);

-- Location: LCFF_X48_Y22_N15
\CONT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CONT[7]~22_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \ALT_INV_ENABLE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CONT(7));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY[6]~I\ : cycloneii_io
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
	padio => ww_DUTY(6),
	combout => \DUTY~combout\(6));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY[3]~I\ : cycloneii_io
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
	padio => ww_DUTY(3),
	combout => \DUTY~combout\(3));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY[2]~I\ : cycloneii_io
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
	padio => ww_DUTY(2),
	combout => \DUTY~combout\(2));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DUTY[0]~I\ : cycloneii_io
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
	padio => ww_DUTY(0),
	combout => \DUTY~combout\(0));

-- Location: LCCOMB_X49_Y22_N12
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(!\DUTY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUTY~combout\(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X49_Y22_N18
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\DUTY~combout\(3) & (!\Add0~5\)) # (!\DUTY~combout\(3) & (\Add0~5\ & VCC))
-- \Add0~7\ = CARRY((\DUTY~combout\(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUTY~combout\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X49_Y22_N22
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\DUTY~combout\(5) & (!\Add0~9\)) # (!\DUTY~combout\(5) & (\Add0~9\ & VCC))
-- \Add0~11\ = CARRY((\DUTY~combout\(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY~combout\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X48_Y22_N16
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\DUTY~combout\(0) & CONT(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY~combout\(0),
	datab => CONT(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X48_Y22_N18
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\Add0~2_combout\ & ((!\LessThan1~1_cout\) # (!CONT(1)))) # (!\Add0~2_combout\ & (!CONT(1) & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => CONT(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X48_Y22_N20
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\Add0~4_combout\ & (CONT(2) & !\LessThan1~3_cout\)) # (!\Add0~4_combout\ & ((CONT(2)) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => CONT(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X48_Y22_N22
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((CONT(3) & (\Add0~6_combout\ & !\LessThan1~5_cout\)) # (!CONT(3) & ((\Add0~6_combout\) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONT(3),
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X48_Y22_N24
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\Add0~8_combout\ & (CONT(4) & !\LessThan1~7_cout\)) # (!\Add0~8_combout\ & ((CONT(4)) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => CONT(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X48_Y22_N26
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((CONT(5) & (\Add0~10_combout\ & !\LessThan1~9_cout\)) # (!CONT(5) & ((\Add0~10_combout\) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONT(5),
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X48_Y22_N28
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((CONT(6) & ((!\LessThan1~11_cout\) # (!\Add0~12_combout\))) # (!CONT(6) & (!\Add0~12_combout\ & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONT(6),
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X48_Y22_N30
\LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\Add0~14_combout\ & (CONT(7) & \LessThan1~13_cout\)) # (!\Add0~14_combout\ & ((CONT(7)) # (\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => CONT(7),
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X49_Y22_N0
\s_PWM_OUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_PWM_OUT~0_combout\ = (\LessThan1~14_combout\ & \ENABLE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~14_combout\,
	datad => \ENABLE~combout\,
	combout => \s_PWM_OUT~0_combout\);

-- Location: LCFF_X49_Y22_N1
s_PWM_OUT : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \s_PWM_OUT~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_PWM_OUT~regout\);

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PWM_OUT~I\ : cycloneii_io
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
	datain => \s_PWM_OUT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PWM_OUT);
END structure;


