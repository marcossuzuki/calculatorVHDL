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

-- DATE "08/06/2018 01:19:15"

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

ENTITY 	clock_div IS
    PORT (
	Clock : IN std_logic;
	E : IN std_logic;
	clock_out : BUFFER std_logic
	);
END clock_div;

-- Design Ports Information
-- clock_out	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF clock_div IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_clock_out : std_logic;
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \E~combout\ : std_logic;
SIGNAL \COUNT[0]~0_combout\ : std_logic;
SIGNAL \COUNT[1]~1_combout\ : std_logic;
SIGNAL \COUNT[3]~3_combout\ : std_logic;
SIGNAL \COUNT[3]~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \COUNT[2]~2_combout\ : std_logic;
SIGNAL \clock_out$latch~0_combout\ : std_logic;
SIGNAL COUNT : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_E <= E;
clock_out <= ww_clock_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
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
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E~I\ : cycloneii_io
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
	padio => ww_E,
	combout => \E~combout\);

-- Location: LCCOMB_X1_Y18_N24
\COUNT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[0]~0_combout\ = COUNT(0) $ (!\E~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNT(0),
	datad => \E~combout\,
	combout => \COUNT[0]~0_combout\);

-- Location: LCCOMB_X1_Y18_N22
\COUNT[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[1]~1_combout\ = COUNT(1) $ (((!\E~combout\ & COUNT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\,
	datac => COUNT(1),
	datad => COUNT(0),
	combout => \COUNT[1]~1_combout\);

-- Location: LCFF_X1_Y18_N23
\COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \COUNT[1]~1_combout\,
	aclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(1));

-- Location: LCCOMB_X1_Y18_N12
\COUNT[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[3]~3_combout\ = (!\E~combout\ & (COUNT(2) & (COUNT(0) & COUNT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\,
	datab => COUNT(2),
	datac => COUNT(0),
	datad => COUNT(1),
	combout => \COUNT[3]~3_combout\);

-- Location: LCCOMB_X1_Y18_N20
\COUNT[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[3]~4_combout\ = COUNT(3) $ (\COUNT[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNT(3),
	datad => \COUNT[3]~3_combout\,
	combout => \COUNT[3]~4_combout\);

-- Location: LCFF_X1_Y18_N21
\COUNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \COUNT[3]~4_combout\,
	aclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(3));

-- Location: LCCOMB_X1_Y18_N30
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (COUNT(0) & (COUNT(1) & (!COUNT(3) & COUNT(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(0),
	datab => COUNT(1),
	datac => COUNT(3),
	datad => COUNT(2),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X1_Y18_N25
\COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \COUNT[0]~0_combout\,
	aclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(0));

-- Location: LCCOMB_X1_Y18_N0
\COUNT[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[2]~2_combout\ = COUNT(2) $ (((!\E~combout\ & (COUNT(0) & COUNT(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~combout\,
	datab => COUNT(0),
	datac => COUNT(2),
	datad => COUNT(1),
	combout => \COUNT[2]~2_combout\);

-- Location: LCFF_X1_Y18_N1
\COUNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \COUNT[2]~2_combout\,
	aclr => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(2));

-- Location: LCCOMB_X1_Y18_N26
\clock_out$latch~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_out$latch~0_combout\ = \clock_out$latch~0_combout\ $ (((COUNT(2) & (COUNT(0) & COUNT(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(2),
	datab => COUNT(0),
	datac => \clock_out$latch~0_combout\,
	datad => COUNT(1),
	combout => \clock_out$latch~0_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clock_out~I\ : cycloneii_io
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
	datain => \clock_out$latch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clock_out);
END structure;


