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

-- DATE "08/05/2018 21:55:53"

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

ENTITY 	bcd IS
    PORT (
	binIN : IN std_logic_vector(11 DOWNTO 0);
	unidade : OUT std_logic_vector(3 DOWNTO 0);
	dezenas : OUT std_logic_vector(3 DOWNTO 0);
	centenas : OUT std_logic_vector(3 DOWNTO 0);
	milhares : OUT std_logic_vector(3 DOWNTO 0)
	);
END bcd;

-- Design Ports Information
-- unidade[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidade[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centenas[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centenas[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centenas[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centenas[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- milhares[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- milhares[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- milhares[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- milhares[3]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[8]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[11]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[9]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[10]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[5]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binIN[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_binIN : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_unidade : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dezenas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_centenas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_milhares : std_logic_vector(3 DOWNTO 0);
SIGNAL \bcd~21_combout\ : std_logic;
SIGNAL \bcd~28_combout\ : std_logic;
SIGNAL \bcd~30_combout\ : std_logic;
SIGNAL \bcd~33_combout\ : std_logic;
SIGNAL \bcd~38_combout\ : std_logic;
SIGNAL \bcd~46_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \bcd~55_combout\ : std_logic;
SIGNAL \bcd~56_combout\ : std_logic;
SIGNAL \bcd~62_combout\ : std_logic;
SIGNAL \binIN[6]~input_o\ : std_logic;
SIGNAL \unidade[0]~output_o\ : std_logic;
SIGNAL \unidade[1]~output_o\ : std_logic;
SIGNAL \unidade[2]~output_o\ : std_logic;
SIGNAL \unidade[3]~output_o\ : std_logic;
SIGNAL \dezenas[0]~output_o\ : std_logic;
SIGNAL \dezenas[1]~output_o\ : std_logic;
SIGNAL \dezenas[2]~output_o\ : std_logic;
SIGNAL \dezenas[3]~output_o\ : std_logic;
SIGNAL \centenas[0]~output_o\ : std_logic;
SIGNAL \centenas[1]~output_o\ : std_logic;
SIGNAL \centenas[2]~output_o\ : std_logic;
SIGNAL \centenas[3]~output_o\ : std_logic;
SIGNAL \milhares[0]~output_o\ : std_logic;
SIGNAL \milhares[1]~output_o\ : std_logic;
SIGNAL \milhares[2]~output_o\ : std_logic;
SIGNAL \milhares[3]~output_o\ : std_logic;
SIGNAL \binIN[0]~input_o\ : std_logic;
SIGNAL \binIN[11]~input_o\ : std_logic;
SIGNAL \binIN[9]~input_o\ : std_logic;
SIGNAL \binIN[8]~input_o\ : std_logic;
SIGNAL \bcd~23_combout\ : std_logic;
SIGNAL \bcd~22_combout\ : std_logic;
SIGNAL \binIN[7]~input_o\ : std_logic;
SIGNAL \bcd~24_combout\ : std_logic;
SIGNAL \bcd~25_combout\ : std_logic;
SIGNAL \bcd~26_combout\ : std_logic;
SIGNAL \bcd~27_combout\ : std_logic;
SIGNAL \binIN[5]~input_o\ : std_logic;
SIGNAL \bcd~29_combout\ : std_logic;
SIGNAL \bcd~31_combout\ : std_logic;
SIGNAL \binIN[4]~input_o\ : std_logic;
SIGNAL \bcd~32_combout\ : std_logic;
SIGNAL \bcd~35_combout\ : std_logic;
SIGNAL \bcd~34_combout\ : std_logic;
SIGNAL \binIN[3]~input_o\ : std_logic;
SIGNAL \bcd~37_combout\ : std_logic;
SIGNAL \binIN[2]~input_o\ : std_logic;
SIGNAL \bcd~36_combout\ : std_logic;
SIGNAL \bcd~41_combout\ : std_logic;
SIGNAL \bcd~40_combout\ : std_logic;
SIGNAL \bcd~39_combout\ : std_logic;
SIGNAL \binIN[1]~input_o\ : std_logic;
SIGNAL \bcd~42_combout\ : std_logic;
SIGNAL \bcd~43_combout\ : std_logic;
SIGNAL \bcd~44_combout\ : std_logic;
SIGNAL \bcd~45_combout\ : std_logic;
SIGNAL \bcd~48_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \bcd~47_combout\ : std_logic;
SIGNAL \bcd~53_combout\ : std_logic;
SIGNAL \binIN[10]~input_o\ : std_logic;
SIGNAL \bcd~3_combout\ : std_logic;
SIGNAL \bcd~86_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \bcd~50_combout\ : std_logic;
SIGNAL \bcd~51_combout\ : std_logic;
SIGNAL \bcd~52_combout\ : std_logic;
SIGNAL \bcd~57_combout\ : std_logic;
SIGNAL \bcd~58_combout\ : std_logic;
SIGNAL \bcd~49_combout\ : std_logic;
SIGNAL \bcd~54_combout\ : std_logic;
SIGNAL \bcd~61_combout\ : std_logic;
SIGNAL \bcd~60_combout\ : std_logic;
SIGNAL \bcd~59_combout\ : std_logic;
SIGNAL \bcd~65_combout\ : std_logic;
SIGNAL \bcd~64_combout\ : std_logic;
SIGNAL \bcd~63_combout\ : std_logic;
SIGNAL \bcd~66_combout\ : std_logic;
SIGNAL \bcd~67_combout\ : std_logic;
SIGNAL \bcd~68_combout\ : std_logic;
SIGNAL \bcd~69_combout\ : std_logic;
SIGNAL \bcd~70_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \bcd~85_combout\ : std_logic;
SIGNAL \bcd~84_combout\ : std_logic;
SIGNAL \bcd~73_combout\ : std_logic;
SIGNAL \bcd~71_combout\ : std_logic;
SIGNAL \bcd~74_combout\ : std_logic;
SIGNAL \bcd~77_combout\ : std_logic;
SIGNAL \bcd~75_combout\ : std_logic;
SIGNAL \bcd~76_combout\ : std_logic;
SIGNAL \bcd~78_combout\ : std_logic;
SIGNAL \bcd~79_combout\ : std_logic;
SIGNAL \bcd~80_combout\ : std_logic;
SIGNAL \bcd~81_combout\ : std_logic;
SIGNAL \bcd~82_combout\ : std_logic;
SIGNAL \bcd~72_combout\ : std_logic;
SIGNAL \bcd~83_combout\ : std_logic;
SIGNAL \bcd~9_combout\ : std_logic;
SIGNAL \bcd~87_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~83_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~82_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~80_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~79_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~70_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~68_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~67_combout\ : std_logic;
SIGNAL \ALT_INV_bcd~45_combout\ : std_logic;

BEGIN

ww_binIN <= binIN;
unidade <= ww_unidade;
dezenas <= ww_dezenas;
centenas <= ww_centenas;
milhares <= ww_milhares;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_bcd~83_combout\ <= NOT \bcd~83_combout\;
\ALT_INV_bcd~82_combout\ <= NOT \bcd~82_combout\;
\ALT_INV_bcd~80_combout\ <= NOT \bcd~80_combout\;
\ALT_INV_bcd~79_combout\ <= NOT \bcd~79_combout\;
\ALT_INV_bcd~70_combout\ <= NOT \bcd~70_combout\;
\ALT_INV_bcd~68_combout\ <= NOT \bcd~68_combout\;
\ALT_INV_bcd~67_combout\ <= NOT \bcd~67_combout\;
\ALT_INV_bcd~45_combout\ <= NOT \bcd~45_combout\;

-- Location: LCCOMB_X13_Y14_N16
\bcd~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~21_combout\ = (\binIN[10]~input_o\ & ((\binIN[11]~input_o\ & (!\binIN[9]~input_o\ & \binIN[8]~input_o\)) # (!\binIN[11]~input_o\ & (\binIN[9]~input_o\ & !\binIN[8]~input_o\)))) # (!\binIN[10]~input_o\ & (\binIN[8]~input_o\ $ (((\binIN[11]~input_o\ & 
-- !\binIN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[10]~input_o\,
	datab => \binIN[11]~input_o\,
	datac => \binIN[9]~input_o\,
	datad => \binIN[8]~input_o\,
	combout => \bcd~21_combout\);

-- Location: LCCOMB_X13_Y12_N26
\bcd~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~28_combout\ = (\bcd~26_combout\ & (!\binIN[6]~input_o\ & (!\bcd~24_combout\))) # (!\bcd~26_combout\ & (\bcd~25_combout\ & ((\binIN[6]~input_o\) # (\bcd~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[6]~input_o\,
	datab => \bcd~24_combout\,
	datac => \bcd~25_combout\,
	datad => \bcd~26_combout\,
	combout => \bcd~28_combout\);

-- Location: LCCOMB_X13_Y12_N30
\bcd~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~30_combout\ = (\bcd~28_combout\ & (((!\binIN[5]~input_o\)))) # (!\bcd~28_combout\ & ((\binIN[5]~input_o\ & ((!\bcd~29_combout\))) # (!\binIN[5]~input_o\ & (\bcd~27_combout\ & \bcd~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~28_combout\,
	datab => \bcd~27_combout\,
	datac => \binIN[5]~input_o\,
	datad => \bcd~29_combout\,
	combout => \bcd~30_combout\);

-- Location: LCCOMB_X13_Y12_N12
\bcd~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~33_combout\ = (\bcd~31_combout\ & (((!\binIN[4]~input_o\)))) # (!\bcd~31_combout\ & ((\binIN[4]~input_o\ & ((!\bcd~32_combout\))) # (!\binIN[4]~input_o\ & (\bcd~30_combout\ & \bcd~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~30_combout\,
	datab => \bcd~31_combout\,
	datac => \binIN[4]~input_o\,
	datad => \bcd~32_combout\,
	combout => \bcd~33_combout\);

-- Location: LCCOMB_X22_Y29_N12
\bcd~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~38_combout\ = (\bcd~33_combout\ & ((\binIN[3]~input_o\) # ((!\bcd~35_combout\ & !\bcd~34_combout\)))) # (!\bcd~33_combout\ & (((\bcd~34_combout\ & !\binIN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~33_combout\,
	datab => \bcd~35_combout\,
	datac => \bcd~34_combout\,
	datad => \binIN[3]~input_o\,
	combout => \bcd~38_combout\);

-- Location: LCCOMB_X13_Y12_N2
\bcd~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~46_combout\ = \bcd~25_combout\ $ ((((!\binIN[6]~input_o\ & !\bcd~24_combout\)) # (!\bcd~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[6]~input_o\,
	datab => \bcd~24_combout\,
	datac => \bcd~25_combout\,
	datad => \bcd~26_combout\,
	combout => \bcd~46_combout\);

-- Location: LCCOMB_X13_Y15_N26
\LessThan8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (\LessThan6~0_combout\ $ (!\bcd~46_combout\)) # (!\bcd~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd~49_combout\,
	datac => \LessThan6~0_combout\,
	datad => \bcd~46_combout\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X13_Y15_N20
\bcd~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~55_combout\ = (\bcd~46_combout\ & ((\bcd~48_combout\ & ((\LessThan0~0_combout\) # (\bcd~47_combout\))) # (!\bcd~48_combout\ & ((!\bcd~47_combout\) # (!\LessThan0~0_combout\))))) # (!\bcd~46_combout\ & (\bcd~48_combout\ $ (((\LessThan0~0_combout\ & 
-- \bcd~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~46_combout\,
	datab => \bcd~48_combout\,
	datac => \LessThan0~0_combout\,
	datad => \bcd~47_combout\,
	combout => \bcd~55_combout\);

-- Location: LCCOMB_X13_Y15_N30
\bcd~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~56_combout\ = (\bcd~49_combout\ & ((\bcd~53_combout\ & ((!\bcd~55_combout\))) # (!\bcd~53_combout\ & ((\bcd~52_combout\) # (\bcd~55_combout\))))) # (!\bcd~49_combout\ & (((\bcd~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~49_combout\,
	datab => \bcd~53_combout\,
	datac => \bcd~52_combout\,
	datad => \bcd~55_combout\,
	combout => \bcd~56_combout\);

-- Location: LCCOMB_X22_Y29_N28
\bcd~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~62_combout\ = \bcd~34_combout\ $ ((((!\bcd~33_combout\ & !\binIN[3]~input_o\)) # (!\bcd~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~33_combout\,
	datab => \bcd~35_combout\,
	datac => \bcd~34_combout\,
	datad => \binIN[3]~input_o\,
	combout => \bcd~62_combout\);

-- Location: IOIBUF_X12_Y0_N1
\binIN[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(6),
	o => \binIN[6]~input_o\);

-- Location: IOOBUF_X20_Y0_N9
\unidade[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binIN[0]~input_o\,
	devoe => ww_devoe,
	o => \unidade[0]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\unidade[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd~42_combout\,
	devoe => ww_devoe,
	o => \unidade[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\unidade[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd~43_combout\,
	devoe => ww_devoe,
	o => \unidade[2]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\unidade[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd~44_combout\,
	devoe => ww_devoe,
	o => \unidade[3]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\dezenas[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_bcd~45_combout\,
	devoe => ww_devoe,
	o => \dezenas[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\dezenas[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_bcd~67_combout\,
	devoe => ww_devoe,
	o => \dezenas[1]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\dezenas[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_bcd~68_combout\,
	devoe => ww_devoe,
	o => \dezenas[2]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\dezenas[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd~69_combout\,
	devoe => ww_devoe,
	o => \dezenas[3]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\centenas[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_bcd~70_combout\,
	devoe => ww_devoe,
	o => \centenas[0]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\centenas[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_bcd~79_combout\,
	devoe => ww_devoe,
	o => \centenas[1]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\centenas[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_bcd~80_combout\,
	devoe => ww_devoe,
	o => \centenas[2]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\centenas[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd~81_combout\,
	devoe => ww_devoe,
	o => \centenas[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\milhares[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_bcd~82_combout\,
	devoe => ww_devoe,
	o => \milhares[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\milhares[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_bcd~83_combout\,
	devoe => ww_devoe,
	o => \milhares[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\milhares[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd~87_combout\,
	devoe => ww_devoe,
	o => \milhares[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\milhares[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \milhares[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\binIN[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(0),
	o => \binIN[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\binIN[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(11),
	o => \binIN[11]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\binIN[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(9),
	o => \binIN[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\binIN[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(8),
	o => \binIN[8]~input_o\);

-- Location: LCCOMB_X13_Y14_N28
\bcd~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~23_combout\ = (\binIN[11]~input_o\ & (!\binIN[9]~input_o\ & ((\binIN[10]~input_o\) # (!\binIN[8]~input_o\)))) # (!\binIN[11]~input_o\ & (\binIN[9]~input_o\ & ((\binIN[8]~input_o\) # (!\binIN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[10]~input_o\,
	datab => \binIN[11]~input_o\,
	datac => \binIN[9]~input_o\,
	datad => \binIN[8]~input_o\,
	combout => \bcd~23_combout\);

-- Location: LCCOMB_X13_Y14_N26
\bcd~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~22_combout\ = (\binIN[10]~input_o\ & (!\binIN[8]~input_o\ & (\binIN[11]~input_o\ $ (!\binIN[9]~input_o\)))) # (!\binIN[10]~input_o\ & (\binIN[11]~input_o\ & (!\binIN[9]~input_o\ & \binIN[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[10]~input_o\,
	datab => \binIN[11]~input_o\,
	datac => \binIN[9]~input_o\,
	datad => \binIN[8]~input_o\,
	combout => \bcd~22_combout\);

-- Location: IOIBUF_X20_Y0_N1
\binIN[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(7),
	o => \binIN[7]~input_o\);

-- Location: LCCOMB_X13_Y14_N6
\bcd~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~24_combout\ = (\bcd~23_combout\ & (!\binIN[7]~input_o\ & ((\bcd~21_combout\) # (\bcd~22_combout\)))) # (!\bcd~23_combout\ & ((\bcd~22_combout\ $ (\binIN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~21_combout\,
	datab => \bcd~23_combout\,
	datac => \bcd~22_combout\,
	datad => \binIN[7]~input_o\,
	combout => \bcd~24_combout\);

-- Location: LCCOMB_X13_Y14_N8
\bcd~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~25_combout\ = (\bcd~23_combout\ & (!\bcd~21_combout\ & ((!\binIN[7]~input_o\)))) # (!\bcd~23_combout\ & (\bcd~22_combout\ & ((\bcd~21_combout\) # (\binIN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~21_combout\,
	datab => \bcd~23_combout\,
	datac => \bcd~22_combout\,
	datad => \binIN[7]~input_o\,
	combout => \bcd~25_combout\);

-- Location: LCCOMB_X13_Y14_N18
\bcd~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~26_combout\ = (\bcd~21_combout\ & ((\binIN[7]~input_o\) # ((!\bcd~23_combout\ & !\bcd~22_combout\)))) # (!\bcd~21_combout\ & (((\bcd~22_combout\ & !\binIN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~21_combout\,
	datab => \bcd~23_combout\,
	datac => \bcd~22_combout\,
	datad => \binIN[7]~input_o\,
	combout => \bcd~26_combout\);

-- Location: LCCOMB_X13_Y12_N24
\bcd~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~27_combout\ = (\binIN[6]~input_o\ & (((!\bcd~25_combout\ & !\bcd~26_combout\)))) # (!\binIN[6]~input_o\ & ((\bcd~25_combout\) # ((\bcd~24_combout\ & \bcd~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[6]~input_o\,
	datab => \bcd~24_combout\,
	datac => \bcd~25_combout\,
	datad => \bcd~26_combout\,
	combout => \bcd~27_combout\);

-- Location: IOIBUF_X14_Y0_N8
\binIN[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(5),
	o => \binIN[5]~input_o\);

-- Location: LCCOMB_X13_Y12_N28
\bcd~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~29_combout\ = (\binIN[6]~input_o\ & (\bcd~24_combout\)) # (!\binIN[6]~input_o\ & ((\bcd~24_combout\ & (!\bcd~25_combout\ & !\bcd~26_combout\)) # (!\bcd~24_combout\ & (\bcd~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[6]~input_o\,
	datab => \bcd~24_combout\,
	datac => \bcd~25_combout\,
	datad => \bcd~26_combout\,
	combout => \bcd~29_combout\);

-- Location: LCCOMB_X13_Y12_N16
\bcd~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~31_combout\ = (\bcd~29_combout\ & (((!\bcd~27_combout\ & !\binIN[5]~input_o\)))) # (!\bcd~29_combout\ & (\bcd~28_combout\ & ((\bcd~27_combout\) # (\binIN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~28_combout\,
	datab => \bcd~27_combout\,
	datac => \binIN[5]~input_o\,
	datad => \bcd~29_combout\,
	combout => \bcd~31_combout\);

-- Location: IOIBUF_X14_Y31_N1
\binIN[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(4),
	o => \binIN[4]~input_o\);

-- Location: LCCOMB_X13_Y12_N10
\bcd~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~32_combout\ = (\bcd~28_combout\ & (\bcd~27_combout\ $ ((!\binIN[5]~input_o\)))) # (!\bcd~28_combout\ & (\bcd~27_combout\ & ((\binIN[5]~input_o\) # (!\bcd~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~28_combout\,
	datab => \bcd~27_combout\,
	datac => \binIN[5]~input_o\,
	datad => \bcd~29_combout\,
	combout => \bcd~32_combout\);

-- Location: LCCOMB_X13_Y12_N0
\bcd~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~35_combout\ = (\bcd~30_combout\ & ((\binIN[4]~input_o\) # ((!\bcd~31_combout\ & !\bcd~32_combout\)))) # (!\bcd~30_combout\ & (\bcd~31_combout\ & (!\binIN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~30_combout\,
	datab => \bcd~31_combout\,
	datac => \binIN[4]~input_o\,
	datad => \bcd~32_combout\,
	combout => \bcd~35_combout\);

-- Location: LCCOMB_X13_Y12_N6
\bcd~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~34_combout\ = (\bcd~32_combout\ & (!\bcd~30_combout\ & ((!\binIN[4]~input_o\)))) # (!\bcd~32_combout\ & (\bcd~31_combout\ & ((\bcd~30_combout\) # (\binIN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~30_combout\,
	datab => \bcd~31_combout\,
	datac => \binIN[4]~input_o\,
	datad => \bcd~32_combout\,
	combout => \bcd~34_combout\);

-- Location: IOIBUF_X26_Y31_N1
\binIN[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(3),
	o => \binIN[3]~input_o\);

-- Location: LCCOMB_X22_Y29_N18
\bcd~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~37_combout\ = (\bcd~35_combout\ & (!\bcd~33_combout\ & ((!\binIN[3]~input_o\)))) # (!\bcd~35_combout\ & (\bcd~34_combout\ & ((\bcd~33_combout\) # (\binIN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~33_combout\,
	datab => \bcd~35_combout\,
	datac => \bcd~34_combout\,
	datad => \binIN[3]~input_o\,
	combout => \bcd~37_combout\);

-- Location: IOIBUF_X31_Y31_N1
\binIN[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(2),
	o => \binIN[2]~input_o\);

-- Location: LCCOMB_X22_Y29_N16
\bcd~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~36_combout\ = (\bcd~35_combout\ & (!\binIN[3]~input_o\ & ((\bcd~33_combout\) # (\bcd~34_combout\)))) # (!\bcd~35_combout\ & ((\bcd~34_combout\ $ (\binIN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~33_combout\,
	datab => \bcd~35_combout\,
	datac => \bcd~34_combout\,
	datad => \binIN[3]~input_o\,
	combout => \bcd~36_combout\);

-- Location: LCCOMB_X22_Y29_N10
\bcd~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~41_combout\ = (\bcd~37_combout\ & ((\binIN[2]~input_o\ $ (!\bcd~36_combout\)))) # (!\bcd~37_combout\ & (\bcd~36_combout\ & ((\binIN[2]~input_o\) # (!\bcd~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~38_combout\,
	datab => \bcd~37_combout\,
	datac => \binIN[2]~input_o\,
	datad => \bcd~36_combout\,
	combout => \bcd~41_combout\);

-- Location: LCCOMB_X22_Y29_N0
\bcd~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~40_combout\ = (\bcd~38_combout\ & (((!\binIN[2]~input_o\ & !\bcd~36_combout\)))) # (!\bcd~38_combout\ & (\bcd~37_combout\ & ((\binIN[2]~input_o\) # (\bcd~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~38_combout\,
	datab => \bcd~37_combout\,
	datac => \binIN[2]~input_o\,
	datad => \bcd~36_combout\,
	combout => \bcd~40_combout\);

-- Location: LCCOMB_X22_Y29_N30
\bcd~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~39_combout\ = (\bcd~38_combout\ & (!\binIN[2]~input_o\ & ((\bcd~37_combout\) # (\bcd~36_combout\)))) # (!\bcd~38_combout\ & (\bcd~37_combout\ $ ((\binIN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~38_combout\,
	datab => \bcd~37_combout\,
	datac => \binIN[2]~input_o\,
	datad => \bcd~36_combout\,
	combout => \bcd~39_combout\);

-- Location: IOIBUF_X22_Y31_N1
\binIN[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(1),
	o => \binIN[1]~input_o\);

-- Location: LCCOMB_X22_Y29_N4
\bcd~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~42_combout\ = (\bcd~41_combout\ & (!\binIN[1]~input_o\ & ((\bcd~40_combout\) # (\bcd~39_combout\)))) # (!\bcd~41_combout\ & (\bcd~40_combout\ $ (((\binIN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~41_combout\,
	datab => \bcd~40_combout\,
	datac => \bcd~39_combout\,
	datad => \binIN[1]~input_o\,
	combout => \bcd~42_combout\);

-- Location: LCCOMB_X22_Y29_N6
\bcd~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~43_combout\ = (\bcd~40_combout\ & ((\bcd~39_combout\ $ (!\binIN[1]~input_o\)))) # (!\bcd~40_combout\ & (\bcd~39_combout\ & ((\binIN[1]~input_o\) # (!\bcd~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~41_combout\,
	datab => \bcd~40_combout\,
	datac => \bcd~39_combout\,
	datad => \binIN[1]~input_o\,
	combout => \bcd~43_combout\);

-- Location: LCCOMB_X22_Y29_N24
\bcd~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~44_combout\ = (\bcd~41_combout\ & (((!\bcd~39_combout\ & !\binIN[1]~input_o\)))) # (!\bcd~41_combout\ & (\bcd~40_combout\ & ((\bcd~39_combout\) # (\binIN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~41_combout\,
	datab => \bcd~40_combout\,
	datac => \bcd~39_combout\,
	datad => \binIN[1]~input_o\,
	combout => \bcd~44_combout\);

-- Location: LCCOMB_X22_Y29_N2
\bcd~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~45_combout\ = \bcd~40_combout\ $ ((((!\bcd~39_combout\ & !\binIN[1]~input_o\)) # (!\bcd~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~41_combout\,
	datab => \bcd~40_combout\,
	datac => \bcd~39_combout\,
	datad => \binIN[1]~input_o\,
	combout => \bcd~45_combout\);

-- Location: LCCOMB_X13_Y14_N22
\bcd~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~48_combout\ = (\binIN[10]~input_o\ & ((\binIN[11]~input_o\ & (\binIN[9]~input_o\ & \binIN[8]~input_o\)) # (!\binIN[11]~input_o\ & ((\binIN[9]~input_o\) # (\binIN[8]~input_o\))))) # (!\binIN[10]~input_o\ & (\binIN[11]~input_o\ & 
-- (!\binIN[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[10]~input_o\,
	datab => \binIN[11]~input_o\,
	datac => \binIN[9]~input_o\,
	datad => \binIN[8]~input_o\,
	combout => \bcd~48_combout\);

-- Location: LCCOMB_X13_Y14_N10
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\binIN[11]~input_o\ & ((\binIN[10]~input_o\) # (\binIN[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[10]~input_o\,
	datac => \binIN[9]~input_o\,
	datad => \binIN[11]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y14_N12
\bcd~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~47_combout\ = \bcd~22_combout\ $ ((((!\bcd~21_combout\ & !\binIN[7]~input_o\)) # (!\bcd~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~21_combout\,
	datab => \bcd~23_combout\,
	datac => \bcd~22_combout\,
	datad => \binIN[7]~input_o\,
	combout => \bcd~47_combout\);

-- Location: LCCOMB_X13_Y15_N0
\bcd~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~53_combout\ = (\bcd~46_combout\ & (\bcd~48_combout\ & (\LessThan0~0_combout\ $ (\bcd~47_combout\)))) # (!\bcd~46_combout\ & (!\bcd~48_combout\ & (\LessThan0~0_combout\ & \bcd~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~46_combout\,
	datab => \bcd~48_combout\,
	datac => \LessThan0~0_combout\,
	datad => \bcd~47_combout\,
	combout => \bcd~53_combout\);

-- Location: IOIBUF_X10_Y0_N8
\binIN[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIN(10),
	o => \binIN[10]~input_o\);

-- Location: LCCOMB_X13_Y14_N20
\bcd~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~3_combout\ = (\binIN[9]~input_o\ & (((!\binIN[6]~input_o\ & !\binIN[7]~input_o\)) # (!\binIN[8]~input_o\))) # (!\binIN[9]~input_o\ & ((\binIN[8]~input_o\) # ((\binIN[6]~input_o\ & \binIN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[6]~input_o\,
	datab => \binIN[7]~input_o\,
	datac => \binIN[9]~input_o\,
	datad => \binIN[8]~input_o\,
	combout => \bcd~3_combout\);

-- Location: LCCOMB_X13_Y14_N30
\bcd~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~86_combout\ = (\binIN[11]~input_o\ & (!\binIN[10]~input_o\ & \bcd~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binIN[11]~input_o\,
	datac => \binIN[10]~input_o\,
	datad => \bcd~3_combout\,
	combout => \bcd~86_combout\);

-- Location: LCCOMB_X13_Y15_N8
\LessThan6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\bcd~48_combout\ & ((\bcd~46_combout\ & (!\LessThan0~0_combout\ & !\bcd~47_combout\)) # (!\bcd~46_combout\ & ((!\bcd~47_combout\) # (!\LessThan0~0_combout\))))) # (!\bcd~48_combout\ & (((\LessThan0~0_combout\ & 
-- \bcd~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~46_combout\,
	datab => \bcd~48_combout\,
	datac => \LessThan0~0_combout\,
	datad => \bcd~47_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X13_Y14_N0
\bcd~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~50_combout\ = (\binIN[10]~input_o\ & (\binIN[11]~input_o\ & (\binIN[9]~input_o\ & \binIN[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[10]~input_o\,
	datab => \binIN[11]~input_o\,
	datac => \binIN[9]~input_o\,
	datad => \binIN[8]~input_o\,
	combout => \bcd~50_combout\);

-- Location: LCCOMB_X13_Y15_N28
\bcd~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~51_combout\ = (\bcd~50_combout\) # ((!\LessThan0~0_combout\ & !\bcd~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd~50_combout\,
	datac => \LessThan0~0_combout\,
	datad => \bcd~47_combout\,
	combout => \bcd~51_combout\);

-- Location: LCCOMB_X13_Y15_N14
\bcd~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~52_combout\ = (\bcd~86_combout\) # ((!\LessThan6~0_combout\ & \bcd~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd~86_combout\,
	datac => \LessThan6~0_combout\,
	datad => \bcd~51_combout\,
	combout => \bcd~52_combout\);

-- Location: LCCOMB_X13_Y15_N16
\bcd~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~57_combout\ = (\LessThan8~0_combout\ & (\bcd~53_combout\ & !\bcd~52_combout\)) # (!\LessThan8~0_combout\ & ((\bcd~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \bcd~53_combout\,
	datac => \bcd~52_combout\,
	combout => \bcd~57_combout\);

-- Location: LCCOMB_X13_Y12_N22
\bcd~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~58_combout\ = \bcd~31_combout\ $ ((((!\bcd~30_combout\ & !\binIN[4]~input_o\)) # (!\bcd~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~30_combout\,
	datab => \bcd~31_combout\,
	datac => \binIN[4]~input_o\,
	datad => \bcd~32_combout\,
	combout => \bcd~58_combout\);

-- Location: LCCOMB_X13_Y12_N20
\bcd~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~49_combout\ = \bcd~28_combout\ $ ((((!\bcd~27_combout\ & !\binIN[5]~input_o\)) # (!\bcd~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~28_combout\,
	datab => \bcd~27_combout\,
	datac => \binIN[5]~input_o\,
	datad => \bcd~29_combout\,
	combout => \bcd~49_combout\);

-- Location: LCCOMB_X13_Y15_N2
\bcd~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~54_combout\ = \bcd~49_combout\ $ (((\bcd~53_combout\) # ((\LessThan8~0_combout\ & \bcd~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \bcd~53_combout\,
	datac => \bcd~52_combout\,
	datad => \bcd~49_combout\,
	combout => \bcd~54_combout\);

-- Location: LCCOMB_X13_Y18_N20
\bcd~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~61_combout\ = (\bcd~56_combout\ & (\bcd~57_combout\ & ((!\bcd~54_combout\) # (!\bcd~58_combout\)))) # (!\bcd~56_combout\ & (((\bcd~58_combout\ & \bcd~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~56_combout\,
	datab => \bcd~57_combout\,
	datac => \bcd~58_combout\,
	datad => \bcd~54_combout\,
	combout => \bcd~61_combout\);

-- Location: LCCOMB_X13_Y18_N26
\bcd~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~60_combout\ = (\bcd~57_combout\ & ((\bcd~58_combout\ $ (\bcd~54_combout\)))) # (!\bcd~57_combout\ & ((\bcd~54_combout\) # ((!\bcd~56_combout\ & \bcd~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~56_combout\,
	datab => \bcd~57_combout\,
	datac => \bcd~58_combout\,
	datad => \bcd~54_combout\,
	combout => \bcd~60_combout\);

-- Location: LCCOMB_X13_Y18_N16
\bcd~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~59_combout\ = (\bcd~56_combout\ & (\bcd~57_combout\ $ ((\bcd~58_combout\)))) # (!\bcd~56_combout\ & (((!\bcd~57_combout\ & \bcd~54_combout\)) # (!\bcd~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~56_combout\,
	datab => \bcd~57_combout\,
	datac => \bcd~58_combout\,
	datad => \bcd~54_combout\,
	combout => \bcd~59_combout\);

-- Location: LCCOMB_X13_Y18_N10
\bcd~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~65_combout\ = (\bcd~60_combout\ & (\bcd~61_combout\ & ((!\bcd~59_combout\) # (!\bcd~62_combout\)))) # (!\bcd~60_combout\ & (\bcd~62_combout\ & ((\bcd~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~62_combout\,
	datab => \bcd~61_combout\,
	datac => \bcd~60_combout\,
	datad => \bcd~59_combout\,
	combout => \bcd~65_combout\);

-- Location: LCCOMB_X13_Y18_N24
\bcd~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~64_combout\ = (\bcd~62_combout\ & ((\bcd~61_combout\ & ((!\bcd~59_combout\))) # (!\bcd~61_combout\ & ((\bcd~59_combout\) # (!\bcd~60_combout\))))) # (!\bcd~62_combout\ & (((\bcd~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~62_combout\,
	datab => \bcd~61_combout\,
	datac => \bcd~60_combout\,
	datad => \bcd~59_combout\,
	combout => \bcd~64_combout\);

-- Location: LCCOMB_X13_Y18_N22
\bcd~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~63_combout\ = (\bcd~62_combout\ & (!\bcd~61_combout\ & ((\bcd~60_combout\) # (\bcd~59_combout\)))) # (!\bcd~62_combout\ & ((\bcd~61_combout\) # ((!\bcd~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~62_combout\,
	datab => \bcd~61_combout\,
	datac => \bcd~60_combout\,
	datad => \bcd~59_combout\,
	combout => \bcd~63_combout\);

-- Location: LCCOMB_X22_Y29_N22
\bcd~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~66_combout\ = \bcd~37_combout\ $ ((((!\binIN[2]~input_o\ & !\bcd~36_combout\)) # (!\bcd~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~38_combout\,
	datab => \bcd~37_combout\,
	datac => \binIN[2]~input_o\,
	datad => \bcd~36_combout\,
	combout => \bcd~66_combout\);

-- Location: LCCOMB_X13_Y18_N28
\bcd~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~67_combout\ = (\bcd~65_combout\ & (((!\bcd~66_combout\)))) # (!\bcd~65_combout\ & ((\bcd~64_combout\ & ((\bcd~66_combout\))) # (!\bcd~64_combout\ & ((\bcd~63_combout\) # (!\bcd~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~65_combout\,
	datab => \bcd~64_combout\,
	datac => \bcd~63_combout\,
	datad => \bcd~66_combout\,
	combout => \bcd~67_combout\);

-- Location: LCCOMB_X13_Y18_N14
\bcd~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~68_combout\ = (\bcd~65_combout\ & ((\bcd~63_combout\ $ (\bcd~66_combout\)))) # (!\bcd~65_combout\ & ((\bcd~63_combout\) # ((!\bcd~64_combout\ & \bcd~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~65_combout\,
	datab => \bcd~64_combout\,
	datac => \bcd~63_combout\,
	datad => \bcd~66_combout\,
	combout => \bcd~68_combout\);

-- Location: LCCOMB_X13_Y18_N0
\bcd~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~69_combout\ = (\bcd~64_combout\ & (\bcd~65_combout\ & ((!\bcd~66_combout\) # (!\bcd~63_combout\)))) # (!\bcd~64_combout\ & (((\bcd~63_combout\ & \bcd~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~65_combout\,
	datab => \bcd~64_combout\,
	datac => \bcd~63_combout\,
	datad => \bcd~66_combout\,
	combout => \bcd~69_combout\);

-- Location: LCCOMB_X13_Y18_N2
\bcd~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~70_combout\ = \bcd~65_combout\ $ (((\bcd~64_combout\) # ((\bcd~63_combout\ & \bcd~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~65_combout\,
	datab => \bcd~64_combout\,
	datac => \bcd~63_combout\,
	datad => \bcd~66_combout\,
	combout => \bcd~70_combout\);

-- Location: LCCOMB_X13_Y15_N24
\LessThan4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\bcd~48_combout\) # (!\bcd~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd~48_combout\,
	datad => \bcd~47_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X13_Y15_N4
\bcd~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~85_combout\ = (\bcd~48_combout\ & ((\bcd~46_combout\ & ((\LessThan0~0_combout\) # (\bcd~47_combout\))) # (!\bcd~46_combout\ & (\LessThan0~0_combout\ & \bcd~47_combout\)))) # (!\bcd~48_combout\ & (((!\bcd~47_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~46_combout\,
	datab => \bcd~48_combout\,
	datac => \LessThan0~0_combout\,
	datad => \bcd~47_combout\,
	combout => \bcd~85_combout\);

-- Location: LCCOMB_X13_Y15_N18
\bcd~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~84_combout\ = \bcd~53_combout\ $ (((!\bcd~52_combout\) # (!\LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \bcd~53_combout\,
	datac => \bcd~52_combout\,
	combout => \bcd~84_combout\);

-- Location: LCCOMB_X13_Y15_N22
\bcd~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~73_combout\ = (\LessThan0~0_combout\ & (\LessThan4~0_combout\ & (\bcd~85_combout\ & \bcd~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan4~0_combout\,
	datac => \bcd~85_combout\,
	datad => \bcd~84_combout\,
	combout => \bcd~73_combout\);

-- Location: LCCOMB_X13_Y15_N10
\bcd~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~71_combout\ = (!\bcd~85_combout\ & (((!\bcd~84_combout\) # (!\LessThan4~0_combout\)) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan4~0_combout\,
	datac => \bcd~85_combout\,
	datad => \bcd~84_combout\,
	combout => \bcd~71_combout\);

-- Location: LCCOMB_X13_Y18_N12
\bcd~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~74_combout\ = \bcd~57_combout\ $ (((\bcd~56_combout\) # ((\bcd~58_combout\ & \bcd~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~56_combout\,
	datab => \bcd~57_combout\,
	datac => \bcd~58_combout\,
	datad => \bcd~54_combout\,
	combout => \bcd~74_combout\);

-- Location: LCCOMB_X13_Y16_N12
\bcd~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~77_combout\ = (\bcd~71_combout\ & (!\bcd~72_combout\ & ((\bcd~74_combout\)))) # (!\bcd~71_combout\ & (\bcd~73_combout\ & ((\bcd~72_combout\) # (!\bcd~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~72_combout\,
	datab => \bcd~73_combout\,
	datac => \bcd~71_combout\,
	datad => \bcd~74_combout\,
	combout => \bcd~77_combout\);

-- Location: LCCOMB_X13_Y16_N0
\bcd~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~75_combout\ = (\bcd~73_combout\ & (((!\bcd~74_combout\)))) # (!\bcd~73_combout\ & ((\bcd~71_combout\ & ((!\bcd~74_combout\) # (!\bcd~72_combout\))) # (!\bcd~71_combout\ & ((\bcd~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~72_combout\,
	datab => \bcd~73_combout\,
	datac => \bcd~71_combout\,
	datad => \bcd~74_combout\,
	combout => \bcd~75_combout\);

-- Location: LCCOMB_X13_Y16_N2
\bcd~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~76_combout\ = (\bcd~72_combout\ & (((!\bcd~73_combout\ & !\bcd~71_combout\)) # (!\bcd~74_combout\))) # (!\bcd~72_combout\ & (\bcd~73_combout\ & ((\bcd~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~72_combout\,
	datab => \bcd~73_combout\,
	datac => \bcd~71_combout\,
	datad => \bcd~74_combout\,
	combout => \bcd~76_combout\);

-- Location: LCCOMB_X13_Y18_N6
\bcd~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~78_combout\ = \bcd~61_combout\ $ (((\bcd~60_combout\) # ((\bcd~62_combout\ & \bcd~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~62_combout\,
	datab => \bcd~61_combout\,
	datac => \bcd~60_combout\,
	datad => \bcd~59_combout\,
	combout => \bcd~78_combout\);

-- Location: LCCOMB_X13_Y16_N6
\bcd~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~79_combout\ = (\bcd~77_combout\ & (((!\bcd~78_combout\)))) # (!\bcd~77_combout\ & ((\bcd~76_combout\ & ((\bcd~75_combout\) # (!\bcd~78_combout\))) # (!\bcd~76_combout\ & ((\bcd~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~77_combout\,
	datab => \bcd~75_combout\,
	datac => \bcd~76_combout\,
	datad => \bcd~78_combout\,
	combout => \bcd~79_combout\);

-- Location: LCCOMB_X13_Y16_N8
\bcd~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~80_combout\ = (\bcd~77_combout\ & (\bcd~75_combout\ $ (((\bcd~78_combout\))))) # (!\bcd~77_combout\ & ((\bcd~75_combout\) # ((\bcd~76_combout\ & \bcd~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~77_combout\,
	datab => \bcd~75_combout\,
	datac => \bcd~76_combout\,
	datad => \bcd~78_combout\,
	combout => \bcd~80_combout\);

-- Location: LCCOMB_X13_Y16_N10
\bcd~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~81_combout\ = (\bcd~76_combout\ & (((\bcd~75_combout\ & \bcd~78_combout\)))) # (!\bcd~76_combout\ & (\bcd~77_combout\ & ((!\bcd~78_combout\) # (!\bcd~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~77_combout\,
	datab => \bcd~75_combout\,
	datac => \bcd~76_combout\,
	datad => \bcd~78_combout\,
	combout => \bcd~81_combout\);

-- Location: LCCOMB_X13_Y16_N20
\bcd~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~82_combout\ = \bcd~77_combout\ $ ((((\bcd~75_combout\ & \bcd~78_combout\)) # (!\bcd~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~77_combout\,
	datab => \bcd~75_combout\,
	datac => \bcd~76_combout\,
	datad => \bcd~78_combout\,
	combout => \bcd~82_combout\);

-- Location: LCCOMB_X13_Y15_N12
\bcd~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~72_combout\ = (!\bcd~84_combout\ & (((\bcd~47_combout\ & !\bcd~48_combout\)) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~47_combout\,
	datab => \LessThan0~0_combout\,
	datac => \bcd~48_combout\,
	datad => \bcd~84_combout\,
	combout => \bcd~72_combout\);

-- Location: LCCOMB_X13_Y16_N22
\bcd~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~83_combout\ = \bcd~73_combout\ $ ((((!\bcd~72_combout\ & \bcd~74_combout\)) # (!\bcd~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~72_combout\,
	datab => \bcd~73_combout\,
	datac => \bcd~71_combout\,
	datad => \bcd~74_combout\,
	combout => \bcd~83_combout\);

-- Location: LCCOMB_X13_Y14_N2
\bcd~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~9_combout\ = (\binIN[7]~input_o\ & (\binIN[8]~input_o\ & ((\binIN[6]~input_o\) # (\binIN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[6]~input_o\,
	datab => \binIN[7]~input_o\,
	datac => \binIN[5]~input_o\,
	datad => \binIN[8]~input_o\,
	combout => \bcd~9_combout\);

-- Location: LCCOMB_X13_Y14_N24
\bcd~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd~87_combout\ = (\binIN[10]~input_o\ & (\binIN[11]~input_o\ & (\binIN[9]~input_o\ & \bcd~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIN[10]~input_o\,
	datab => \binIN[11]~input_o\,
	datac => \binIN[9]~input_o\,
	datad => \bcd~9_combout\,
	combout => \bcd~87_combout\);

ww_unidade(0) <= \unidade[0]~output_o\;

ww_unidade(1) <= \unidade[1]~output_o\;

ww_unidade(2) <= \unidade[2]~output_o\;

ww_unidade(3) <= \unidade[3]~output_o\;

ww_dezenas(0) <= \dezenas[0]~output_o\;

ww_dezenas(1) <= \dezenas[1]~output_o\;

ww_dezenas(2) <= \dezenas[2]~output_o\;

ww_dezenas(3) <= \dezenas[3]~output_o\;

ww_centenas(0) <= \centenas[0]~output_o\;

ww_centenas(1) <= \centenas[1]~output_o\;

ww_centenas(2) <= \centenas[2]~output_o\;

ww_centenas(3) <= \centenas[3]~output_o\;

ww_milhares(0) <= \milhares[0]~output_o\;

ww_milhares(1) <= \milhares[1]~output_o\;

ww_milhares(2) <= \milhares[2]~output_o\;

ww_milhares(3) <= \milhares[3]~output_o\;
END structure;


