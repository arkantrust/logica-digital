-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "11/07/2024 12:25:06"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter99 IS
    PORT (
	CLK : IN std_logic;
	INI : IN std_logic;
	RESET : IN std_logic;
	DISPLAY : OUT std_logic_vector(6 DOWNTO 0);
	TRANSISTOR : OUT std_logic_vector(1 DOWNTO 0)
	);
END counter99;

-- Design Ports Information
-- DISPLAY[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[1]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[3]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[5]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRANSISTOR[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRANSISTOR[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INI	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter99 IS
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
SIGNAL ww_INI : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_DISPLAY : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_TRANSISTOR : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY[0]~output_o\ : std_logic;
SIGNAL \DISPLAY[1]~output_o\ : std_logic;
SIGNAL \DISPLAY[2]~output_o\ : std_logic;
SIGNAL \DISPLAY[3]~output_o\ : std_logic;
SIGNAL \DISPLAY[4]~output_o\ : std_logic;
SIGNAL \DISPLAY[5]~output_o\ : std_logic;
SIGNAL \DISPLAY[6]~output_o\ : std_logic;
SIGNAL \TRANSISTOR[0]~output_o\ : std_logic;
SIGNAL \TRANSISTOR[1]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \CONTA_DECENAS~0_combout\ : std_logic;
SIGNAL \INI~input_o\ : std_logic;
SIGNAL \CONTA_UNIDADES~1_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[0]~26_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[10]~28_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[10]~29_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[0]~27\ : std_logic;
SIGNAL \CONTA_RETRASO[1]~30_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[1]~31\ : std_logic;
SIGNAL \CONTA_RETRASO[2]~32_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[2]~33\ : std_logic;
SIGNAL \CONTA_RETRASO[3]~34_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[3]~35\ : std_logic;
SIGNAL \CONTA_RETRASO[4]~36_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[4]~37\ : std_logic;
SIGNAL \CONTA_RETRASO[5]~38_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[5]~39\ : std_logic;
SIGNAL \CONTA_RETRASO[6]~40_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[6]~41\ : std_logic;
SIGNAL \CONTA_RETRASO[7]~42_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[7]~43\ : std_logic;
SIGNAL \CONTA_RETRASO[8]~44_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[8]~45\ : std_logic;
SIGNAL \CONTA_RETRASO[9]~46_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[9]~47\ : std_logic;
SIGNAL \CONTA_RETRASO[10]~48_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[10]~49\ : std_logic;
SIGNAL \CONTA_RETRASO[11]~50_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[11]~51\ : std_logic;
SIGNAL \CONTA_RETRASO[12]~52_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[12]~53\ : std_logic;
SIGNAL \CONTA_RETRASO[13]~54_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[13]~55\ : std_logic;
SIGNAL \CONTA_RETRASO[14]~56_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[14]~57\ : std_logic;
SIGNAL \CONTA_RETRASO[15]~58_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[15]~59\ : std_logic;
SIGNAL \CONTA_RETRASO[16]~60_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[16]~61\ : std_logic;
SIGNAL \CONTA_RETRASO[17]~62_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[17]~63\ : std_logic;
SIGNAL \CONTA_RETRASO[18]~64_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[18]~65\ : std_logic;
SIGNAL \CONTA_RETRASO[19]~66_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[19]~67\ : std_logic;
SIGNAL \CONTA_RETRASO[20]~68_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[20]~69\ : std_logic;
SIGNAL \CONTA_RETRASO[21]~70_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[21]~71\ : std_logic;
SIGNAL \CONTA_RETRASO[22]~72_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[22]~73\ : std_logic;
SIGNAL \CONTA_RETRASO[23]~74_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[23]~75\ : std_logic;
SIGNAL \CONTA_RETRASO[24]~76_combout\ : std_logic;
SIGNAL \CONTA_RETRASO[24]~77\ : std_logic;
SIGNAL \CONTA_RETRASO[25]~78_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \CONTA_UNIDADES[0]~2_combout\ : std_logic;
SIGNAL \CONTA_UNIDADES~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \CONTA_UNIDADES~4_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \CONTA_UNIDADES~5_combout\ : std_logic;
SIGNAL \CONTA_UNIDADES[0]~0_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \CONTA_DECENAS[2]~1_combout\ : std_logic;
SIGNAL \CONTA_DECENAS~3_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \CONTA_DECENAS~4_combout\ : std_logic;
SIGNAL \CONTA_DECENAS[2]~2_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \CONTA_DECENAS~5_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \CONTA_SWITCH~6_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \CONTA_SWITCH~5_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \CONTA_SWITCH~4_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \CONTA_SWITCH~3_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \CONTA_SWITCH~2_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \CONTA_SWITCH~1_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \CONTA_SWITCH~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \EDO_P~0_combout\ : std_logic;
SIGNAL \EDO_P~q\ : std_logic;
SIGNAL \DISPLAY~0_combout\ : std_logic;
SIGNAL \CONTADOR_PRINCIPAL[0]~0_combout\ : std_logic;
SIGNAL \CONTADOR_PRINCIPAL[2]~2_combout\ : std_logic;
SIGNAL \CONTADOR_PRINCIPAL[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY~1_combout\ : std_logic;
SIGNAL \DISPLAY~3_combout\ : std_logic;
SIGNAL \DISPLAY~2_combout\ : std_logic;
SIGNAL \DISPLAY~4_combout\ : std_logic;
SIGNAL \DISPLAY~6_combout\ : std_logic;
SIGNAL \DISPLAY~7_combout\ : std_logic;
SIGNAL \DISPLAY~5_combout\ : std_logic;
SIGNAL \DISPLAY~8_combout\ : std_logic;
SIGNAL \DISPLAY~9_combout\ : std_logic;
SIGNAL \DISPLAY~10_combout\ : std_logic;
SIGNAL \DISPLAY~11_combout\ : std_logic;
SIGNAL \DISPLAY~12_combout\ : std_logic;
SIGNAL CONTA_RETRASO : std_logic_vector(25 DOWNTO 0);
SIGNAL CONTA_DECENAS : std_logic_vector(3 DOWNTO 0);
SIGNAL CONTA_UNIDADES : std_logic_vector(3 DOWNTO 0);
SIGNAL CONTA_SWITCH : std_logic_vector(18 DOWNTO 0);
SIGNAL \ALT_INV_EDO_P~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_INI <= INI;
ww_RESET <= RESET;
DISPLAY <= ww_DISPLAY;
TRANSISTOR <= ww_TRANSISTOR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_EDO_P~q\ <= NOT \EDO_P~q\;

-- Location: IOOBUF_X1_Y0_N23
\DISPLAY[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY~1_combout\,
	devoe => ww_devoe,
	o => \DISPLAY[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\DISPLAY[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY~4_combout\,
	devoe => ww_devoe,
	o => \DISPLAY[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\DISPLAY[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY~8_combout\,
	devoe => ww_devoe,
	o => \DISPLAY[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\DISPLAY[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY~9_combout\,
	devoe => ww_devoe,
	o => \DISPLAY[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\DISPLAY[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY~10_combout\,
	devoe => ww_devoe,
	o => \DISPLAY[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\DISPLAY[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY~11_combout\,
	devoe => ww_devoe,
	o => \DISPLAY[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\DISPLAY[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY~12_combout\,
	devoe => ww_devoe,
	o => \DISPLAY[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\TRANSISTOR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_EDO_P~q\,
	devoe => ww_devoe,
	o => \TRANSISTOR[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\TRANSISTOR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EDO_P~q\,
	devoe => ww_devoe,
	o => \TRANSISTOR[1]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X13_Y0_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X10_Y4_N28
\CONTA_DECENAS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_DECENAS~0_combout\ = (!CONTA_DECENAS(0) & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => CONTA_DECENAS(0),
	datad => \RESET~input_o\,
	combout => \CONTA_DECENAS~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\INI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INI,
	o => \INI~input_o\);

-- Location: LCCOMB_X10_Y4_N26
\CONTA_UNIDADES~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_UNIDADES~1_combout\ = (!CONTA_UNIDADES(0) & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => CONTA_UNIDADES(0),
	datad => \RESET~input_o\,
	combout => \CONTA_UNIDADES~1_combout\);

-- Location: LCCOMB_X11_Y4_N6
\CONTA_RETRASO[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[0]~26_combout\ = CONTA_RETRASO(0) $ (VCC)
-- \CONTA_RETRASO[0]~27\ = CARRY(CONTA_RETRASO(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(0),
	datad => VCC,
	combout => \CONTA_RETRASO[0]~26_combout\,
	cout => \CONTA_RETRASO[0]~27\);

-- Location: LCCOMB_X11_Y4_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (CONTA_RETRASO(7)) # (((!CONTA_RETRASO(5)) # (!CONTA_RETRASO(4))) # (!CONTA_RETRASO(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(7),
	datab => CONTA_RETRASO(6),
	datac => CONTA_RETRASO(4),
	datad => CONTA_RETRASO(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X11_Y4_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((!CONTA_RETRASO(3)) # (!CONTA_RETRASO(0))) # (!CONTA_RETRASO(1))) # (!CONTA_RETRASO(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(2),
	datab => CONTA_RETRASO(1),
	datac => CONTA_RETRASO(0),
	datad => CONTA_RETRASO(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X11_Y4_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (CONTA_RETRASO(10)) # ((CONTA_RETRASO(9)) # ((CONTA_RETRASO(8)) # (CONTA_RETRASO(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(10),
	datab => CONTA_RETRASO(9),
	datac => CONTA_RETRASO(8),
	datad => CONTA_RETRASO(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X10_Y4_N20
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (((!CONTA_RETRASO(14)) # (!CONTA_RETRASO(15))) # (!CONTA_RETRASO(13))) # (!CONTA_RETRASO(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(12),
	datab => CONTA_RETRASO(13),
	datac => CONTA_RETRASO(15),
	datad => CONTA_RETRASO(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X10_Y4_N6
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\) # ((\Equal0~0_combout\) # ((\Equal0~2_combout\) # (\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X10_Y4_N30
\CONTA_RETRASO[10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[10]~28_combout\ = (\RESET~input_o\) # ((!\Equal0~7_combout\ & !\Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \CONTA_RETRASO[10]~28_combout\);

-- Location: LCCOMB_X12_Y3_N0
\CONTA_RETRASO[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[10]~29_combout\ = (\RESET~input_o\) # (\INI~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \INI~input_o\,
	combout => \CONTA_RETRASO[10]~29_combout\);

-- Location: FF_X11_Y4_N7
\CONTA_RETRASO[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[0]~26_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(0));

-- Location: LCCOMB_X11_Y4_N8
\CONTA_RETRASO[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[1]~30_combout\ = (CONTA_RETRASO(1) & (!\CONTA_RETRASO[0]~27\)) # (!CONTA_RETRASO(1) & ((\CONTA_RETRASO[0]~27\) # (GND)))
-- \CONTA_RETRASO[1]~31\ = CARRY((!\CONTA_RETRASO[0]~27\) # (!CONTA_RETRASO(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(1),
	datad => VCC,
	cin => \CONTA_RETRASO[0]~27\,
	combout => \CONTA_RETRASO[1]~30_combout\,
	cout => \CONTA_RETRASO[1]~31\);

-- Location: FF_X11_Y4_N9
\CONTA_RETRASO[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[1]~30_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(1));

-- Location: LCCOMB_X11_Y4_N10
\CONTA_RETRASO[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[2]~32_combout\ = (CONTA_RETRASO(2) & (\CONTA_RETRASO[1]~31\ $ (GND))) # (!CONTA_RETRASO(2) & (!\CONTA_RETRASO[1]~31\ & VCC))
-- \CONTA_RETRASO[2]~33\ = CARRY((CONTA_RETRASO(2) & !\CONTA_RETRASO[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(2),
	datad => VCC,
	cin => \CONTA_RETRASO[1]~31\,
	combout => \CONTA_RETRASO[2]~32_combout\,
	cout => \CONTA_RETRASO[2]~33\);

-- Location: FF_X11_Y4_N11
\CONTA_RETRASO[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[2]~32_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(2));

-- Location: LCCOMB_X11_Y4_N12
\CONTA_RETRASO[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[3]~34_combout\ = (CONTA_RETRASO(3) & (!\CONTA_RETRASO[2]~33\)) # (!CONTA_RETRASO(3) & ((\CONTA_RETRASO[2]~33\) # (GND)))
-- \CONTA_RETRASO[3]~35\ = CARRY((!\CONTA_RETRASO[2]~33\) # (!CONTA_RETRASO(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(3),
	datad => VCC,
	cin => \CONTA_RETRASO[2]~33\,
	combout => \CONTA_RETRASO[3]~34_combout\,
	cout => \CONTA_RETRASO[3]~35\);

-- Location: FF_X11_Y4_N13
\CONTA_RETRASO[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[3]~34_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(3));

-- Location: LCCOMB_X11_Y4_N14
\CONTA_RETRASO[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[4]~36_combout\ = (CONTA_RETRASO(4) & (\CONTA_RETRASO[3]~35\ $ (GND))) # (!CONTA_RETRASO(4) & (!\CONTA_RETRASO[3]~35\ & VCC))
-- \CONTA_RETRASO[4]~37\ = CARRY((CONTA_RETRASO(4) & !\CONTA_RETRASO[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(4),
	datad => VCC,
	cin => \CONTA_RETRASO[3]~35\,
	combout => \CONTA_RETRASO[4]~36_combout\,
	cout => \CONTA_RETRASO[4]~37\);

-- Location: FF_X11_Y4_N15
\CONTA_RETRASO[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[4]~36_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(4));

-- Location: LCCOMB_X11_Y4_N16
\CONTA_RETRASO[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[5]~38_combout\ = (CONTA_RETRASO(5) & (!\CONTA_RETRASO[4]~37\)) # (!CONTA_RETRASO(5) & ((\CONTA_RETRASO[4]~37\) # (GND)))
-- \CONTA_RETRASO[5]~39\ = CARRY((!\CONTA_RETRASO[4]~37\) # (!CONTA_RETRASO(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(5),
	datad => VCC,
	cin => \CONTA_RETRASO[4]~37\,
	combout => \CONTA_RETRASO[5]~38_combout\,
	cout => \CONTA_RETRASO[5]~39\);

-- Location: FF_X11_Y4_N17
\CONTA_RETRASO[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[5]~38_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(5));

-- Location: LCCOMB_X11_Y4_N18
\CONTA_RETRASO[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[6]~40_combout\ = (CONTA_RETRASO(6) & (\CONTA_RETRASO[5]~39\ $ (GND))) # (!CONTA_RETRASO(6) & (!\CONTA_RETRASO[5]~39\ & VCC))
-- \CONTA_RETRASO[6]~41\ = CARRY((CONTA_RETRASO(6) & !\CONTA_RETRASO[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(6),
	datad => VCC,
	cin => \CONTA_RETRASO[5]~39\,
	combout => \CONTA_RETRASO[6]~40_combout\,
	cout => \CONTA_RETRASO[6]~41\);

-- Location: FF_X11_Y4_N19
\CONTA_RETRASO[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[6]~40_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(6));

-- Location: LCCOMB_X11_Y4_N20
\CONTA_RETRASO[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[7]~42_combout\ = (CONTA_RETRASO(7) & (!\CONTA_RETRASO[6]~41\)) # (!CONTA_RETRASO(7) & ((\CONTA_RETRASO[6]~41\) # (GND)))
-- \CONTA_RETRASO[7]~43\ = CARRY((!\CONTA_RETRASO[6]~41\) # (!CONTA_RETRASO(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(7),
	datad => VCC,
	cin => \CONTA_RETRASO[6]~41\,
	combout => \CONTA_RETRASO[7]~42_combout\,
	cout => \CONTA_RETRASO[7]~43\);

-- Location: FF_X11_Y4_N21
\CONTA_RETRASO[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[7]~42_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(7));

-- Location: LCCOMB_X11_Y4_N22
\CONTA_RETRASO[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[8]~44_combout\ = (CONTA_RETRASO(8) & (\CONTA_RETRASO[7]~43\ $ (GND))) # (!CONTA_RETRASO(8) & (!\CONTA_RETRASO[7]~43\ & VCC))
-- \CONTA_RETRASO[8]~45\ = CARRY((CONTA_RETRASO(8) & !\CONTA_RETRASO[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(8),
	datad => VCC,
	cin => \CONTA_RETRASO[7]~43\,
	combout => \CONTA_RETRASO[8]~44_combout\,
	cout => \CONTA_RETRASO[8]~45\);

-- Location: FF_X11_Y4_N23
\CONTA_RETRASO[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[8]~44_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(8));

-- Location: LCCOMB_X11_Y4_N24
\CONTA_RETRASO[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[9]~46_combout\ = (CONTA_RETRASO(9) & (!\CONTA_RETRASO[8]~45\)) # (!CONTA_RETRASO(9) & ((\CONTA_RETRASO[8]~45\) # (GND)))
-- \CONTA_RETRASO[9]~47\ = CARRY((!\CONTA_RETRASO[8]~45\) # (!CONTA_RETRASO(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(9),
	datad => VCC,
	cin => \CONTA_RETRASO[8]~45\,
	combout => \CONTA_RETRASO[9]~46_combout\,
	cout => \CONTA_RETRASO[9]~47\);

-- Location: FF_X11_Y4_N25
\CONTA_RETRASO[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[9]~46_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(9));

-- Location: LCCOMB_X11_Y4_N26
\CONTA_RETRASO[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[10]~48_combout\ = (CONTA_RETRASO(10) & (\CONTA_RETRASO[9]~47\ $ (GND))) # (!CONTA_RETRASO(10) & (!\CONTA_RETRASO[9]~47\ & VCC))
-- \CONTA_RETRASO[10]~49\ = CARRY((CONTA_RETRASO(10) & !\CONTA_RETRASO[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(10),
	datad => VCC,
	cin => \CONTA_RETRASO[9]~47\,
	combout => \CONTA_RETRASO[10]~48_combout\,
	cout => \CONTA_RETRASO[10]~49\);

-- Location: FF_X11_Y4_N27
\CONTA_RETRASO[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[10]~48_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(10));

-- Location: LCCOMB_X11_Y4_N28
\CONTA_RETRASO[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[11]~50_combout\ = (CONTA_RETRASO(11) & (!\CONTA_RETRASO[10]~49\)) # (!CONTA_RETRASO(11) & ((\CONTA_RETRASO[10]~49\) # (GND)))
-- \CONTA_RETRASO[11]~51\ = CARRY((!\CONTA_RETRASO[10]~49\) # (!CONTA_RETRASO(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(11),
	datad => VCC,
	cin => \CONTA_RETRASO[10]~49\,
	combout => \CONTA_RETRASO[11]~50_combout\,
	cout => \CONTA_RETRASO[11]~51\);

-- Location: FF_X11_Y4_N29
\CONTA_RETRASO[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[11]~50_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(11));

-- Location: LCCOMB_X11_Y4_N30
\CONTA_RETRASO[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[12]~52_combout\ = (CONTA_RETRASO(12) & (\CONTA_RETRASO[11]~51\ $ (GND))) # (!CONTA_RETRASO(12) & (!\CONTA_RETRASO[11]~51\ & VCC))
-- \CONTA_RETRASO[12]~53\ = CARRY((CONTA_RETRASO(12) & !\CONTA_RETRASO[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(12),
	datad => VCC,
	cin => \CONTA_RETRASO[11]~51\,
	combout => \CONTA_RETRASO[12]~52_combout\,
	cout => \CONTA_RETRASO[12]~53\);

-- Location: FF_X11_Y4_N31
\CONTA_RETRASO[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[12]~52_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(12));

-- Location: LCCOMB_X11_Y3_N0
\CONTA_RETRASO[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[13]~54_combout\ = (CONTA_RETRASO(13) & (!\CONTA_RETRASO[12]~53\)) # (!CONTA_RETRASO(13) & ((\CONTA_RETRASO[12]~53\) # (GND)))
-- \CONTA_RETRASO[13]~55\ = CARRY((!\CONTA_RETRASO[12]~53\) # (!CONTA_RETRASO(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(13),
	datad => VCC,
	cin => \CONTA_RETRASO[12]~53\,
	combout => \CONTA_RETRASO[13]~54_combout\,
	cout => \CONTA_RETRASO[13]~55\);

-- Location: FF_X11_Y3_N1
\CONTA_RETRASO[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[13]~54_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(13));

-- Location: LCCOMB_X11_Y3_N2
\CONTA_RETRASO[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[14]~56_combout\ = (CONTA_RETRASO(14) & (\CONTA_RETRASO[13]~55\ $ (GND))) # (!CONTA_RETRASO(14) & (!\CONTA_RETRASO[13]~55\ & VCC))
-- \CONTA_RETRASO[14]~57\ = CARRY((CONTA_RETRASO(14) & !\CONTA_RETRASO[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(14),
	datad => VCC,
	cin => \CONTA_RETRASO[13]~55\,
	combout => \CONTA_RETRASO[14]~56_combout\,
	cout => \CONTA_RETRASO[14]~57\);

-- Location: FF_X11_Y3_N3
\CONTA_RETRASO[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[14]~56_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(14));

-- Location: LCCOMB_X11_Y3_N4
\CONTA_RETRASO[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[15]~58_combout\ = (CONTA_RETRASO(15) & (!\CONTA_RETRASO[14]~57\)) # (!CONTA_RETRASO(15) & ((\CONTA_RETRASO[14]~57\) # (GND)))
-- \CONTA_RETRASO[15]~59\ = CARRY((!\CONTA_RETRASO[14]~57\) # (!CONTA_RETRASO(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(15),
	datad => VCC,
	cin => \CONTA_RETRASO[14]~57\,
	combout => \CONTA_RETRASO[15]~58_combout\,
	cout => \CONTA_RETRASO[15]~59\);

-- Location: FF_X11_Y3_N5
\CONTA_RETRASO[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[15]~58_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(15));

-- Location: LCCOMB_X11_Y3_N6
\CONTA_RETRASO[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[16]~60_combout\ = (CONTA_RETRASO(16) & (\CONTA_RETRASO[15]~59\ $ (GND))) # (!CONTA_RETRASO(16) & (!\CONTA_RETRASO[15]~59\ & VCC))
-- \CONTA_RETRASO[16]~61\ = CARRY((CONTA_RETRASO(16) & !\CONTA_RETRASO[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(16),
	datad => VCC,
	cin => \CONTA_RETRASO[15]~59\,
	combout => \CONTA_RETRASO[16]~60_combout\,
	cout => \CONTA_RETRASO[16]~61\);

-- Location: FF_X11_Y3_N7
\CONTA_RETRASO[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[16]~60_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(16));

-- Location: LCCOMB_X11_Y3_N8
\CONTA_RETRASO[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[17]~62_combout\ = (CONTA_RETRASO(17) & (!\CONTA_RETRASO[16]~61\)) # (!CONTA_RETRASO(17) & ((\CONTA_RETRASO[16]~61\) # (GND)))
-- \CONTA_RETRASO[17]~63\ = CARRY((!\CONTA_RETRASO[16]~61\) # (!CONTA_RETRASO(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(17),
	datad => VCC,
	cin => \CONTA_RETRASO[16]~61\,
	combout => \CONTA_RETRASO[17]~62_combout\,
	cout => \CONTA_RETRASO[17]~63\);

-- Location: FF_X11_Y3_N9
\CONTA_RETRASO[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[17]~62_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(17));

-- Location: LCCOMB_X11_Y3_N10
\CONTA_RETRASO[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[18]~64_combout\ = (CONTA_RETRASO(18) & (\CONTA_RETRASO[17]~63\ $ (GND))) # (!CONTA_RETRASO(18) & (!\CONTA_RETRASO[17]~63\ & VCC))
-- \CONTA_RETRASO[18]~65\ = CARRY((CONTA_RETRASO(18) & !\CONTA_RETRASO[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(18),
	datad => VCC,
	cin => \CONTA_RETRASO[17]~63\,
	combout => \CONTA_RETRASO[18]~64_combout\,
	cout => \CONTA_RETRASO[18]~65\);

-- Location: FF_X11_Y3_N11
\CONTA_RETRASO[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[18]~64_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(18));

-- Location: LCCOMB_X11_Y3_N12
\CONTA_RETRASO[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[19]~66_combout\ = (CONTA_RETRASO(19) & (!\CONTA_RETRASO[18]~65\)) # (!CONTA_RETRASO(19) & ((\CONTA_RETRASO[18]~65\) # (GND)))
-- \CONTA_RETRASO[19]~67\ = CARRY((!\CONTA_RETRASO[18]~65\) # (!CONTA_RETRASO(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(19),
	datad => VCC,
	cin => \CONTA_RETRASO[18]~65\,
	combout => \CONTA_RETRASO[19]~66_combout\,
	cout => \CONTA_RETRASO[19]~67\);

-- Location: FF_X11_Y3_N13
\CONTA_RETRASO[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[19]~66_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(19));

-- Location: LCCOMB_X11_Y3_N14
\CONTA_RETRASO[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[20]~68_combout\ = (CONTA_RETRASO(20) & (\CONTA_RETRASO[19]~67\ $ (GND))) # (!CONTA_RETRASO(20) & (!\CONTA_RETRASO[19]~67\ & VCC))
-- \CONTA_RETRASO[20]~69\ = CARRY((CONTA_RETRASO(20) & !\CONTA_RETRASO[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(20),
	datad => VCC,
	cin => \CONTA_RETRASO[19]~67\,
	combout => \CONTA_RETRASO[20]~68_combout\,
	cout => \CONTA_RETRASO[20]~69\);

-- Location: FF_X11_Y3_N15
\CONTA_RETRASO[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[20]~68_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(20));

-- Location: LCCOMB_X11_Y3_N16
\CONTA_RETRASO[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[21]~70_combout\ = (CONTA_RETRASO(21) & (!\CONTA_RETRASO[20]~69\)) # (!CONTA_RETRASO(21) & ((\CONTA_RETRASO[20]~69\) # (GND)))
-- \CONTA_RETRASO[21]~71\ = CARRY((!\CONTA_RETRASO[20]~69\) # (!CONTA_RETRASO(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_RETRASO(21),
	datad => VCC,
	cin => \CONTA_RETRASO[20]~69\,
	combout => \CONTA_RETRASO[21]~70_combout\,
	cout => \CONTA_RETRASO[21]~71\);

-- Location: FF_X11_Y3_N17
\CONTA_RETRASO[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[21]~70_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(21));

-- Location: LCCOMB_X11_Y3_N18
\CONTA_RETRASO[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[22]~72_combout\ = (CONTA_RETRASO(22) & (\CONTA_RETRASO[21]~71\ $ (GND))) # (!CONTA_RETRASO(22) & (!\CONTA_RETRASO[21]~71\ & VCC))
-- \CONTA_RETRASO[22]~73\ = CARRY((CONTA_RETRASO(22) & !\CONTA_RETRASO[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(22),
	datad => VCC,
	cin => \CONTA_RETRASO[21]~71\,
	combout => \CONTA_RETRASO[22]~72_combout\,
	cout => \CONTA_RETRASO[22]~73\);

-- Location: FF_X11_Y3_N19
\CONTA_RETRASO[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[22]~72_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(22));

-- Location: LCCOMB_X11_Y3_N20
\CONTA_RETRASO[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[23]~74_combout\ = (CONTA_RETRASO(23) & (!\CONTA_RETRASO[22]~73\)) # (!CONTA_RETRASO(23) & ((\CONTA_RETRASO[22]~73\) # (GND)))
-- \CONTA_RETRASO[23]~75\ = CARRY((!\CONTA_RETRASO[22]~73\) # (!CONTA_RETRASO(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(23),
	datad => VCC,
	cin => \CONTA_RETRASO[22]~73\,
	combout => \CONTA_RETRASO[23]~74_combout\,
	cout => \CONTA_RETRASO[23]~75\);

-- Location: FF_X11_Y3_N21
\CONTA_RETRASO[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[23]~74_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(23));

-- Location: LCCOMB_X11_Y3_N22
\CONTA_RETRASO[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[24]~76_combout\ = (CONTA_RETRASO(24) & (\CONTA_RETRASO[23]~75\ $ (GND))) # (!CONTA_RETRASO(24) & (!\CONTA_RETRASO[23]~75\ & VCC))
-- \CONTA_RETRASO[24]~77\ = CARRY((CONTA_RETRASO(24) & !\CONTA_RETRASO[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(24),
	datad => VCC,
	cin => \CONTA_RETRASO[23]~75\,
	combout => \CONTA_RETRASO[24]~76_combout\,
	cout => \CONTA_RETRASO[24]~77\);

-- Location: FF_X11_Y3_N23
\CONTA_RETRASO[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[24]~76_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(24));

-- Location: LCCOMB_X11_Y3_N24
\CONTA_RETRASO[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_RETRASO[25]~78_combout\ = \CONTA_RETRASO[24]~77\ $ (CONTA_RETRASO(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CONTA_RETRASO(25),
	cin => \CONTA_RETRASO[24]~77\,
	combout => \CONTA_RETRASO[25]~78_combout\);

-- Location: FF_X11_Y3_N25
\CONTA_RETRASO[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_RETRASO[25]~78_combout\,
	sclr => \CONTA_RETRASO[10]~28_combout\,
	ena => \CONTA_RETRASO[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_RETRASO(25));

-- Location: LCCOMB_X11_Y3_N30
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (CONTA_RETRASO(18)) # (((CONTA_RETRASO(16)) # (!CONTA_RETRASO(19))) # (!CONTA_RETRASO(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(18),
	datab => CONTA_RETRASO(17),
	datac => CONTA_RETRASO(16),
	datad => CONTA_RETRASO(19),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X11_Y3_N28
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (((!CONTA_RETRASO(23)) # (!CONTA_RETRASO(20))) # (!CONTA_RETRASO(21))) # (!CONTA_RETRASO(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(22),
	datab => CONTA_RETRASO(21),
	datac => CONTA_RETRASO(20),
	datad => CONTA_RETRASO(23),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X11_Y3_N26
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (CONTA_RETRASO(24)) # (((\Equal0~5_combout\) # (\Equal0~6_combout\)) # (!CONTA_RETRASO(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_RETRASO(24),
	datab => CONTA_RETRASO(25),
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X10_Y4_N14
\CONTA_UNIDADES[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_UNIDADES[0]~2_combout\ = (\RESET~input_o\) # ((!\Equal0~7_combout\ & (\INI~input_o\ & !\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \Equal0~7_combout\,
	datac => \INI~input_o\,
	datad => \Equal0~4_combout\,
	combout => \CONTA_UNIDADES[0]~2_combout\);

-- Location: FF_X10_Y4_N27
\CONTA_UNIDADES[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_UNIDADES~1_combout\,
	ena => \CONTA_UNIDADES[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_UNIDADES(0));

-- Location: LCCOMB_X10_Y4_N10
\CONTA_UNIDADES~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_UNIDADES~3_combout\ = (!\CONTA_UNIDADES[0]~0_combout\ & (!\RESET~input_o\ & (CONTA_UNIDADES(0) $ (CONTA_UNIDADES(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTA_UNIDADES[0]~0_combout\,
	datab => CONTA_UNIDADES(0),
	datac => CONTA_UNIDADES(1),
	datad => \RESET~input_o\,
	combout => \CONTA_UNIDADES~3_combout\);

-- Location: FF_X10_Y4_N11
\CONTA_UNIDADES[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_UNIDADES~3_combout\,
	ena => \CONTA_UNIDADES[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_UNIDADES(1));

-- Location: LCCOMB_X9_Y4_N6
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = CONTA_UNIDADES(2) $ (((CONTA_UNIDADES(1) & CONTA_UNIDADES(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONTA_UNIDADES(2),
	datac => CONTA_UNIDADES(1),
	datad => CONTA_UNIDADES(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X10_Y4_N22
\CONTA_UNIDADES~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_UNIDADES~4_combout\ = (!\CONTA_UNIDADES[0]~0_combout\ & (\Add1~0_combout\ & !\RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTA_UNIDADES[0]~0_combout\,
	datac => \Add1~0_combout\,
	datad => \RESET~input_o\,
	combout => \CONTA_UNIDADES~4_combout\);

-- Location: FF_X10_Y4_N23
\CONTA_UNIDADES[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_UNIDADES~4_combout\,
	ena => \CONTA_UNIDADES[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_UNIDADES(2));

-- Location: LCCOMB_X9_Y4_N14
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = CONTA_UNIDADES(3) $ (((CONTA_UNIDADES(0) & (CONTA_UNIDADES(1) & CONTA_UNIDADES(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_UNIDADES(0),
	datab => CONTA_UNIDADES(3),
	datac => CONTA_UNIDADES(1),
	datad => CONTA_UNIDADES(2),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X10_Y4_N18
\CONTA_UNIDADES~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_UNIDADES~5_combout\ = (!\RESET~input_o\ & (!\CONTA_UNIDADES[0]~0_combout\ & \Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \CONTA_UNIDADES[0]~0_combout\,
	datad => \Add1~1_combout\,
	combout => \CONTA_UNIDADES~5_combout\);

-- Location: FF_X10_Y4_N19
\CONTA_UNIDADES[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_UNIDADES~5_combout\,
	ena => \CONTA_UNIDADES[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_UNIDADES(3));

-- Location: LCCOMB_X10_Y4_N2
\CONTA_UNIDADES[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_UNIDADES[0]~0_combout\ = (!CONTA_UNIDADES(1) & (CONTA_UNIDADES(3) & (!CONTA_UNIDADES(2) & CONTA_UNIDADES(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_UNIDADES(1),
	datab => CONTA_UNIDADES(3),
	datac => CONTA_UNIDADES(2),
	datad => CONTA_UNIDADES(0),
	combout => \CONTA_UNIDADES[0]~0_combout\);

-- Location: LCCOMB_X10_Y4_N16
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\) # (\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X10_Y4_N4
\CONTA_DECENAS[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_DECENAS[2]~1_combout\ = (\RESET~input_o\) # ((\INI~input_o\ & (\CONTA_UNIDADES[0]~0_combout\ & !\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \INI~input_o\,
	datac => \CONTA_UNIDADES[0]~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \CONTA_DECENAS[2]~1_combout\);

-- Location: FF_X10_Y4_N29
\CONTA_DECENAS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_DECENAS~0_combout\,
	ena => \CONTA_DECENAS[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_DECENAS(0));

-- Location: LCCOMB_X10_Y4_N0
\CONTA_DECENAS~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_DECENAS~3_combout\ = (\CONTA_DECENAS[2]~2_combout\ & (!\RESET~input_o\ & (CONTA_DECENAS(0) $ (CONTA_DECENAS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTA_DECENAS[2]~2_combout\,
	datab => CONTA_DECENAS(0),
	datac => CONTA_DECENAS(1),
	datad => \RESET~input_o\,
	combout => \CONTA_DECENAS~3_combout\);

-- Location: FF_X10_Y4_N1
\CONTA_DECENAS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_DECENAS~3_combout\,
	ena => \CONTA_DECENAS[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_DECENAS(1));

-- Location: LCCOMB_X9_Y4_N16
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = CONTA_DECENAS(2) $ (((CONTA_DECENAS(0) & CONTA_DECENAS(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONTA_DECENAS(0),
	datac => CONTA_DECENAS(1),
	datad => CONTA_DECENAS(2),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X10_Y4_N24
\CONTA_DECENAS~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_DECENAS~4_combout\ = (\CONTA_DECENAS[2]~2_combout\ & (\Add2~0_combout\ & !\RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTA_DECENAS[2]~2_combout\,
	datac => \Add2~0_combout\,
	datad => \RESET~input_o\,
	combout => \CONTA_DECENAS~4_combout\);

-- Location: FF_X10_Y4_N25
\CONTA_DECENAS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_DECENAS~4_combout\,
	ena => \CONTA_DECENAS[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_DECENAS(2));

-- Location: LCCOMB_X10_Y4_N12
\CONTA_DECENAS[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_DECENAS[2]~2_combout\ = (CONTA_DECENAS(2)) # (((CONTA_DECENAS(1)) # (!CONTA_DECENAS(3))) # (!CONTA_DECENAS(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_DECENAS(2),
	datab => CONTA_DECENAS(0),
	datac => CONTA_DECENAS(3),
	datad => CONTA_DECENAS(1),
	combout => \CONTA_DECENAS[2]~2_combout\);

-- Location: LCCOMB_X9_Y4_N4
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = CONTA_DECENAS(3) $ (((CONTA_DECENAS(1) & (CONTA_DECENAS(0) & CONTA_DECENAS(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_DECENAS(1),
	datab => CONTA_DECENAS(0),
	datac => CONTA_DECENAS(3),
	datad => CONTA_DECENAS(2),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X10_Y4_N8
\CONTA_DECENAS~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_DECENAS~5_combout\ = (\CONTA_DECENAS[2]~2_combout\ & (\Add2~1_combout\ & !\RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTA_DECENAS[2]~2_combout\,
	datac => \Add2~1_combout\,
	datad => \RESET~input_o\,
	combout => \CONTA_DECENAS~5_combout\);

-- Location: FF_X10_Y4_N9
\CONTA_DECENAS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_DECENAS~5_combout\,
	ena => \CONTA_DECENAS[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_DECENAS(3));

-- Location: LCCOMB_X6_Y4_N14
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = CONTA_SWITCH(0) $ (VCC)
-- \Add3~1\ = CARRY(CONTA_SWITCH(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONTA_SWITCH(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: FF_X6_Y4_N15
\CONTA_SWITCH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(0));

-- Location: LCCOMB_X6_Y4_N16
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (CONTA_SWITCH(1) & (!\Add3~1\)) # (!CONTA_SWITCH(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!CONTA_SWITCH(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_SWITCH(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X6_Y4_N17
\CONTA_SWITCH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(1));

-- Location: LCCOMB_X6_Y4_N18
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (CONTA_SWITCH(2) & (\Add3~3\ $ (GND))) # (!CONTA_SWITCH(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((CONTA_SWITCH(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_SWITCH(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: FF_X6_Y4_N19
\CONTA_SWITCH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(2));

-- Location: LCCOMB_X6_Y4_N20
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (CONTA_SWITCH(3) & (!\Add3~5\)) # (!CONTA_SWITCH(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!CONTA_SWITCH(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_SWITCH(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: FF_X6_Y4_N21
\CONTA_SWITCH[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(3));

-- Location: LCCOMB_X6_Y4_N22
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (CONTA_SWITCH(4) & (\Add3~7\ $ (GND))) # (!CONTA_SWITCH(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((CONTA_SWITCH(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: FF_X6_Y4_N23
\CONTA_SWITCH[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(4));

-- Location: LCCOMB_X6_Y4_N24
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (CONTA_SWITCH(5) & (!\Add3~9\)) # (!CONTA_SWITCH(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!CONTA_SWITCH(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X6_Y4_N10
\CONTA_SWITCH~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_SWITCH~6_combout\ = (\Add3~10_combout\ & !\Equal3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~10_combout\,
	datad => \Equal3~5_combout\,
	combout => \CONTA_SWITCH~6_combout\);

-- Location: FF_X6_Y4_N11
\CONTA_SWITCH[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_SWITCH~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(5));

-- Location: LCCOMB_X6_Y4_N26
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (CONTA_SWITCH(6) & (\Add3~11\ $ (GND))) # (!CONTA_SWITCH(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((CONTA_SWITCH(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X6_Y4_N27
\CONTA_SWITCH[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(6));

-- Location: LCCOMB_X6_Y4_N4
\Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (CONTA_SWITCH(4) & (CONTA_SWITCH(3) & (!CONTA_SWITCH(6) & !CONTA_SWITCH(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(4),
	datab => CONTA_SWITCH(3),
	datac => CONTA_SWITCH(6),
	datad => CONTA_SWITCH(5),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X6_Y4_N28
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (CONTA_SWITCH(7) & (!\Add3~13\)) # (!CONTA_SWITCH(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!CONTA_SWITCH(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_SWITCH(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: FF_X6_Y4_N29
\CONTA_SWITCH[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(7));

-- Location: LCCOMB_X6_Y4_N30
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (CONTA_SWITCH(8) & (\Add3~15\ $ (GND))) # (!CONTA_SWITCH(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((CONTA_SWITCH(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X6_Y4_N6
\CONTA_SWITCH~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_SWITCH~5_combout\ = (\Add3~16_combout\ & !\Equal3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~16_combout\,
	datad => \Equal3~5_combout\,
	combout => \CONTA_SWITCH~5_combout\);

-- Location: FF_X6_Y4_N7
\CONTA_SWITCH[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_SWITCH~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(8));

-- Location: LCCOMB_X6_Y3_N0
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (CONTA_SWITCH(9) & (!\Add3~17\)) # (!CONTA_SWITCH(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!CONTA_SWITCH(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_SWITCH(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X6_Y3_N1
\CONTA_SWITCH[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(9));

-- Location: LCCOMB_X6_Y3_N2
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (CONTA_SWITCH(10) & (\Add3~19\ $ (GND))) # (!CONTA_SWITCH(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((CONTA_SWITCH(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_SWITCH(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: FF_X6_Y3_N3
\CONTA_SWITCH[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(10));

-- Location: LCCOMB_X6_Y3_N4
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (CONTA_SWITCH(11) & (!\Add3~21\)) # (!CONTA_SWITCH(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!CONTA_SWITCH(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_SWITCH(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: FF_X6_Y3_N5
\CONTA_SWITCH[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(11));

-- Location: LCCOMB_X6_Y3_N6
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (CONTA_SWITCH(12) & (\Add3~23\ $ (GND))) # (!CONTA_SWITCH(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((CONTA_SWITCH(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: FF_X6_Y3_N7
\CONTA_SWITCH[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(12));

-- Location: LCCOMB_X6_Y3_N8
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (CONTA_SWITCH(13) & (!\Add3~25\)) # (!CONTA_SWITCH(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!CONTA_SWITCH(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_SWITCH(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X6_Y3_N24
\CONTA_SWITCH~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_SWITCH~4_combout\ = (\Add3~26_combout\ & !\Equal3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~26_combout\,
	datad => \Equal3~5_combout\,
	combout => \CONTA_SWITCH~4_combout\);

-- Location: FF_X6_Y3_N25
\CONTA_SWITCH[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_SWITCH~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(13));

-- Location: LCCOMB_X6_Y3_N10
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (CONTA_SWITCH(14) & (\Add3~27\ $ (GND))) # (!CONTA_SWITCH(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((CONTA_SWITCH(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: FF_X6_Y3_N11
\CONTA_SWITCH[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add3~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(14));

-- Location: LCCOMB_X6_Y3_N12
\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (CONTA_SWITCH(15) & (!\Add3~29\)) # (!CONTA_SWITCH(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!CONTA_SWITCH(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X6_Y3_N22
\CONTA_SWITCH~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_SWITCH~3_combout\ = (\Add3~30_combout\ & !\Equal3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datad => \Equal3~5_combout\,
	combout => \CONTA_SWITCH~3_combout\);

-- Location: FF_X6_Y3_N23
\CONTA_SWITCH[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_SWITCH~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(15));

-- Location: LCCOMB_X6_Y3_N14
\Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (CONTA_SWITCH(16) & (\Add3~31\ $ (GND))) # (!CONTA_SWITCH(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((CONTA_SWITCH(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CONTA_SWITCH(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X6_Y3_N28
\CONTA_SWITCH~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_SWITCH~2_combout\ = (\Add3~32_combout\ & !\Equal3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~32_combout\,
	datad => \Equal3~5_combout\,
	combout => \CONTA_SWITCH~2_combout\);

-- Location: FF_X6_Y3_N29
\CONTA_SWITCH[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_SWITCH~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(16));

-- Location: LCCOMB_X6_Y3_N16
\Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (CONTA_SWITCH(17) & (!\Add3~33\)) # (!CONTA_SWITCH(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!CONTA_SWITCH(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X6_Y3_N26
\CONTA_SWITCH~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_SWITCH~1_combout\ = (!\Equal3~5_combout\ & \Add3~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~5_combout\,
	datad => \Add3~34_combout\,
	combout => \CONTA_SWITCH~1_combout\);

-- Location: FF_X6_Y3_N27
\CONTA_SWITCH[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_SWITCH~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(17));

-- Location: LCCOMB_X6_Y3_N18
\Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = \Add3~35\ $ (!CONTA_SWITCH(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CONTA_SWITCH(18),
	cin => \Add3~35\,
	combout => \Add3~36_combout\);

-- Location: LCCOMB_X6_Y3_N20
\CONTA_SWITCH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTA_SWITCH~0_combout\ = (!\Equal3~5_combout\ & \Add3~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~5_combout\,
	datad => \Add3~36_combout\,
	combout => \CONTA_SWITCH~0_combout\);

-- Location: FF_X6_Y3_N21
\CONTA_SWITCH[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CONTA_SWITCH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CONTA_SWITCH(18));

-- Location: LCCOMB_X6_Y4_N8
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (CONTA_SWITCH(18) & (CONTA_SWITCH(17) & (CONTA_SWITCH(15) & CONTA_SWITCH(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(18),
	datab => CONTA_SWITCH(17),
	datac => CONTA_SWITCH(15),
	datad => CONTA_SWITCH(16),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X6_Y3_N30
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!CONTA_SWITCH(12) & (CONTA_SWITCH(13) & (!CONTA_SWITCH(11) & !CONTA_SWITCH(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(12),
	datab => CONTA_SWITCH(13),
	datac => CONTA_SWITCH(11),
	datad => CONTA_SWITCH(14),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X6_Y4_N12
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (CONTA_SWITCH(8) & (!CONTA_SWITCH(7) & (!CONTA_SWITCH(9) & !CONTA_SWITCH(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(8),
	datab => CONTA_SWITCH(7),
	datac => CONTA_SWITCH(9),
	datad => CONTA_SWITCH(10),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X6_Y4_N2
\Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~3_combout\ & (\Equal3~0_combout\ & (\Equal3~1_combout\ & \Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~2_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X6_Y4_N0
\Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (CONTA_SWITCH(2) & (CONTA_SWITCH(0) & (CONTA_SWITCH(1) & \Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_SWITCH(2),
	datab => CONTA_SWITCH(0),
	datac => CONTA_SWITCH(1),
	datad => \Equal3~4_combout\,
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X5_Y4_N20
\EDO_P~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \EDO_P~0_combout\ = \Equal3~5_combout\ $ (\EDO_P~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~5_combout\,
	datac => \EDO_P~q\,
	combout => \EDO_P~0_combout\);

-- Location: FF_X5_Y4_N21
EDO_P : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \EDO_P~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO_P~q\);

-- Location: LCCOMB_X8_Y4_N22
\DISPLAY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~0_combout\ = (\EDO_P~q\ & (CONTA_DECENAS(3))) # (!\EDO_P~q\ & ((CONTA_UNIDADES(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONTA_DECENAS(3),
	datac => CONTA_UNIDADES(3),
	datad => \EDO_P~q\,
	combout => \DISPLAY~0_combout\);

-- Location: LCCOMB_X8_Y4_N28
\CONTADOR_PRINCIPAL[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTADOR_PRINCIPAL[0]~0_combout\ = (\EDO_P~q\ & (CONTA_DECENAS(0))) # (!\EDO_P~q\ & ((CONTA_UNIDADES(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_DECENAS(0),
	datab => \EDO_P~q\,
	datac => CONTA_UNIDADES(0),
	combout => \CONTADOR_PRINCIPAL[0]~0_combout\);

-- Location: LCCOMB_X8_Y4_N4
\CONTADOR_PRINCIPAL[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTADOR_PRINCIPAL[2]~2_combout\ = (\EDO_P~q\ & ((CONTA_DECENAS(2)))) # (!\EDO_P~q\ & (CONTA_UNIDADES(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CONTA_UNIDADES(2),
	datac => \EDO_P~q\,
	datad => CONTA_DECENAS(2),
	combout => \CONTADOR_PRINCIPAL[2]~2_combout\);

-- Location: LCCOMB_X8_Y4_N18
\CONTADOR_PRINCIPAL[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTADOR_PRINCIPAL[1]~1_combout\ = (\EDO_P~q\ & (CONTA_DECENAS(1))) # (!\EDO_P~q\ & ((CONTA_UNIDADES(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_DECENAS(1),
	datac => CONTA_UNIDADES(1),
	datad => \EDO_P~q\,
	combout => \CONTADOR_PRINCIPAL[1]~1_combout\);

-- Location: LCCOMB_X8_Y4_N20
\DISPLAY~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~1_combout\ = (!\DISPLAY~0_combout\ & ((\CONTADOR_PRINCIPAL[2]~2_combout\ & (\CONTADOR_PRINCIPAL[0]~0_combout\ & \CONTADOR_PRINCIPAL[1]~1_combout\)) # (!\CONTADOR_PRINCIPAL[2]~2_combout\ & ((!\CONTADOR_PRINCIPAL[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~0_combout\,
	datab => \CONTADOR_PRINCIPAL[0]~0_combout\,
	datac => \CONTADOR_PRINCIPAL[2]~2_combout\,
	datad => \CONTADOR_PRINCIPAL[1]~1_combout\,
	combout => \DISPLAY~1_combout\);

-- Location: LCCOMB_X8_Y4_N12
\DISPLAY~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~3_combout\ = (CONTA_UNIDADES(2) & ((CONTA_UNIDADES(3)) # ((CONTA_UNIDADES(0) & CONTA_UNIDADES(1))))) # (!CONTA_UNIDADES(2) & ((CONTA_UNIDADES(1)) # ((!CONTA_UNIDADES(3) & CONTA_UNIDADES(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_UNIDADES(3),
	datab => CONTA_UNIDADES(2),
	datac => CONTA_UNIDADES(0),
	datad => CONTA_UNIDADES(1),
	combout => \DISPLAY~3_combout\);

-- Location: LCCOMB_X8_Y4_N2
\DISPLAY~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~2_combout\ = (CONTA_DECENAS(0) & ((CONTA_DECENAS(1)) # (CONTA_DECENAS(3) $ (!CONTA_DECENAS(2))))) # (!CONTA_DECENAS(0) & ((CONTA_DECENAS(2) & (CONTA_DECENAS(3))) # (!CONTA_DECENAS(2) & ((CONTA_DECENAS(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_DECENAS(0),
	datab => CONTA_DECENAS(3),
	datac => CONTA_DECENAS(1),
	datad => CONTA_DECENAS(2),
	combout => \DISPLAY~2_combout\);

-- Location: LCCOMB_X8_Y4_N30
\DISPLAY~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~4_combout\ = (\EDO_P~q\ & ((\DISPLAY~2_combout\))) # (!\EDO_P~q\ & (\DISPLAY~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~3_combout\,
	datab => \EDO_P~q\,
	datad => \DISPLAY~2_combout\,
	combout => \DISPLAY~4_combout\);

-- Location: LCCOMB_X8_Y4_N26
\DISPLAY~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~6_combout\ = (!CONTA_UNIDADES(3) & ((CONTA_UNIDADES(0)) # ((CONTA_UNIDADES(2) & !CONTA_UNIDADES(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_UNIDADES(3),
	datab => CONTA_UNIDADES(2),
	datac => CONTA_UNIDADES(0),
	datad => CONTA_UNIDADES(1),
	combout => \DISPLAY~6_combout\);

-- Location: LCCOMB_X8_Y4_N16
\DISPLAY~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~7_combout\ = (!CONTA_DECENAS(3) & ((CONTA_DECENAS(0)) # ((!CONTA_DECENAS(1) & CONTA_DECENAS(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CONTA_DECENAS(0),
	datab => CONTA_DECENAS(3),
	datac => CONTA_DECENAS(1),
	datad => CONTA_DECENAS(2),
	combout => \DISPLAY~7_combout\);

-- Location: LCCOMB_X8_Y4_N8
\DISPLAY~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~5_combout\ = (\DISPLAY~0_combout\ & (\CONTADOR_PRINCIPAL[0]~0_combout\ & (!\CONTADOR_PRINCIPAL[2]~2_combout\ & !\CONTADOR_PRINCIPAL[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~0_combout\,
	datab => \CONTADOR_PRINCIPAL[0]~0_combout\,
	datac => \CONTADOR_PRINCIPAL[2]~2_combout\,
	datad => \CONTADOR_PRINCIPAL[1]~1_combout\,
	combout => \DISPLAY~5_combout\);

-- Location: LCCOMB_X8_Y4_N6
\DISPLAY~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~8_combout\ = (\DISPLAY~5_combout\) # ((\EDO_P~q\ & ((\DISPLAY~7_combout\))) # (!\EDO_P~q\ & (\DISPLAY~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~6_combout\,
	datab => \DISPLAY~7_combout\,
	datac => \DISPLAY~5_combout\,
	datad => \EDO_P~q\,
	combout => \DISPLAY~8_combout\);

-- Location: LCCOMB_X8_Y4_N0
\DISPLAY~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~9_combout\ = (!\DISPLAY~0_combout\ & ((\CONTADOR_PRINCIPAL[0]~0_combout\ & (\CONTADOR_PRINCIPAL[2]~2_combout\ $ (!\CONTADOR_PRINCIPAL[1]~1_combout\))) # (!\CONTADOR_PRINCIPAL[0]~0_combout\ & (\CONTADOR_PRINCIPAL[2]~2_combout\ & 
-- !\CONTADOR_PRINCIPAL[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~0_combout\,
	datab => \CONTADOR_PRINCIPAL[0]~0_combout\,
	datac => \CONTADOR_PRINCIPAL[2]~2_combout\,
	datad => \CONTADOR_PRINCIPAL[1]~1_combout\,
	combout => \DISPLAY~9_combout\);

-- Location: LCCOMB_X8_Y4_N10
\DISPLAY~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~10_combout\ = (!\DISPLAY~0_combout\ & (!\CONTADOR_PRINCIPAL[0]~0_combout\ & (!\CONTADOR_PRINCIPAL[2]~2_combout\ & \CONTADOR_PRINCIPAL[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~0_combout\,
	datab => \CONTADOR_PRINCIPAL[0]~0_combout\,
	datac => \CONTADOR_PRINCIPAL[2]~2_combout\,
	datad => \CONTADOR_PRINCIPAL[1]~1_combout\,
	combout => \DISPLAY~10_combout\);

-- Location: LCCOMB_X8_Y4_N24
\DISPLAY~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~11_combout\ = (!\DISPLAY~0_combout\ & (\CONTADOR_PRINCIPAL[2]~2_combout\ & (\CONTADOR_PRINCIPAL[0]~0_combout\ $ (\CONTADOR_PRINCIPAL[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~0_combout\,
	datab => \CONTADOR_PRINCIPAL[0]~0_combout\,
	datac => \CONTADOR_PRINCIPAL[2]~2_combout\,
	datad => \CONTADOR_PRINCIPAL[1]~1_combout\,
	combout => \DISPLAY~11_combout\);

-- Location: LCCOMB_X8_Y4_N14
\DISPLAY~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY~12_combout\ = (!\DISPLAY~0_combout\ & (!\CONTADOR_PRINCIPAL[1]~1_combout\ & (\CONTADOR_PRINCIPAL[0]~0_combout\ $ (\CONTADOR_PRINCIPAL[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~0_combout\,
	datab => \CONTADOR_PRINCIPAL[0]~0_combout\,
	datac => \CONTADOR_PRINCIPAL[2]~2_combout\,
	datad => \CONTADOR_PRINCIPAL[1]~1_combout\,
	combout => \DISPLAY~12_combout\);

ww_DISPLAY(0) <= \DISPLAY[0]~output_o\;

ww_DISPLAY(1) <= \DISPLAY[1]~output_o\;

ww_DISPLAY(2) <= \DISPLAY[2]~output_o\;

ww_DISPLAY(3) <= \DISPLAY[3]~output_o\;

ww_DISPLAY(4) <= \DISPLAY[4]~output_o\;

ww_DISPLAY(5) <= \DISPLAY[5]~output_o\;

ww_DISPLAY(6) <= \DISPLAY[6]~output_o\;

ww_TRANSISTOR(0) <= \TRANSISTOR[0]~output_o\;

ww_TRANSISTOR(1) <= \TRANSISTOR[1]~output_o\;
END structure;


