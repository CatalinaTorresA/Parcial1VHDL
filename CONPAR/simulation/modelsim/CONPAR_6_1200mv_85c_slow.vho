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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/18/2023 17:40:25"

-- 
-- Device: Altera EP3C55F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CONPAR IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	EN : IN std_logic;
	start : IN std_logic;
	count : OUT std_logic_vector(5 DOWNTO 0)
	);
END CONPAR;

-- Design Ports Information
-- start	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CONPAR IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_count : std_logic_vector(5 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \start~input_o\ : std_logic;
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \count[4]~output_o\ : std_logic;
SIGNAL \count[5]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \cnt_int[0]~5_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt_int[1]~7_cout\ : std_logic;
SIGNAL \cnt_int[1]~8_combout\ : std_logic;
SIGNAL \cnt_int[1]~9\ : std_logic;
SIGNAL \cnt_int[2]~10_combout\ : std_logic;
SIGNAL \cnt_int[2]~11\ : std_logic;
SIGNAL \cnt_int[3]~12_combout\ : std_logic;
SIGNAL \cnt_int[3]~13\ : std_logic;
SIGNAL \cnt_int[4]~14_combout\ : std_logic;
SIGNAL \cnt_int[4]~15\ : std_logic;
SIGNAL \cnt_int[5]~16_combout\ : std_logic;
SIGNAL cnt_int : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_EN~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_EN <= EN;
ww_start <= start;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_EN~input_o\ <= NOT \EN~input_o\;

-- Location: IOOBUF_X0_Y6_N2
\count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_int(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_int(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\count[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_int(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\count[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_int(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\count[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_int(4),
	devoe => ww_devoe,
	o => \count[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\count[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_int(5),
	devoe => ww_devoe,
	o => \count[5]~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y7_N8
\EN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X1_Y6_N12
\cnt_int[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_int[0]~5_combout\ = cnt_int(0) $ (!\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_int(0),
	datad => \EN~input_o\,
	combout => \cnt_int[0]~5_combout\);

-- Location: IOIBUF_X0_Y26_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y6_N13
\cnt_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cnt_int[0]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(0));

-- Location: LCCOMB_X1_Y6_N14
\cnt_int[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_int[1]~7_cout\ = CARRY(cnt_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(0),
	datad => VCC,
	cout => \cnt_int[1]~7_cout\);

-- Location: LCCOMB_X1_Y6_N16
\cnt_int[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_int[1]~8_combout\ = (cnt_int(1) & (\cnt_int[1]~7_cout\ & VCC)) # (!cnt_int(1) & (!\cnt_int[1]~7_cout\))
-- \cnt_int[1]~9\ = CARRY((!cnt_int(1) & !\cnt_int[1]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(1),
	datad => VCC,
	cin => \cnt_int[1]~7_cout\,
	combout => \cnt_int[1]~8_combout\,
	cout => \cnt_int[1]~9\);

-- Location: FF_X1_Y6_N17
\cnt_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cnt_int[1]~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \ALT_INV_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(1));

-- Location: LCCOMB_X1_Y6_N18
\cnt_int[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_int[2]~10_combout\ = (cnt_int(2) & ((GND) # (!\cnt_int[1]~9\))) # (!cnt_int(2) & (\cnt_int[1]~9\ $ (GND)))
-- \cnt_int[2]~11\ = CARRY((cnt_int(2)) # (!\cnt_int[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(2),
	datad => VCC,
	cin => \cnt_int[1]~9\,
	combout => \cnt_int[2]~10_combout\,
	cout => \cnt_int[2]~11\);

-- Location: FF_X1_Y6_N19
\cnt_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cnt_int[2]~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \ALT_INV_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(2));

-- Location: LCCOMB_X1_Y6_N20
\cnt_int[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_int[3]~12_combout\ = (cnt_int(3) & (\cnt_int[2]~11\ & VCC)) # (!cnt_int(3) & (!\cnt_int[2]~11\))
-- \cnt_int[3]~13\ = CARRY((!cnt_int(3) & !\cnt_int[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_int(3),
	datad => VCC,
	cin => \cnt_int[2]~11\,
	combout => \cnt_int[3]~12_combout\,
	cout => \cnt_int[3]~13\);

-- Location: FF_X1_Y6_N21
\cnt_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cnt_int[3]~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \ALT_INV_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(3));

-- Location: LCCOMB_X1_Y6_N22
\cnt_int[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_int[4]~14_combout\ = (cnt_int(4) & ((GND) # (!\cnt_int[3]~13\))) # (!cnt_int(4) & (\cnt_int[3]~13\ $ (GND)))
-- \cnt_int[4]~15\ = CARRY((cnt_int(4)) # (!\cnt_int[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_int(4),
	datad => VCC,
	cin => \cnt_int[3]~13\,
	combout => \cnt_int[4]~14_combout\,
	cout => \cnt_int[4]~15\);

-- Location: FF_X1_Y6_N23
\cnt_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cnt_int[4]~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \ALT_INV_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(4));

-- Location: LCCOMB_X1_Y6_N24
\cnt_int[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_int[5]~16_combout\ = \cnt_int[4]~15\ $ (!cnt_int(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_int(5),
	cin => \cnt_int[4]~15\,
	combout => \cnt_int[5]~16_combout\);

-- Location: FF_X1_Y6_N25
\cnt_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cnt_int[5]~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \ALT_INV_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_int(5));

-- Location: IOIBUF_X14_Y0_N22
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_count(4) <= \count[4]~output_o\;

ww_count(5) <= \count[5]~output_o\;
END structure;


