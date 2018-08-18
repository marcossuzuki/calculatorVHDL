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

-- DATE "08/04/2018 20:36:47"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	add IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	in1 : IN std_logic_vector(0 TO 7);
	in2 : IN std_logic_vector(0 TO 7);
	output : OUT std_logic_vector(0 TO 7);
	start : IN std_logic;
	done : OUT std_logic
	);
END add;

-- Design Ports Information
-- clk	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[5]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF add IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_in1 : std_logic_vector(0 TO 7);
SIGNAL ww_in2 : std_logic_vector(0 TO 7);
SIGNAL ww_output : std_logic_vector(0 TO 7);
SIGNAL ww_start : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \addgen:3:adder|c_out~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \clk_count[0]~64_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \in1[3]~input_o\ : std_logic;
SIGNAL \in2[5]~input_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \in1[7]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \in2[1]~input_o\ : std_logic;
SIGNAL \addgen:1:adder|c_out~0_combout\ : std_logic;
SIGNAL \in1[2]~input_o\ : std_logic;
SIGNAL \in2[3]~input_o\ : std_logic;
SIGNAL \addgen:3:adder|c_out~0_combout\ : std_logic;
SIGNAL \in2[2]~input_o\ : std_logic;
SIGNAL \addgen:2:adder|c_out~0_combout\ : std_logic;
SIGNAL \addgen:1:adder|c_out~1_combout\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \add_last|c_out~0_combout\ : std_logic;
SIGNAL \in2[7]~input_o\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \in1[6]~input_o\ : std_logic;
SIGNAL \in2[6]~input_o\ : std_logic;
SIGNAL \addgen:6:adder|o~0_combout\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \in1[5]~input_o\ : std_logic;
SIGNAL \addgen:6:adder|c_out~0_combout\ : std_logic;
SIGNAL \addgen:5:adder|o~0_combout\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \in2[4]~input_o\ : std_logic;
SIGNAL \in1[4]~input_o\ : std_logic;
SIGNAL \addgen:4:adder|o~0_combout\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \addgen:4:adder|c_out~0_combout\ : std_logic;
SIGNAL \addgen:4:adder|c_out~1_combout\ : std_logic;
SIGNAL \addgen:3:adder|o~0_combout\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \addgen:2:adder|o~combout\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \addgen:1:adder|o~0_combout\ : std_logic;
SIGNAL \output~6_combout\ : std_logic;
SIGNAL \output~7_combout\ : std_logic;
SIGNAL \in2[0]~input_o\ : std_logic;
SIGNAL \output~8_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \clk_count[29]~66_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \clk_count[1]~65_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~48\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~60\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \clk_count[31]~67_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_in1 <= in1;
ww_in2 <= in2;
output <= ww_output;
ww_start <= start;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X27_Y9_N12
\Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~10\ & (((\clk_count[29]~66_combout\)) # (!\Add0~11_combout\))) # (!\Add0~10\ & (((\Add0~11_combout\ & !\clk_count[29]~66_combout\)) # (GND)))
-- \Add0~12\ = CARRY(((\clk_count[29]~66_combout\) # (!\Add0~10\)) # (!\Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X27_Y8_N0
\Add0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~30\ & (((\clk_count[29]~66_combout\)) # (!\Add0~31_combout\))) # (!\Add0~30\ & (((\Add0~31_combout\ & !\clk_count[29]~66_combout\)) # (GND)))
-- \Add0~32\ = CARRY(((\clk_count[29]~66_combout\) # (!\Add0~30\)) # (!\Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X27_Y8_N2
\Add0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~32\ & (\Add0~33_combout\ & (!\clk_count[29]~66_combout\ & VCC))) # (!\Add0~32\ & ((((\Add0~33_combout\ & !\clk_count[29]~66_combout\)))))
-- \Add0~34\ = CARRY((\Add0~33_combout\ & (!\clk_count[29]~66_combout\ & !\Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~33_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X27_Y8_N4
\Add0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\Add0~34\ & (((\clk_count[29]~66_combout\)) # (!\Add0~35_combout\))) # (!\Add0~34\ & (((\Add0~35_combout\ & !\clk_count[29]~66_combout\)) # (GND)))
-- \Add0~36\ = CARRY(((\clk_count[29]~66_combout\) # (!\Add0~34\)) # (!\Add0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X27_Y8_N6
\Add0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\Add0~36\ & (\Add0~37_combout\ & (!\clk_count[29]~66_combout\ & VCC))) # (!\Add0~36\ & ((((\Add0~37_combout\ & !\clk_count[29]~66_combout\)))))
-- \Add0~38\ = CARRY((\Add0~37_combout\ & (!\clk_count[29]~66_combout\ & !\Add0~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~36\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X27_Y8_N8
\Add0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38\ & (((\clk_count[29]~66_combout\)) # (!\Add0~39_combout\))) # (!\Add0~38\ & (((\Add0~39_combout\ & !\clk_count[29]~66_combout\)) # (GND)))
-- \Add0~40\ = CARRY(((\clk_count[29]~66_combout\) # (!\Add0~38\)) # (!\Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~39_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X27_Y8_N10
\Add0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~40\ & (\Add0~41_combout\ & (!\clk_count[29]~66_combout\ & VCC))) # (!\Add0~40\ & ((((\Add0~41_combout\ & !\clk_count[29]~66_combout\)))))
-- \Add0~42\ = CARRY((\Add0~41_combout\ & (!\clk_count[29]~66_combout\ & !\Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

-- Location: LCCOMB_X32_Y18_N12
\addgen:3:adder|c_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:3:adder|c_out~1_combout\ = (\addgen:4:adder|c_out~1_combout\ & ((\in1[3]~input_o\) # (\in2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[3]~input_o\,
	datac => \addgen:4:adder|c_out~1_combout\,
	datad => \in2[3]~input_o\,
	combout => \addgen:3:adder|c_out~1_combout\);

-- Location: LCCOMB_X26_Y8_N6
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~41_combout\ & (!\Add0~39_combout\ & (!\Add0~43_combout\ & !\Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \Add0~39_combout\,
	datac => \Add0~43_combout\,
	datad => \Add0~45_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X26_Y8_N10
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~37_combout\ & (!\Add0~35_combout\ & (!\Add0~31_combout\ & !\Add0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datab => \Add0~35_combout\,
	datac => \Add0~31_combout\,
	datad => \Add0~33_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X26_Y8_N20
\clk_count[0]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_count[0]~64_combout\ = (!\clk_count[0]~64_combout\ & (!\start~input_o\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_count[0]~64_combout\,
	datac => \start~input_o\,
	datad => \rst~input_o\,
	combout => \clk_count[0]~64_combout\);

-- Location: IOIBUF_X16_Y0_N1
\in1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\in1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(3),
	o => \in1[3]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\in2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(5),
	o => \in2[5]~input_o\);

-- Location: IOOBUF_X33_Y25_N2
\output[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~0_combout\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\output[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~1_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~2_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~3_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~4_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~5_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~6_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~8_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\done~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~10_combout\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOIBUF_X29_Y31_N8
\in1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(7),
	o => \in1[7]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\in2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(1),
	o => \in2[1]~input_o\);

-- Location: LCCOMB_X32_Y18_N0
\addgen:1:adder|c_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:1:adder|c_out~0_combout\ = (\in1[1]~input_o\ & \in2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	datac => \in2[1]~input_o\,
	combout => \addgen:1:adder|c_out~0_combout\);

-- Location: IOIBUF_X33_Y11_N1
\in1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(2),
	o => \in1[2]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\in2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(3),
	o => \in2[3]~input_o\);

-- Location: LCCOMB_X32_Y18_N26
\addgen:3:adder|c_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:3:adder|c_out~0_combout\ = (\in1[3]~input_o\ & \in2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[3]~input_o\,
	datad => \in2[3]~input_o\,
	combout => \addgen:3:adder|c_out~0_combout\);

-- Location: IOIBUF_X33_Y12_N1
\in2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(2),
	o => \in2[2]~input_o\);

-- Location: LCCOMB_X32_Y18_N30
\addgen:2:adder|c_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:2:adder|c_out~0_combout\ = (\in1[2]~input_o\ & ((\addgen:3:adder|c_out~1_combout\) # ((\addgen:3:adder|c_out~0_combout\) # (\in2[2]~input_o\)))) # (!\in1[2]~input_o\ & (\in2[2]~input_o\ & ((\addgen:3:adder|c_out~1_combout\) # 
-- (\addgen:3:adder|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addgen:3:adder|c_out~1_combout\,
	datab => \in1[2]~input_o\,
	datac => \addgen:3:adder|c_out~0_combout\,
	datad => \in2[2]~input_o\,
	combout => \addgen:2:adder|c_out~0_combout\);

-- Location: LCCOMB_X32_Y18_N8
\addgen:1:adder|c_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:1:adder|c_out~1_combout\ = (\addgen:2:adder|c_out~0_combout\ & ((\in1[1]~input_o\) # (\in2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	datab => \in2[1]~input_o\,
	datac => \addgen:2:adder|c_out~0_combout\,
	combout => \addgen:1:adder|c_out~1_combout\);

-- Location: IOIBUF_X33_Y28_N1
\in1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: LCCOMB_X32_Y18_N2
\add_last|c_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \add_last|c_out~0_combout\ = (\in2[0]~input_o\ & ((\addgen:1:adder|c_out~0_combout\) # ((\addgen:1:adder|c_out~1_combout\) # (\in1[0]~input_o\)))) # (!\in2[0]~input_o\ & (\in1[0]~input_o\ & ((\addgen:1:adder|c_out~0_combout\) # 
-- (\addgen:1:adder|c_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[0]~input_o\,
	datab => \addgen:1:adder|c_out~0_combout\,
	datac => \addgen:1:adder|c_out~1_combout\,
	datad => \in1[0]~input_o\,
	combout => \add_last|c_out~0_combout\);

-- Location: IOIBUF_X33_Y25_N8
\in2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(7),
	o => \in2[7]~input_o\);

-- Location: LCCOMB_X32_Y24_N22
\output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (!\rst~input_o\ & ((\add_last|c_out~0_combout\) # (\in1[7]~input_o\ $ (\in2[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[7]~input_o\,
	datab => \rst~input_o\,
	datac => \add_last|c_out~0_combout\,
	datad => \in2[7]~input_o\,
	combout => \output~0_combout\);

-- Location: IOIBUF_X33_Y24_N1
\in1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(6),
	o => \in1[6]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\in2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(6),
	o => \in2[6]~input_o\);

-- Location: LCCOMB_X32_Y24_N0
\addgen:6:adder|o~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:6:adder|o~0_combout\ = \in1[6]~input_o\ $ (\in2[6]~input_o\ $ (((\in1[7]~input_o\ & \in2[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[7]~input_o\,
	datab => \in1[6]~input_o\,
	datac => \in2[6]~input_o\,
	datad => \in2[7]~input_o\,
	combout => \addgen:6:adder|o~0_combout\);

-- Location: LCCOMB_X32_Y24_N2
\output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (!\rst~input_o\ & ((\add_last|c_out~0_combout\) # (\addgen:6:adder|o~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_last|c_out~0_combout\,
	datac => \rst~input_o\,
	datad => \addgen:6:adder|o~0_combout\,
	combout => \output~1_combout\);

-- Location: IOIBUF_X33_Y15_N1
\in1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(5),
	o => \in1[5]~input_o\);

-- Location: LCCOMB_X32_Y24_N16
\addgen:6:adder|c_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:6:adder|c_out~0_combout\ = (\in1[6]~input_o\ & ((\in2[6]~input_o\) # ((\in1[7]~input_o\ & \in2[7]~input_o\)))) # (!\in1[6]~input_o\ & (\in1[7]~input_o\ & (\in2[6]~input_o\ & \in2[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[7]~input_o\,
	datab => \in1[6]~input_o\,
	datac => \in2[6]~input_o\,
	datad => \in2[7]~input_o\,
	combout => \addgen:6:adder|c_out~0_combout\);

-- Location: LCCOMB_X32_Y24_N12
\addgen:5:adder|o~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:5:adder|o~0_combout\ = \in2[5]~input_o\ $ (\in1[5]~input_o\ $ (\addgen:6:adder|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[5]~input_o\,
	datac => \in1[5]~input_o\,
	datad => \addgen:6:adder|c_out~0_combout\,
	combout => \addgen:5:adder|o~0_combout\);

-- Location: LCCOMB_X32_Y24_N6
\output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (!\rst~input_o\ & ((\addgen:5:adder|o~0_combout\) # (\add_last|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addgen:5:adder|o~0_combout\,
	datab => \rst~input_o\,
	datac => \add_last|c_out~0_combout\,
	combout => \output~2_combout\);

-- Location: IOIBUF_X33_Y27_N1
\in2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(4),
	o => \in2[4]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\in1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(4),
	o => \in1[4]~input_o\);

-- Location: LCCOMB_X32_Y24_N24
\addgen:4:adder|o~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:4:adder|o~0_combout\ = \in1[4]~input_o\ $ (((\in2[5]~input_o\ & ((\addgen:6:adder|c_out~0_combout\) # (\in1[5]~input_o\))) # (!\in2[5]~input_o\ & (\addgen:6:adder|c_out~0_combout\ & \in1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[5]~input_o\,
	datab => \addgen:6:adder|c_out~0_combout\,
	datac => \in1[5]~input_o\,
	datad => \in1[4]~input_o\,
	combout => \addgen:4:adder|o~0_combout\);

-- Location: LCCOMB_X32_Y24_N18
\output~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (!\rst~input_o\ & ((\add_last|c_out~0_combout\) # (\in2[4]~input_o\ $ (\addgen:4:adder|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[4]~input_o\,
	datab => \add_last|c_out~0_combout\,
	datac => \rst~input_o\,
	datad => \addgen:4:adder|o~0_combout\,
	combout => \output~3_combout\);

-- Location: LCCOMB_X32_Y24_N10
\addgen:4:adder|c_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:4:adder|c_out~0_combout\ = (\in2[5]~input_o\ & ((\in1[5]~input_o\) # (\addgen:6:adder|c_out~0_combout\))) # (!\in2[5]~input_o\ & (\in1[5]~input_o\ & \addgen:6:adder|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[5]~input_o\,
	datac => \in1[5]~input_o\,
	datad => \addgen:6:adder|c_out~0_combout\,
	combout => \addgen:4:adder|c_out~0_combout\);

-- Location: LCCOMB_X32_Y24_N20
\addgen:4:adder|c_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:4:adder|c_out~1_combout\ = (\in1[4]~input_o\ & ((\addgen:4:adder|c_out~0_combout\) # (\in2[4]~input_o\))) # (!\in1[4]~input_o\ & (\addgen:4:adder|c_out~0_combout\ & \in2[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[4]~input_o\,
	datac => \addgen:4:adder|c_out~0_combout\,
	datad => \in2[4]~input_o\,
	combout => \addgen:4:adder|c_out~1_combout\);

-- Location: LCCOMB_X32_Y18_N20
\addgen:3:adder|o~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:3:adder|o~0_combout\ = \in1[3]~input_o\ $ (\addgen:4:adder|c_out~1_combout\ $ (\in2[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[3]~input_o\,
	datac => \addgen:4:adder|c_out~1_combout\,
	datad => \in2[3]~input_o\,
	combout => \addgen:3:adder|o~0_combout\);

-- Location: LCCOMB_X32_Y18_N22
\output~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (!\rst~input_o\ & ((\addgen:3:adder|o~0_combout\) # (\add_last|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addgen:3:adder|o~0_combout\,
	datac => \rst~input_o\,
	datad => \add_last|c_out~0_combout\,
	combout => \output~4_combout\);

-- Location: LCCOMB_X32_Y18_N16
\addgen:2:adder|o\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:2:adder|o~combout\ = \in1[2]~input_o\ $ (\in2[2]~input_o\ $ (((\addgen:3:adder|c_out~1_combout\) # (\addgen:3:adder|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addgen:3:adder|c_out~1_combout\,
	datab => \in1[2]~input_o\,
	datac => \addgen:3:adder|c_out~0_combout\,
	datad => \in2[2]~input_o\,
	combout => \addgen:2:adder|o~combout\);

-- Location: LCCOMB_X32_Y18_N18
\output~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (!\rst~input_o\ & ((\addgen:2:adder|o~combout\) # (\add_last|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addgen:2:adder|o~combout\,
	datac => \rst~input_o\,
	datad => \add_last|c_out~0_combout\,
	combout => \output~5_combout\);

-- Location: LCCOMB_X32_Y18_N28
\addgen:1:adder|o~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addgen:1:adder|o~0_combout\ = \in1[1]~input_o\ $ (\in2[1]~input_o\ $ (\addgen:2:adder|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	datab => \in2[1]~input_o\,
	datac => \addgen:2:adder|c_out~0_combout\,
	combout => \addgen:1:adder|o~0_combout\);

-- Location: LCCOMB_X32_Y18_N14
\output~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~6_combout\ = (!\rst~input_o\ & ((\addgen:1:adder|o~0_combout\) # (\add_last|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addgen:1:adder|o~0_combout\,
	datac => \rst~input_o\,
	datad => \add_last|c_out~0_combout\,
	combout => \output~6_combout\);

-- Location: LCCOMB_X32_Y18_N24
\output~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~7_combout\ = (\in1[0]~input_o\) # ((\in1[1]~input_o\ & \in2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	datac => \in2[1]~input_o\,
	datad => \in1[0]~input_o\,
	combout => \output~7_combout\);

-- Location: IOIBUF_X33_Y11_N8
\in2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(0),
	o => \in2[0]~input_o\);

-- Location: LCCOMB_X32_Y18_N10
\output~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~8_combout\ = (!\rst~input_o\ & ((\output~7_combout\) # ((\addgen:1:adder|c_out~1_combout\) # (\in2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \output~7_combout\,
	datac => \addgen:1:adder|c_out~1_combout\,
	datad => \in2[0]~input_o\,
	combout => \output~8_combout\);

-- Location: IOIBUF_X26_Y0_N1
\start~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X26_Y8_N16
\clk_count[29]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_count[29]~66_combout\ = (\start~input_o\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \rst~input_o\,
	combout => \clk_count[29]~66_combout\);

-- Location: LCCOMB_X27_Y9_N2
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\clk_count[0]~64_combout\ & (\clk_count[1]~65_combout\ $ (VCC))) # (!\clk_count[0]~64_combout\ & (\clk_count[1]~65_combout\ & VCC))
-- \Add0~2\ = CARRY((\clk_count[0]~64_combout\ & \clk_count[1]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[0]~64_combout\,
	datab => \clk_count[1]~65_combout\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X26_Y8_N30
\clk_count[1]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_count[1]~65_combout\ = (\Add0~1_combout\ & (!\start~input_o\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~1_combout\,
	datac => \start~input_o\,
	datad => \rst~input_o\,
	combout => \clk_count[1]~65_combout\);

-- Location: LCCOMB_X27_Y9_N4
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~2\ & ((\clk_count[29]~66_combout\) # ((!\Add0~3_combout\)))) # (!\Add0~2\ & (((!\clk_count[29]~66_combout\ & \Add0~3_combout\)) # (GND)))
-- \Add0~4\ = CARRY((\clk_count[29]~66_combout\) # ((!\Add0~2\) # (!\Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X27_Y9_N6
\Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~4\ & (\Add0~5_combout\ & (!\clk_count[29]~66_combout\ & VCC))) # (!\Add0~4\ & ((((\Add0~5_combout\ & !\clk_count[29]~66_combout\)))))
-- \Add0~6\ = CARRY((\Add0~5_combout\ & (!\clk_count[29]~66_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X26_Y8_N0
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\clk_count[0]~64_combout\ & (!\Add0~1_combout\ & (!\start~input_o\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[0]~64_combout\,
	datab => \Add0~1_combout\,
	datac => \start~input_o\,
	datad => \rst~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y9_N8
\Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~6\ & ((\clk_count[29]~66_combout\) # ((!\Add0~7_combout\)))) # (!\Add0~6\ & (((!\clk_count[29]~66_combout\ & \Add0~7_combout\)) # (GND)))
-- \Add0~8\ = CARRY((\clk_count[29]~66_combout\) # ((!\Add0~6\) # (!\Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X27_Y9_N10
\Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8\ & (\Add0~9_combout\ & (!\clk_count[29]~66_combout\ & VCC))) # (!\Add0~8\ & ((((\Add0~9_combout\ & !\clk_count[29]~66_combout\)))))
-- \Add0~10\ = CARRY((\Add0~9_combout\ & (!\clk_count[29]~66_combout\ & !\Add0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X27_Y9_N14
\Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12\ & (!\clk_count[29]~66_combout\ & (\Add0~13_combout\ & VCC))) # (!\Add0~12\ & ((((!\clk_count[29]~66_combout\ & \Add0~13_combout\)))))
-- \Add0~14\ = CARRY((!\clk_count[29]~66_combout\ & (\Add0~13_combout\ & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~13_combout\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X27_Y9_N16
\Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~14\ & (((\clk_count[29]~66_combout\)) # (!\Add0~15_combout\))) # (!\Add0~14\ & (((\Add0~15_combout\ & !\clk_count[29]~66_combout\)) # (GND)))
-- \Add0~16\ = CARRY(((\clk_count[29]~66_combout\) # (!\Add0~14\)) # (!\Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X27_Y9_N18
\Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~16\ & (\Add0~17_combout\ & (!\clk_count[29]~66_combout\ & VCC))) # (!\Add0~16\ & ((((\Add0~17_combout\ & !\clk_count[29]~66_combout\)))))
-- \Add0~18\ = CARRY((\Add0~17_combout\ & (!\clk_count[29]~66_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X27_Y9_N20
\Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~18\ & ((\clk_count[29]~66_combout\) # ((!\Add0~19_combout\)))) # (!\Add0~18\ & (((!\clk_count[29]~66_combout\ & \Add0~19_combout\)) # (GND)))
-- \Add0~20\ = CARRY((\clk_count[29]~66_combout\) # ((!\Add0~18\) # (!\Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~19_combout\,
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X27_Y9_N22
\Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20\ & (!\clk_count[29]~66_combout\ & (\Add0~21_combout\ & VCC))) # (!\Add0~20\ & ((((!\clk_count[29]~66_combout\ & \Add0~21_combout\)))))
-- \Add0~22\ = CARRY((!\clk_count[29]~66_combout\ & (\Add0~21_combout\ & !\Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~21_combout\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X27_Y9_N24
\Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~22\ & ((\clk_count[29]~66_combout\) # ((!\Add0~23_combout\)))) # (!\Add0~22\ & (((!\clk_count[29]~66_combout\ & \Add0~23_combout\)) # (GND)))
-- \Add0~24\ = CARRY((\clk_count[29]~66_combout\) # ((!\Add0~22\) # (!\Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X27_Y9_N26
\Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Add0~24\ & (\Add0~25_combout\ & (!\clk_count[29]~66_combout\ & VCC))) # (!\Add0~24\ & ((((\Add0~25_combout\ & !\clk_count[29]~66_combout\)))))
-- \Add0~26\ = CARRY((\Add0~25_combout\ & (!\clk_count[29]~66_combout\ & !\Add0~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X27_Y9_N28
\Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~26\ & ((\clk_count[29]~66_combout\) # ((!\Add0~27_combout\)))) # (!\Add0~26\ & (((!\clk_count[29]~66_combout\ & \Add0~27_combout\)) # (GND)))
-- \Add0~28\ = CARRY((\clk_count[29]~66_combout\) # ((!\Add0~26\) # (!\Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~27_combout\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X27_Y9_N30
\Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~28\ & (\Add0~29_combout\ & (!\clk_count[29]~66_combout\ & VCC))) # (!\Add0~28\ & ((((\Add0~29_combout\ & !\clk_count[29]~66_combout\)))))
-- \Add0~30\ = CARRY((\Add0~29_combout\ & (!\clk_count[29]~66_combout\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X27_Y8_N12
\Add0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\Add0~42\ & ((\clk_count[29]~66_combout\) # ((!\Add0~43_combout\)))) # (!\Add0~42\ & (((!\clk_count[29]~66_combout\ & \Add0~43_combout\)) # (GND)))
-- \Add0~44\ = CARRY((\clk_count[29]~66_combout\) # ((!\Add0~42\) # (!\Add0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~43_combout\,
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X27_Y8_N14
\Add0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Add0~44\ & (!\clk_count[29]~66_combout\ & (\Add0~45_combout\ & VCC))) # (!\Add0~44\ & ((((!\clk_count[29]~66_combout\ & \Add0~45_combout\)))))
-- \Add0~46\ = CARRY((!\clk_count[29]~66_combout\ & (\Add0~45_combout\ & !\Add0~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~45_combout\,
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X27_Y8_N16
\Add0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\Add0~46\ & ((\clk_count[29]~66_combout\) # ((!\Add0~47_combout\)))) # (!\Add0~46\ & (((!\clk_count[29]~66_combout\ & \Add0~47_combout\)) # (GND)))
-- \Add0~48\ = CARRY((\clk_count[29]~66_combout\) # ((!\Add0~46\) # (!\Add0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~47_combout\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~47_combout\,
	cout => \Add0~48\);

-- Location: LCCOMB_X27_Y8_N18
\Add0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\Add0~48\ & (!\clk_count[29]~66_combout\ & (\Add0~49_combout\ & VCC))) # (!\Add0~48\ & ((((!\clk_count[29]~66_combout\ & \Add0~49_combout\)))))
-- \Add0~50\ = CARRY((!\clk_count[29]~66_combout\ & (\Add0~49_combout\ & !\Add0~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~49_combout\,
	datad => VCC,
	cin => \Add0~48\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X27_Y8_N20
\Add0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\Add0~50\ & ((\clk_count[29]~66_combout\) # ((!\Add0~51_combout\)))) # (!\Add0~50\ & (((!\clk_count[29]~66_combout\ & \Add0~51_combout\)) # (GND)))
-- \Add0~52\ = CARRY((\clk_count[29]~66_combout\) # ((!\Add0~50\) # (!\Add0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~51_combout\,
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X27_Y8_N22
\Add0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\Add0~52\ & (!\clk_count[29]~66_combout\ & (\Add0~53_combout\ & VCC))) # (!\Add0~52\ & ((((!\clk_count[29]~66_combout\ & \Add0~53_combout\)))))
-- \Add0~54\ = CARRY((!\clk_count[29]~66_combout\ & (\Add0~53_combout\ & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~53_combout\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~53_combout\,
	cout => \Add0~54\);

-- Location: LCCOMB_X27_Y8_N24
\Add0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (\Add0~54\ & (((\clk_count[29]~66_combout\)) # (!\Add0~55_combout\))) # (!\Add0~54\ & (((\Add0~55_combout\ & !\clk_count[29]~66_combout\)) # (GND)))
-- \Add0~56\ = CARRY(((\clk_count[29]~66_combout\) # (!\Add0~54\)) # (!\Add0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~55_combout\,
	datab => \clk_count[29]~66_combout\,
	datad => VCC,
	cin => \Add0~54\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X27_Y8_N26
\Add0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~56\ & (!\clk_count[29]~66_combout\ & (\Add0~57_combout\ & VCC))) # (!\Add0~56\ & ((((!\clk_count[29]~66_combout\ & \Add0~57_combout\)))))
-- \Add0~58\ = CARRY((!\clk_count[29]~66_combout\ & (\Add0~57_combout\ & !\Add0~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~57_combout\,
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X27_Y8_N28
\Add0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~58\ & ((\clk_count[29]~66_combout\) # ((!\Add0~59_combout\)))) # (!\Add0~58\ & (((!\clk_count[29]~66_combout\ & \Add0~59_combout\)) # (GND)))
-- \Add0~60\ = CARRY((\clk_count[29]~66_combout\) # ((!\Add0~58\) # (!\Add0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_count[29]~66_combout\,
	datab => \Add0~59_combout\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~59_combout\,
	cout => \Add0~60\);

-- Location: LCCOMB_X27_Y8_N30
\Add0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = \Add0~60\ $ (!\clk_count[31]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_count[31]~67_combout\,
	cin => \Add0~60\,
	combout => \Add0~61_combout\);

-- Location: LCCOMB_X26_Y8_N2
\clk_count[31]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_count[31]~67_combout\ = (!\start~input_o\ & (\Add0~61_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \Add0~61_combout\,
	datad => \rst~input_o\,
	combout => \clk_count[31]~67_combout\);

-- Location: LCCOMB_X26_Y8_N26
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~57_combout\ & (!\Add0~59_combout\ & (!\clk_count[31]~67_combout\ & !\Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~57_combout\,
	datab => \Add0~59_combout\,
	datac => \clk_count[31]~67_combout\,
	datad => \Add0~55_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X26_Y8_N12
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~53_combout\ & (!\Add0~49_combout\ & (!\Add0~51_combout\ & !\Add0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~53_combout\,
	datab => \Add0~49_combout\,
	datac => \Add0~51_combout\,
	datad => \Add0~47_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X26_Y8_N24
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X26_Y8_N28
\Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add0~23_combout\ & (!\Add0~27_combout\ & (!\Add0~29_combout\ & !\Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \Add0~27_combout\,
	datac => \Add0~29_combout\,
	datad => \Add0~25_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X26_Y8_N22
\Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add0~19_combout\ & (!\Add0~15_combout\ & (!\Add0~17_combout\ & !\Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~19_combout\,
	datab => \Add0~15_combout\,
	datac => \Add0~17_combout\,
	datad => \Add0~21_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X27_Y9_N0
\Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~11_combout\ & (!\Add0~13_combout\ & (!\Add0~7_combout\ & !\Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \Add0~13_combout\,
	datac => \Add0~7_combout\,
	datad => \Add0~9_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X26_Y8_N8
\Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X26_Y8_N18
\Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Add0~5_combout\ & (\Equal0~4_combout\ & (!\Add0~3_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~3_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: IOIBUF_X16_Y0_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_output(7) <= \output[7]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(0) <= \output[0]~output_o\;

ww_done <= \done~output_o\;
END structure;


