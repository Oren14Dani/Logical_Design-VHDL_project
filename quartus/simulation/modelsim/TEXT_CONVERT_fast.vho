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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/05/2021 23:01:47"

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

ENTITY 	TEXT_CONVERT IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	SER_RX : IN std_logic;
	SER_TX : OUT std_logic;
	SRAM_ADDR : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_WE_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	SRAM_CE_N : OUT std_logic;
	SRAM_UB_N : OUT std_logic;
	SRAM_LB_N : OUT std_logic;
	MODE : IN std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	NUM_ONES : OUT std_logic_vector(6 DOWNTO 0);
	NUM_TENS : OUT std_logic_vector(6 DOWNTO 0);
	NUM_HUNDS : OUT std_logic_vector(6 DOWNTO 0);
	NUM_THOUS : OUT std_logic_vector(6 DOWNTO 0)
	);
END TEXT_CONVERT;

-- Design Ports Information
-- SRAM_DQ[0]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[1]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[2]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[3]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[4]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[5]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[6]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[7]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[8]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[9]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[10]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[11]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[12]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[13]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[14]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[15]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SER_TX	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[0]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[1]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[2]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[3]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[4]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[5]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[6]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[7]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[8]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[9]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[10]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[11]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[12]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[13]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[14]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[15]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[16]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[17]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED1	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED4	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_ONES[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_ONES[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_ONES[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_ONES[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_ONES[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_ONES[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_ONES[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_TENS[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_TENS[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_TENS[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_TENS[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_TENS[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_TENS[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_TENS[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_HUNDS[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_HUNDS[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_HUNDS[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_HUNDS[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_HUNDS[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_HUNDS[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_HUNDS[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_THOUS[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_THOUS[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_THOUS[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_THOUS[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_THOUS[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_THOUS[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM_THOUS[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MODE	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SER_RX	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TEXT_CONVERT IS
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
SIGNAL ww_SER_RX : std_logic;
SIGNAL ww_SER_TX : std_logic;
SIGNAL ww_SRAM_ADDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_MODE : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL ww_NUM_ONES : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_NUM_TENS : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_NUM_HUNDS : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_NUM_THOUS : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1_uart|u2_UART_TX|Tx_idx[2]~8_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[2]~17_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[5]~23_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[9]~31_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[3]~18_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[9]~31_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Mux0~2_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Mux0~4_combout\ : std_logic;
SIGNAL \u2_controller|LessThan1~0_combout\ : std_logic;
SIGNAL \u2_controller|LessThan1~1_combout\ : std_logic;
SIGNAL \u2_controller|LessThan1~2_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[1]~14_combout\ : std_logic;
SIGNAL \u2_controller|u2|a_d1~regout\ : std_logic;
SIGNAL \u2_controller|u1|a_d2~regout\ : std_logic;
SIGNAL \u2_controller|u2|Q~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector4~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~18_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~23_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~27_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~29_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~33_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~40_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~42_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~50_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~51_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~56_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~57_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~63_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|fsm_state.send_start_bit~regout\ : std_logic;
SIGNAL \u2_controller|u1|a_d1~regout\ : std_logic;
SIGNAL \u2_controller|fsm_state.idle~regout\ : std_logic;
SIGNAL \u2_controller|Selector0~3_combout\ : std_logic;
SIGNAL \u2_controller|Selector0~4_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Equal0~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Selector1~0_combout\ : std_logic;
SIGNAL \u2_controller|fsm_state.idle~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|max_cnt[10]~1_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|max_cnt[10]~2_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector18~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector20~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector19~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector19~1_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~64_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~68_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~70_combout\ : std_logic;
SIGNAL \u3_bin2bcd|reg_in[1]~feeder_combout\ : std_logic;
SIGNAL \SRAM_DQ[0]~0\ : std_logic;
SIGNAL \SRAM_DQ[1]~1\ : std_logic;
SIGNAL \SRAM_DQ[2]~2\ : std_logic;
SIGNAL \SRAM_DQ[3]~3\ : std_logic;
SIGNAL \SRAM_DQ[4]~4\ : std_logic;
SIGNAL \SRAM_DQ[5]~5\ : std_logic;
SIGNAL \SRAM_DQ[6]~6\ : std_logic;
SIGNAL \SRAM_DQ[7]~7\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \SER_RX~combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|u1|a_d1~regout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|u1|a_d2~regout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[0]~13\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[1]~14_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector1~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector0~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector0~1_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|fsm_state.idle~regout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|max_cnt[10]~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector4~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|rst_counter~regout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[5]~22_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[1]~15\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[2]~17\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[3]~19\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[4]~20_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[4]~21\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[5]~23\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[6]~25_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[6]~26\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[7]~28\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[8]~29_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[8]~30\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[9]~32\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[10]~33_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Equal0~2_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector6~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[7]~27_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[10]~34\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[11]~35_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Equal0~3_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[2]~16_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|clk_counter[0]~12_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Equal0~1_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Equal0~4_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Equal0~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|t_bit_flg~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|t_bit_flg~regout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector2~5_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector2~6_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|fsm_state.get_data~regout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector18~1_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector18~3_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector21~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector18~2_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector2~4_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector20~1_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Decoder0~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Decoder0~1_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|DATA[0]~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Tx_idx[0]~4_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Tx_idx[3]~12_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Tx_idx[0]~5\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Tx_idx[1]~7\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Tx_idx[2]~9\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Tx_idx[3]~10_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[0]~12_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[7]~27_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[4]~21_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Equal0~1_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[0]~12_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector3~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector5~0_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Selector5~1_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|DATA_VALID~regout\ : std_logic;
SIGNAL \u2_controller|Selector0~2_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[1]~18\ : std_logic;
SIGNAL \u2_controller|address_counter[2]~19_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[2]~20\ : std_logic;
SIGNAL \u2_controller|address_counter[3]~21_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[3]~22\ : std_logic;
SIGNAL \u2_controller|address_counter[4]~23_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[4]~24\ : std_logic;
SIGNAL \u2_controller|address_counter[5]~25_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[5]~26\ : std_logic;
SIGNAL \u2_controller|address_counter[6]~27_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[6]~28\ : std_logic;
SIGNAL \u2_controller|address_counter[7]~29_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[7]~30\ : std_logic;
SIGNAL \u2_controller|address_counter[8]~31_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[8]~32\ : std_logic;
SIGNAL \u2_controller|address_counter[9]~33_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[9]~34\ : std_logic;
SIGNAL \u2_controller|address_counter[10]~35_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[10]~36\ : std_logic;
SIGNAL \u2_controller|address_counter[11]~37_combout\ : std_logic;
SIGNAL \u2_controller|Equal0~2_combout\ : std_logic;
SIGNAL \u2_controller|Equal0~1_combout\ : std_logic;
SIGNAL \u2_controller|Equal0~3_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[1]~15_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[1]~16_combout\ : std_logic;
SIGNAL \u2_controller|address_counter[0]~13\ : std_logic;
SIGNAL \u2_controller|address_counter[1]~17_combout\ : std_logic;
SIGNAL \u2_controller|Equal0~0_combout\ : std_logic;
SIGNAL \u2_controller|generate_fsm~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector0~5_combout\ : std_logic;
SIGNAL \u2_controller|fsm_state.recive~regout\ : std_logic;
SIGNAL \u2_controller|Selector1~2_combout\ : std_logic;
SIGNAL \u2_controller|fsm_state.load_data~regout\ : std_logic;
SIGNAL \u2_controller|Selector5~0_combout\ : std_logic;
SIGNAL \u2_controller|DATA_FROM_MEM_VALID~regout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[0]~13\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[1]~15_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[1]~16\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[2]~18\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[3]~19_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[3]~20\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[4]~22\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[5]~24\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[6]~25_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[6]~26\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[7]~28\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[8]~29_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[8]~30\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[9]~32\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[10]~33_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[10]~34\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|clk_counter[11]~35_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Equal0~2_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|t_bit_flg~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|t_bit_flg~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|t_bit_flg~regout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Selector2~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|fsm_state.send_data~regout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Selector3~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|fsm_state.send_end_bit~regout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Selector0~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|DONE~regout\ : std_logic;
SIGNAL \u2_controller|Selector2~0_combout\ : std_logic;
SIGNAL \u2_controller|fsm_state.transmit~regout\ : std_logic;
SIGNAL \u2_controller|Selector3~0_combout\ : std_logic;
SIGNAL \u2_controller|Selector3~1_combout\ : std_logic;
SIGNAL \u2_controller|sram_we_n_sig~regout\ : std_logic;
SIGNAL \u2_controller|Selector4~1_combout\ : std_logic;
SIGNAL \u2_controller|sram_oe_n_sig~regout\ : std_logic;
SIGNAL \u2_controller|SRAM_DQ~16_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Decoder0~2_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|DATA[1]~1_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Decoder0~3_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|DATA[2]~2_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Decoder0~4_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|DATA[3]~3_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Decoder0~5_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|DATA[4]~4_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Decoder0~6_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|DATA[5]~5_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Decoder0~7_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|DATA[6]~6_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|Decoder0~8_combout\ : std_logic;
SIGNAL \u1_uart|u1_UART_RX|DATA[7]~7_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Tx_idx[1]~6_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Mux0~5_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Mux0~6_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Mux0~7_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Mux0~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Mux0~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Mux0~3_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Selector4~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Selector4~1_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Selector0~0_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|fsm_state.idle~regout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|Selector4~2_combout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|TX~regout\ : std_logic;
SIGNAL \u2_controller|fsm_state~10_combout\ : std_logic;
SIGNAL \u2_controller|fsm_state.save_data~regout\ : std_logic;
SIGNAL \u2_controller|DATA_FROM_MEM_VALID~0_combout\ : std_logic;
SIGNAL \u2_controller|LED2~regout\ : std_logic;
SIGNAL \u2_controller|LED3~regout\ : std_logic;
SIGNAL \MODE~combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~17_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~19_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~21_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~20_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~22_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~25_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~24_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~26_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~28_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~30_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~31_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~32_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~34_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~35_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~37_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~36_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[1]~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[3]~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[2]~0_combout\ : std_logic;
SIGNAL \u4_bcd2seg_1|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \u4_bcd2seg_1|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \u4_bcd2seg_1|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \u4_bcd2seg_1|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \u4_bcd2seg_1|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \u4_bcd2seg_1|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u4_bcd2seg_1|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[4]~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~52_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~66_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~65_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~71_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~41_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~67_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~39_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~38_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~46_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~44_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~45_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~49_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~48_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~47_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~53_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~54_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[6]~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[5]~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[7]~0_combout\ : std_logic;
SIGNAL \u5_bcd2seg_10|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \u5_bcd2seg_10|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \u5_bcd2seg_10|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \u5_bcd2seg_10|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \u5_bcd2seg_10|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \u5_bcd2seg_10|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u5_bcd2seg_10|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~7_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~69_combout\ : std_logic;
SIGNAL \u3_bin2bcd|LessThan6~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|LessThan8~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~59_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~43_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~60_combout\ : std_logic;
SIGNAL \u3_bin2bcd|LessThan0~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[14]~17_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~58_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~61_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~62_combout\ : std_logic;
SIGNAL \u3_bin2bcd|BCD~55_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[9]~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[10]~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[11]~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[8]~0_combout\ : std_logic;
SIGNAL \u6_bcd2seg_100|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \u6_bcd2seg_100|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \u6_bcd2seg_100|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \u6_bcd2seg_100|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \u6_bcd2seg_100|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \u6_bcd2seg_100|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u6_bcd2seg_100|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[12]~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[13]~0_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[14]~5_combout\ : std_logic;
SIGNAL \u3_bin2bcd|bcd1:BCD[14]~18_combout\ : std_logic;
SIGNAL \u7_bcd2seg_1000|D_OUT[0]~0_combout\ : std_logic;
SIGNAL \u7_bcd2seg_1000|D_OUT[1]~1_combout\ : std_logic;
SIGNAL \u7_bcd2seg_1000|D_OUT[2]~2_combout\ : std_logic;
SIGNAL \u7_bcd2seg_1000|D_OUT[3]~3_combout\ : std_logic;
SIGNAL \u7_bcd2seg_1000|D_OUT[4]~4_combout\ : std_logic;
SIGNAL \u7_bcd2seg_1000|D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u7_bcd2seg_1000|D_OUT[6]~6_combout\ : std_logic;
SIGNAL \u3_bin2bcd|thousands\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3_bin2bcd|tenths\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3_bin2bcd|reg_in\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u3_bin2bcd|ones\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3_bin2bcd|hunderths\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1_uart|u2_UART_TX|Tx_idx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1_uart|u1_UART_RX|max_cnt\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u2_controller|address_counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u1_uart|u2_UART_TX|clk_counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u1_uart|u1_UART_RX|DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1_uart|u1_UART_RX|Rx_idx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1_uart|u1_UART_RX|clk_counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_RST~combout\ : std_logic;
SIGNAL \ALT_INV_MODE~combout\ : std_logic;
SIGNAL \u7_bcd2seg_1000|ALT_INV_D_OUT[6]~6_combout\ : std_logic;
SIGNAL \u6_bcd2seg_100|ALT_INV_D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u6_bcd2seg_100|ALT_INV_D_OUT[2]~2_combout\ : std_logic;
SIGNAL \u5_bcd2seg_10|ALT_INV_D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u5_bcd2seg_10|ALT_INV_D_OUT[2]~2_combout\ : std_logic;
SIGNAL \u4_bcd2seg_1|ALT_INV_D_OUT[5]~5_combout\ : std_logic;
SIGNAL \u4_bcd2seg_1|ALT_INV_D_OUT[2]~2_combout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_sram_oe_n_sig~regout\ : std_logic;
SIGNAL \u2_controller|ALT_INV_sram_we_n_sig~regout\ : std_logic;
SIGNAL \u1_uart|u2_UART_TX|ALT_INV_TX~regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_SER_RX <= SER_RX;
SER_TX <= ww_SER_TX;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_WE_N <= ww_SRAM_WE_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_LB_N <= ww_SRAM_LB_N;
ww_MODE <= MODE;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
NUM_ONES <= ww_NUM_ONES;
NUM_TENS <= ww_NUM_TENS;
NUM_HUNDS <= ww_NUM_HUNDS;
NUM_THOUS <= ww_NUM_THOUS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);
\ALT_INV_RST~combout\ <= NOT \RST~combout\;
\ALT_INV_MODE~combout\ <= NOT \MODE~combout\;
\u7_bcd2seg_1000|ALT_INV_D_OUT[6]~6_combout\ <= NOT \u7_bcd2seg_1000|D_OUT[6]~6_combout\;
\u6_bcd2seg_100|ALT_INV_D_OUT[5]~5_combout\ <= NOT \u6_bcd2seg_100|D_OUT[5]~5_combout\;
\u6_bcd2seg_100|ALT_INV_D_OUT[2]~2_combout\ <= NOT \u6_bcd2seg_100|D_OUT[2]~2_combout\;
\u5_bcd2seg_10|ALT_INV_D_OUT[5]~5_combout\ <= NOT \u5_bcd2seg_10|D_OUT[5]~5_combout\;
\u5_bcd2seg_10|ALT_INV_D_OUT[2]~2_combout\ <= NOT \u5_bcd2seg_10|D_OUT[2]~2_combout\;
\u4_bcd2seg_1|ALT_INV_D_OUT[5]~5_combout\ <= NOT \u4_bcd2seg_1|D_OUT[5]~5_combout\;
\u4_bcd2seg_1|ALT_INV_D_OUT[2]~2_combout\ <= NOT \u4_bcd2seg_1|D_OUT[2]~2_combout\;
\u2_controller|ALT_INV_sram_oe_n_sig~regout\ <= NOT \u2_controller|sram_oe_n_sig~regout\;
\u2_controller|ALT_INV_sram_we_n_sig~regout\ <= NOT \u2_controller|sram_we_n_sig~regout\;
\u1_uart|u2_UART_TX|ALT_INV_TX~regout\ <= NOT \u1_uart|u2_UART_TX|TX~regout\;

-- Location: LCFF_X14_Y1_N13
\u1_uart|u2_UART_TX|Tx_idx[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|Tx_idx[2]~8_combout\,
	sclr => \u1_uart|u2_UART_TX|Tx_idx\(3),
	ena => \u1_uart|u2_UART_TX|Tx_idx[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|Tx_idx\(2));

-- Location: LCCOMB_X14_Y1_N12
\u1_uart|u2_UART_TX|Tx_idx[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Tx_idx[2]~8_combout\ = (\u1_uart|u2_UART_TX|Tx_idx\(2) & (\u1_uart|u2_UART_TX|Tx_idx[1]~7\ $ (GND))) # (!\u1_uart|u2_UART_TX|Tx_idx\(2) & (!\u1_uart|u2_UART_TX|Tx_idx[1]~7\ & VCC))
-- \u1_uart|u2_UART_TX|Tx_idx[2]~9\ = CARRY((\u1_uart|u2_UART_TX|Tx_idx\(2) & !\u1_uart|u2_UART_TX|Tx_idx[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Tx_idx\(2),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|Tx_idx[1]~7\,
	combout => \u1_uart|u2_UART_TX|Tx_idx[2]~8_combout\,
	cout => \u1_uart|u2_UART_TX|Tx_idx[2]~9\);

-- Location: LCFF_X13_Y13_N7
\u1_uart|u2_UART_TX|clk_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[2]~17_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(2));

-- Location: LCFF_X13_Y13_N13
\u1_uart|u2_UART_TX|clk_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[5]~23_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(5));

-- Location: LCFF_X13_Y13_N21
\u1_uart|u2_UART_TX|clk_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[9]~31_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(9));

-- Location: LCFF_X19_Y8_N13
\u1_uart|u1_UART_RX|clk_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[3]~18_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(3));

-- Location: LCFF_X19_Y8_N25
\u1_uart|u1_UART_RX|clk_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[9]~31_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(9));

-- Location: LCCOMB_X13_Y13_N6
\u1_uart|u2_UART_TX|clk_counter[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[2]~17_combout\ = (\u1_uart|u2_UART_TX|clk_counter\(2) & (\u1_uart|u2_UART_TX|clk_counter[1]~16\ $ (GND))) # (!\u1_uart|u2_UART_TX|clk_counter\(2) & (!\u1_uart|u2_UART_TX|clk_counter[1]~16\ & VCC))
-- \u1_uart|u2_UART_TX|clk_counter[2]~18\ = CARRY((\u1_uart|u2_UART_TX|clk_counter\(2) & !\u1_uart|u2_UART_TX|clk_counter[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|clk_counter\(2),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|clk_counter[1]~16\,
	combout => \u1_uart|u2_UART_TX|clk_counter[2]~17_combout\,
	cout => \u1_uart|u2_UART_TX|clk_counter[2]~18\);

-- Location: LCCOMB_X13_Y13_N12
\u1_uart|u2_UART_TX|clk_counter[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[5]~23_combout\ = (\u1_uart|u2_UART_TX|clk_counter\(5) & (!\u1_uart|u2_UART_TX|clk_counter[4]~22\)) # (!\u1_uart|u2_UART_TX|clk_counter\(5) & ((\u1_uart|u2_UART_TX|clk_counter[4]~22\) # (GND)))
-- \u1_uart|u2_UART_TX|clk_counter[5]~24\ = CARRY((!\u1_uart|u2_UART_TX|clk_counter[4]~22\) # (!\u1_uart|u2_UART_TX|clk_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|clk_counter\(5),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|clk_counter[4]~22\,
	combout => \u1_uart|u2_UART_TX|clk_counter[5]~23_combout\,
	cout => \u1_uart|u2_UART_TX|clk_counter[5]~24\);

-- Location: LCCOMB_X13_Y13_N20
\u1_uart|u2_UART_TX|clk_counter[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[9]~31_combout\ = (\u1_uart|u2_UART_TX|clk_counter\(9) & (!\u1_uart|u2_UART_TX|clk_counter[8]~30\)) # (!\u1_uart|u2_UART_TX|clk_counter\(9) & ((\u1_uart|u2_UART_TX|clk_counter[8]~30\) # (GND)))
-- \u1_uart|u2_UART_TX|clk_counter[9]~32\ = CARRY((!\u1_uart|u2_UART_TX|clk_counter[8]~30\) # (!\u1_uart|u2_UART_TX|clk_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|clk_counter\(9),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|clk_counter[8]~30\,
	combout => \u1_uart|u2_UART_TX|clk_counter[9]~31_combout\,
	cout => \u1_uart|u2_UART_TX|clk_counter[9]~32\);

-- Location: LCCOMB_X19_Y8_N12
\u1_uart|u1_UART_RX|clk_counter[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[3]~18_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(3) & (!\u1_uart|u1_UART_RX|clk_counter[2]~17\)) # (!\u1_uart|u1_UART_RX|clk_counter\(3) & ((\u1_uart|u1_UART_RX|clk_counter[2]~17\) # (GND)))
-- \u1_uart|u1_UART_RX|clk_counter[3]~19\ = CARRY((!\u1_uart|u1_UART_RX|clk_counter[2]~17\) # (!\u1_uart|u1_UART_RX|clk_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|clk_counter\(3),
	datad => VCC,
	cin => \u1_uart|u1_UART_RX|clk_counter[2]~17\,
	combout => \u1_uart|u1_UART_RX|clk_counter[3]~18_combout\,
	cout => \u1_uart|u1_UART_RX|clk_counter[3]~19\);

-- Location: LCCOMB_X19_Y8_N24
\u1_uart|u1_UART_RX|clk_counter[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[9]~31_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(9) & (!\u1_uart|u1_UART_RX|clk_counter[8]~30\)) # (!\u1_uart|u1_UART_RX|clk_counter\(9) & ((\u1_uart|u1_UART_RX|clk_counter[8]~30\) # (GND)))
-- \u1_uart|u1_UART_RX|clk_counter[9]~32\ = CARRY((!\u1_uart|u1_UART_RX|clk_counter[8]~30\) # (!\u1_uart|u1_UART_RX|clk_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|clk_counter\(9),
	datad => VCC,
	cin => \u1_uart|u1_UART_RX|clk_counter[8]~30\,
	combout => \u1_uart|u1_UART_RX|clk_counter[9]~31_combout\,
	cout => \u1_uart|u1_UART_RX|clk_counter[9]~32\);

-- Location: LCCOMB_X14_Y1_N20
\u1_uart|u2_UART_TX|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Mux0~2_combout\ = (\u2_controller|sram_oe_n_sig~regout\ & ((\u1_uart|u2_UART_TX|Mux0~1_combout\ & (!\SRAM_DQ[7]~7\)) # (!\u1_uart|u2_UART_TX|Mux0~1_combout\ & ((!\SRAM_DQ[5]~5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[7]~7\,
	datab => \u1_uart|u2_UART_TX|Mux0~1_combout\,
	datac => \SRAM_DQ[5]~5\,
	datad => \u2_controller|sram_oe_n_sig~regout\,
	combout => \u1_uart|u2_UART_TX|Mux0~2_combout\);

-- Location: LCCOMB_X14_Y1_N24
\u1_uart|u2_UART_TX|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Mux0~4_combout\ = (!\u2_controller|sram_we_n_sig~regout\ & (\u2_controller|sram_oe_n_sig~regout\ & ((\u1_uart|u2_UART_TX|Tx_idx\(0)) # (!\SRAM_DQ[0]~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|sram_we_n_sig~regout\,
	datab => \SRAM_DQ[0]~0\,
	datac => \u1_uart|u2_UART_TX|Tx_idx\(0),
	datad => \u2_controller|sram_oe_n_sig~regout\,
	combout => \u1_uart|u2_UART_TX|Mux0~4_combout\);

-- Location: LCCOMB_X13_Y14_N24
\u2_controller|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan1~0_combout\ = (\u2_controller|address_counter\(3) & (\u2_controller|address_counter\(1) & (\u2_controller|address_counter\(2) & \u2_controller|address_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|address_counter\(3),
	datab => \u2_controller|address_counter\(1),
	datac => \u2_controller|address_counter\(2),
	datad => \u2_controller|address_counter\(0),
	combout => \u2_controller|LessThan1~0_combout\);

-- Location: LCCOMB_X14_Y18_N16
\u2_controller|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan1~1_combout\ = (\u2_controller|address_counter\(6) & (\u2_controller|address_counter\(5) & (\u2_controller|address_counter\(4) & \u2_controller|address_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|address_counter\(6),
	datab => \u2_controller|address_counter\(5),
	datac => \u2_controller|address_counter\(4),
	datad => \u2_controller|address_counter\(7),
	combout => \u2_controller|LessThan1~1_combout\);

-- Location: LCCOMB_X13_Y14_N26
\u2_controller|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|LessThan1~2_combout\ = (\u2_controller|address_counter\(8) & (\u2_controller|address_counter\(11) & (\u2_controller|address_counter\(10) & \u2_controller|address_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|address_counter\(8),
	datab => \u2_controller|address_counter\(11),
	datac => \u2_controller|address_counter\(10),
	datad => \u2_controller|address_counter\(9),
	combout => \u2_controller|LessThan1~2_combout\);

-- Location: LCCOMB_X14_Y14_N10
\u2_controller|address_counter[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[1]~14_combout\ = ((\u2_controller|LessThan1~2_combout\ & (\u2_controller|LessThan1~0_combout\ & \u2_controller|LessThan1~1_combout\))) # (!\u2_controller|fsm_state.save_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|LessThan1~2_combout\,
	datab => \u2_controller|LessThan1~0_combout\,
	datac => \u2_controller|fsm_state.save_data~regout\,
	datad => \u2_controller|LessThan1~1_combout\,
	combout => \u2_controller|address_counter[1]~14_combout\);

-- Location: LCFF_X14_Y13_N27
\u2_controller|u2|a_d1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|u1|a_d2~regout\,
	aclr => \ALT_INV_RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|u2|a_d1~regout\);

-- Location: LCFF_X14_Y13_N13
\u2_controller|u1|a_d2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|u1|a_d1~regout\,
	aclr => \ALT_INV_RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|u1|a_d2~regout\);

-- Location: LCCOMB_X14_Y13_N26
\u2_controller|u2|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|u2|Q~0_combout\ = (\u2_controller|u2|a_d1~regout\ & !\u2_controller|u1|a_d2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2_controller|u2|a_d1~regout\,
	datad => \u2_controller|u1|a_d2~regout\,
	combout => \u2_controller|u2|Q~0_combout\);

-- Location: LCCOMB_X14_Y14_N18
\u2_controller|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Selector4~0_combout\ = (!\u2_controller|fsm_state.load_data~regout\ & (((\u1_uart|u2_UART_TX|DONE~regout\ & \u2_controller|Equal0~3_combout\)) # (!\u2_controller|fsm_state.transmit~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.load_data~regout\,
	datab => \u2_controller|fsm_state.transmit~regout\,
	datac => \u1_uart|u2_UART_TX|DONE~regout\,
	datad => \u2_controller|Equal0~3_combout\,
	combout => \u2_controller|Selector4~0_combout\);

-- Location: LCCOMB_X13_Y18_N20
\u3_bin2bcd|BCD~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~18_combout\ = (\u3_bin2bcd|reg_in\(10) & ((\u3_bin2bcd|reg_in\(9) & (!\u3_bin2bcd|reg_in\(11) & !\u3_bin2bcd|reg_in\(8))) # (!\u3_bin2bcd|reg_in\(9) & (\u3_bin2bcd|reg_in\(11) & \u3_bin2bcd|reg_in\(8))))) # (!\u3_bin2bcd|reg_in\(10) & 
-- (\u3_bin2bcd|reg_in\(8) $ (((!\u3_bin2bcd|reg_in\(9) & \u3_bin2bcd|reg_in\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(9),
	datab => \u3_bin2bcd|reg_in\(11),
	datac => \u3_bin2bcd|reg_in\(10),
	datad => \u3_bin2bcd|reg_in\(8),
	combout => \u3_bin2bcd|BCD~18_combout\);

-- Location: LCCOMB_X14_Y18_N10
\u3_bin2bcd|BCD~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~23_combout\ = (\u3_bin2bcd|BCD~22_combout\ & (!\u3_bin2bcd|reg_in\(6) & (!\u3_bin2bcd|BCD~21_combout\))) # (!\u3_bin2bcd|BCD~22_combout\ & (\u3_bin2bcd|BCD~20_combout\ & ((\u3_bin2bcd|reg_in\(6)) # (\u3_bin2bcd|BCD~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(6),
	datab => \u3_bin2bcd|BCD~21_combout\,
	datac => \u3_bin2bcd|BCD~20_combout\,
	datad => \u3_bin2bcd|BCD~22_combout\,
	combout => \u3_bin2bcd|BCD~23_combout\);

-- Location: LCCOMB_X14_Y18_N28
\u3_bin2bcd|BCD~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~27_combout\ = (\u3_bin2bcd|BCD~23_combout\ & (((!\u3_bin2bcd|reg_in\(5))))) # (!\u3_bin2bcd|BCD~23_combout\ & ((\u3_bin2bcd|BCD~25_combout\ & (!\u3_bin2bcd|reg_in\(5) & \u3_bin2bcd|BCD~24_combout\)) # (!\u3_bin2bcd|BCD~25_combout\ & 
-- (\u3_bin2bcd|reg_in\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~23_combout\,
	datab => \u3_bin2bcd|BCD~25_combout\,
	datac => \u3_bin2bcd|reg_in\(5),
	datad => \u3_bin2bcd|BCD~24_combout\,
	combout => \u3_bin2bcd|BCD~27_combout\);

-- Location: LCCOMB_X14_Y18_N22
\u3_bin2bcd|BCD~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~29_combout\ = (\u3_bin2bcd|BCD~28_combout\ & (!\u3_bin2bcd|BCD~27_combout\ & ((!\u3_bin2bcd|reg_in\(4))))) # (!\u3_bin2bcd|BCD~28_combout\ & (\u3_bin2bcd|BCD~26_combout\ & ((\u3_bin2bcd|BCD~27_combout\) # (\u3_bin2bcd|reg_in\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~27_combout\,
	datab => \u3_bin2bcd|BCD~26_combout\,
	datac => \u3_bin2bcd|reg_in\(4),
	datad => \u3_bin2bcd|BCD~28_combout\,
	combout => \u3_bin2bcd|BCD~29_combout\);

-- Location: LCCOMB_X2_Y18_N30
\u3_bin2bcd|BCD~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~33_combout\ = (\u3_bin2bcd|BCD~29_combout\ & (!\u3_bin2bcd|reg_in\(3))) # (!\u3_bin2bcd|BCD~29_combout\ & ((\u3_bin2bcd|reg_in\(3) & ((!\u3_bin2bcd|BCD~31_combout\))) # (!\u3_bin2bcd|reg_in\(3) & (\u3_bin2bcd|BCD~30_combout\ & 
-- \u3_bin2bcd|BCD~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~29_combout\,
	datab => \u3_bin2bcd|reg_in\(3),
	datac => \u3_bin2bcd|BCD~30_combout\,
	datad => \u3_bin2bcd|BCD~31_combout\,
	combout => \u3_bin2bcd|BCD~33_combout\);

-- Location: LCFF_X2_Y18_N13
\u3_bin2bcd|reg_in[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|reg_in[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(1));

-- Location: LCCOMB_X13_Y18_N2
\u3_bin2bcd|BCD~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~40_combout\ = (\u3_bin2bcd|reg_in\(10) & (\u3_bin2bcd|reg_in\(9) & (\u3_bin2bcd|reg_in\(11) & \u3_bin2bcd|reg_in\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(10),
	datab => \u3_bin2bcd|reg_in\(9),
	datac => \u3_bin2bcd|reg_in\(11),
	datad => \u3_bin2bcd|reg_in\(8),
	combout => \u3_bin2bcd|BCD~40_combout\);

-- Location: LCCOMB_X12_Y18_N12
\u3_bin2bcd|BCD~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~42_combout\ = (\u3_bin2bcd|BCD~65_combout\ & (\u3_bin2bcd|BCD~66_combout\ & (\u3_bin2bcd|LessThan0~0_combout\ $ (\u3_bin2bcd|BCD~67_combout\)))) # (!\u3_bin2bcd|BCD~65_combout\ & (\u3_bin2bcd|LessThan0~0_combout\ & 
-- (\u3_bin2bcd|BCD~67_combout\ & !\u3_bin2bcd|BCD~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|LessThan0~0_combout\,
	datab => \u3_bin2bcd|BCD~67_combout\,
	datac => \u3_bin2bcd|BCD~65_combout\,
	datad => \u3_bin2bcd|BCD~66_combout\,
	combout => \u3_bin2bcd|BCD~42_combout\);

-- Location: LCCOMB_X5_Y18_N20
\u3_bin2bcd|BCD~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~50_combout\ = (\u3_bin2bcd|BCD~43_combout\ & ((\u3_bin2bcd|BCD~44_combout\ $ (\u3_bin2bcd|BCD~45_combout\)))) # (!\u3_bin2bcd|BCD~43_combout\ & ((\u3_bin2bcd|BCD~45_combout\) # ((!\u3_bin2bcd|BCD~46_combout\ & 
-- \u3_bin2bcd|BCD~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~43_combout\,
	datab => \u3_bin2bcd|BCD~46_combout\,
	datac => \u3_bin2bcd|BCD~44_combout\,
	datad => \u3_bin2bcd|BCD~45_combout\,
	combout => \u3_bin2bcd|BCD~50_combout\);

-- Location: LCCOMB_X5_Y18_N6
\u3_bin2bcd|BCD~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~51_combout\ = (\u3_bin2bcd|BCD~50_combout\ & (\u3_bin2bcd|BCD~47_combout\ & ((!\u3_bin2bcd|BCD~48_combout\) # (!\u3_bin2bcd|BCD~49_combout\)))) # (!\u3_bin2bcd|BCD~50_combout\ & (\u3_bin2bcd|BCD~49_combout\ & 
-- (\u3_bin2bcd|BCD~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~50_combout\,
	datab => \u3_bin2bcd|BCD~49_combout\,
	datac => \u3_bin2bcd|BCD~48_combout\,
	datad => \u3_bin2bcd|BCD~47_combout\,
	combout => \u3_bin2bcd|BCD~51_combout\);

-- Location: LCCOMB_X12_Y18_N4
\u3_bin2bcd|BCD~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~56_combout\ = \u3_bin2bcd|BCD~42_combout\ $ ((((\u3_bin2bcd|BCD~39_combout\ & \u3_bin2bcd|BCD~38_combout\)) # (!\u3_bin2bcd|BCD~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~42_combout\,
	datab => \u3_bin2bcd|BCD~41_combout\,
	datac => \u3_bin2bcd|BCD~39_combout\,
	datad => \u3_bin2bcd|BCD~38_combout\,
	combout => \u3_bin2bcd|BCD~56_combout\);

-- Location: LCCOMB_X12_Y18_N0
\u3_bin2bcd|BCD~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~57_combout\ = (!\u3_bin2bcd|BCD~68_combout\ & ((!\u3_bin2bcd|bcd1:BCD[14]~17_combout\) # (!\u3_bin2bcd|BCD~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3_bin2bcd|BCD~68_combout\,
	datac => \u3_bin2bcd|BCD~56_combout\,
	datad => \u3_bin2bcd|bcd1:BCD[14]~17_combout\,
	combout => \u3_bin2bcd|BCD~57_combout\);

-- Location: LCCOMB_X4_Y18_N30
\u3_bin2bcd|BCD~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~63_combout\ = (\u3_bin2bcd|BCD~57_combout\ & (((\u3_bin2bcd|BCD~60_combout\ & !\u3_bin2bcd|BCD~58_combout\)))) # (!\u3_bin2bcd|BCD~57_combout\ & (\u3_bin2bcd|BCD~59_combout\ & ((\u3_bin2bcd|BCD~58_combout\) # 
-- (!\u3_bin2bcd|BCD~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~57_combout\,
	datab => \u3_bin2bcd|BCD~59_combout\,
	datac => \u3_bin2bcd|BCD~60_combout\,
	datad => \u3_bin2bcd|BCD~58_combout\,
	combout => \u3_bin2bcd|BCD~63_combout\);

-- Location: LCFF_X14_Y13_N11
\u1_uart|u2_UART_TX|fsm_state.send_start_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|Selector1~0_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|fsm_state.send_start_bit~regout\);

-- Location: LCFF_X14_Y13_N15
\u2_controller|u1|a_d1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MODE~combout\,
	aclr => \ALT_INV_RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|u1|a_d1~regout\);

-- Location: LCFF_X14_Y13_N25
\u2_controller|fsm_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|fsm_state.idle~0_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|fsm_state.idle~regout\);

-- Location: LCCOMB_X14_Y13_N12
\u2_controller|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Selector0~3_combout\ = (\u2_controller|fsm_state.save_data~regout\) # ((!\u2_controller|fsm_state.idle~regout\ & (\u2_controller|u2|a_d1~regout\ & !\u2_controller|u1|a_d2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.idle~regout\,
	datab => \u2_controller|u2|a_d1~regout\,
	datac => \u2_controller|u1|a_d2~regout\,
	datad => \u2_controller|fsm_state.save_data~regout\,
	combout => \u2_controller|Selector0~3_combout\);

-- Location: LCCOMB_X14_Y14_N22
\u2_controller|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Selector0~4_combout\ = (\u2_controller|Selector0~3_combout\) # ((\u2_controller|fsm_state.transmit~regout\ & (\u1_uart|u2_UART_TX|DONE~regout\ & \u2_controller|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|Selector0~3_combout\,
	datab => \u2_controller|fsm_state.transmit~regout\,
	datac => \u1_uart|u2_UART_TX|DONE~regout\,
	datad => \u2_controller|Equal0~3_combout\,
	combout => \u2_controller|Selector0~4_combout\);

-- Location: LCCOMB_X13_Y13_N0
\u1_uart|u2_UART_TX|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Equal0~0_combout\ = (((\u1_uart|u2_UART_TX|clk_counter\(1)) # (\u1_uart|u2_UART_TX|clk_counter\(0))) # (!\u1_uart|u2_UART_TX|clk_counter\(3))) # (!\u1_uart|u2_UART_TX|clk_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|clk_counter\(2),
	datab => \u1_uart|u2_UART_TX|clk_counter\(3),
	datac => \u1_uart|u2_UART_TX|clk_counter\(1),
	datad => \u1_uart|u2_UART_TX|clk_counter\(0),
	combout => \u1_uart|u2_UART_TX|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y13_N10
\u1_uart|u2_UART_TX|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Selector1~0_combout\ = (\u1_uart|u2_UART_TX|t_bit_flg~regout\ & (!\u1_uart|u2_UART_TX|fsm_state.idle~regout\ & ((\u2_controller|DATA_FROM_MEM_VALID~regout\)))) # (!\u1_uart|u2_UART_TX|t_bit_flg~regout\ & 
-- ((\u1_uart|u2_UART_TX|fsm_state.send_start_bit~regout\) # ((!\u1_uart|u2_UART_TX|fsm_state.idle~regout\ & \u2_controller|DATA_FROM_MEM_VALID~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|t_bit_flg~regout\,
	datab => \u1_uart|u2_UART_TX|fsm_state.idle~regout\,
	datac => \u1_uart|u2_UART_TX|fsm_state.send_start_bit~regout\,
	datad => \u2_controller|DATA_FROM_MEM_VALID~regout\,
	combout => \u1_uart|u2_UART_TX|Selector1~0_combout\);

-- Location: LCCOMB_X14_Y13_N24
\u2_controller|fsm_state.idle~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|fsm_state.idle~0_combout\ = (\u2_controller|fsm_state.idle~regout\) # ((\u2_controller|u2|a_d1~regout\ & !\u2_controller|u1|a_d2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|u2|a_d1~regout\,
	datac => \u2_controller|fsm_state.idle~regout\,
	datad => \u2_controller|u1|a_d2~regout\,
	combout => \u2_controller|fsm_state.idle~0_combout\);

-- Location: LCFF_X18_Y8_N29
\u1_uart|u1_UART_RX|max_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|max_cnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|max_cnt\(10));

-- Location: LCFF_X15_Y8_N25
\u1_uart|u1_UART_RX|Rx_idx[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|Selector19~1_combout\,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|Rx_idx\(2));

-- Location: LCCOMB_X18_Y8_N22
\u1_uart|u1_UART_RX|max_cnt[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|max_cnt[10]~1_combout\ = (!\u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\ & (!\u1_uart|u1_UART_RX|fsm_state.get_data~regout\ & \RST~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\,
	datab => \u1_uart|u1_UART_RX|fsm_state.get_data~regout\,
	datad => \RST~combout\,
	combout => \u1_uart|u1_UART_RX|max_cnt[10]~1_combout\);

-- Location: LCCOMB_X18_Y8_N28
\u1_uart|u1_UART_RX|max_cnt[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|max_cnt[10]~2_combout\ = (\u1_uart|u1_UART_RX|max_cnt[10]~1_combout\ & (\u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\ & ((\u1_uart|u1_UART_RX|Selector2~5_combout\) # (\u1_uart|u1_UART_RX|max_cnt\(10))))) # 
-- (!\u1_uart|u1_UART_RX|max_cnt[10]~1_combout\ & (((\u1_uart|u1_UART_RX|max_cnt\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\,
	datab => \u1_uart|u1_UART_RX|Selector2~5_combout\,
	datac => \u1_uart|u1_UART_RX|max_cnt\(10),
	datad => \u1_uart|u1_UART_RX|max_cnt[10]~1_combout\,
	combout => \u1_uart|u1_UART_RX|max_cnt[10]~2_combout\);

-- Location: LCCOMB_X18_Y8_N16
\u1_uart|u1_UART_RX|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector18~0_combout\ = (\u1_uart|u1_UART_RX|Rx_idx\(3) & ((\u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\) # (\u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\,
	datac => \u1_uart|u1_UART_RX|Rx_idx\(3),
	datad => \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\,
	combout => \u1_uart|u1_UART_RX|Selector18~0_combout\);

-- Location: LCCOMB_X15_Y8_N20
\u1_uart|u1_UART_RX|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector20~0_combout\ = \u1_uart|u1_UART_RX|Rx_idx\(1) $ (((\u1_uart|u1_UART_RX|t_bit_flg~regout\ & (\u1_uart|u1_UART_RX|Rx_idx\(0) & !\u1_uart|u1_UART_RX|Rx_idx\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|t_bit_flg~regout\,
	datab => \u1_uart|u1_UART_RX|Rx_idx\(1),
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Rx_idx\(3),
	combout => \u1_uart|u1_UART_RX|Selector20~0_combout\);

-- Location: LCCOMB_X15_Y8_N30
\u1_uart|u1_UART_RX|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector19~0_combout\ = (\u1_uart|u1_UART_RX|t_bit_flg~regout\ & (\u1_uart|u1_UART_RX|Rx_idx\(1) & (\u1_uart|u1_UART_RX|Rx_idx\(0) & !\u1_uart|u1_UART_RX|Rx_idx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|t_bit_flg~regout\,
	datab => \u1_uart|u1_UART_RX|Rx_idx\(1),
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Rx_idx\(3),
	combout => \u1_uart|u1_UART_RX|Selector19~0_combout\);

-- Location: LCCOMB_X15_Y8_N24
\u1_uart|u1_UART_RX|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector19~1_combout\ = (\u1_uart|u1_UART_RX|Rx_idx\(2) & ((\u1_uart|u1_UART_RX|Selector18~3_combout\) # ((\u1_uart|u1_UART_RX|Selector2~4_combout\ & !\u1_uart|u1_UART_RX|Selector19~0_combout\)))) # (!\u1_uart|u1_UART_RX|Rx_idx\(2) & 
-- (\u1_uart|u1_UART_RX|Selector2~4_combout\ & (\u1_uart|u1_UART_RX|Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Selector2~4_combout\,
	datab => \u1_uart|u1_UART_RX|Selector19~0_combout\,
	datac => \u1_uart|u1_UART_RX|Rx_idx\(2),
	datad => \u1_uart|u1_UART_RX|Selector18~3_combout\,
	combout => \u1_uart|u1_UART_RX|Selector19~1_combout\);

-- Location: LCCOMB_X12_Y18_N10
\u3_bin2bcd|BCD~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~64_combout\ = (\u3_bin2bcd|BCD~67_combout\ & (!\u3_bin2bcd|LessThan0~0_combout\ & \u3_bin2bcd|BCD~40_combout\)) # (!\u3_bin2bcd|BCD~67_combout\ & ((\u3_bin2bcd|BCD~40_combout\) # (!\u3_bin2bcd|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3_bin2bcd|BCD~67_combout\,
	datac => \u3_bin2bcd|LessThan0~0_combout\,
	datad => \u3_bin2bcd|BCD~40_combout\,
	combout => \u3_bin2bcd|BCD~64_combout\);

-- Location: LCCOMB_X12_Y18_N22
\u3_bin2bcd|BCD~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~68_combout\ = (\u3_bin2bcd|LessThan0~0_combout\ & ((\u3_bin2bcd|BCD~67_combout\ & ((\u3_bin2bcd|BCD~66_combout\))) # (!\u3_bin2bcd|BCD~67_combout\ & ((\u3_bin2bcd|BCD~65_combout\) # (!\u3_bin2bcd|BCD~66_combout\))))) # 
-- (!\u3_bin2bcd|LessThan0~0_combout\ & (((\u3_bin2bcd|BCD~67_combout\ & \u3_bin2bcd|BCD~65_combout\)) # (!\u3_bin2bcd|BCD~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|LessThan0~0_combout\,
	datab => \u3_bin2bcd|BCD~67_combout\,
	datac => \u3_bin2bcd|BCD~65_combout\,
	datad => \u3_bin2bcd|BCD~66_combout\,
	combout => \u3_bin2bcd|BCD~68_combout\);

-- Location: LCCOMB_X13_Y18_N12
\u3_bin2bcd|BCD~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~70_combout\ = (\u3_bin2bcd|reg_in\(7) & ((\u3_bin2bcd|reg_in\(8) $ (!\u3_bin2bcd|reg_in\(11))) # (!\u3_bin2bcd|reg_in\(10)))) # (!\u3_bin2bcd|reg_in\(7) & ((\u3_bin2bcd|reg_in\(11)) # (\u3_bin2bcd|reg_in\(8) $ (\u3_bin2bcd|reg_in\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(8),
	datab => \u3_bin2bcd|reg_in\(11),
	datac => \u3_bin2bcd|reg_in\(10),
	datad => \u3_bin2bcd|reg_in\(7),
	combout => \u3_bin2bcd|BCD~70_combout\);

-- Location: LCCOMB_X2_Y18_N12
\u3_bin2bcd|reg_in[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|reg_in[1]~feeder_combout\ = \u2_controller|address_counter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2_controller|address_counter\(1),
	combout => \u3_bin2bcd|reg_in[1]~feeder_combout\);

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[0]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1_uart|u1_UART_RX|DATA\(0),
	oe => \u2_controller|SRAM_DQ~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(0),
	combout => \SRAM_DQ[0]~0\);

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[1]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1_uart|u1_UART_RX|DATA\(1),
	oe => \u2_controller|SRAM_DQ~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(1),
	combout => \SRAM_DQ[1]~1\);

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[2]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1_uart|u1_UART_RX|DATA\(2),
	oe => \u2_controller|SRAM_DQ~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(2),
	combout => \SRAM_DQ[2]~2\);

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[3]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1_uart|u1_UART_RX|DATA\(3),
	oe => \u2_controller|SRAM_DQ~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(3),
	combout => \SRAM_DQ[3]~3\);

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1_uart|u1_UART_RX|DATA\(4),
	oe => \u2_controller|SRAM_DQ~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(4),
	combout => \SRAM_DQ[4]~4\);

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[5]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1_uart|u1_UART_RX|DATA\(5),
	oe => \u2_controller|SRAM_DQ~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(5),
	combout => \SRAM_DQ[5]~5\);

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1_uart|u1_UART_RX|DATA\(6),
	oe => \u2_controller|SRAM_DQ~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(6),
	combout => \SRAM_DQ[6]~6\);

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[7]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1_uart|u1_UART_RX|DATA\(7),
	oe => \u2_controller|SRAM_DQ~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(7),
	combout => \SRAM_DQ[7]~7\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SER_RX~I\ : cycloneii_io
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
	padio => ww_SER_RX,
	combout => \SER_RX~combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X16_Y8_N21
\u1_uart|u1_UART_RX|u1|a_d1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \SER_RX~combout\,
	aclr => \ALT_INV_RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|u1|a_d1~regout\);

-- Location: LCFF_X16_Y8_N25
\u1_uart|u1_UART_RX|u1|a_d2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u1_uart|u1_UART_RX|u1|a_d1~regout\,
	aclr => \ALT_INV_RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|u1|a_d2~regout\);

-- Location: LCCOMB_X19_Y8_N6
\u1_uart|u1_UART_RX|clk_counter[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[0]~12_combout\ = \u1_uart|u1_UART_RX|clk_counter\(0) $ (VCC)
-- \u1_uart|u1_UART_RX|clk_counter[0]~13\ = CARRY(\u1_uart|u1_UART_RX|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|clk_counter\(0),
	datad => VCC,
	combout => \u1_uart|u1_UART_RX|clk_counter[0]~12_combout\,
	cout => \u1_uart|u1_UART_RX|clk_counter[0]~13\);

-- Location: LCCOMB_X19_Y8_N8
\u1_uart|u1_UART_RX|clk_counter[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[1]~14_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(1) & (!\u1_uart|u1_UART_RX|clk_counter[0]~13\)) # (!\u1_uart|u1_UART_RX|clk_counter\(1) & ((\u1_uart|u1_UART_RX|clk_counter[0]~13\) # (GND)))
-- \u1_uart|u1_UART_RX|clk_counter[1]~15\ = CARRY((!\u1_uart|u1_UART_RX|clk_counter[0]~13\) # (!\u1_uart|u1_UART_RX|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u1_UART_RX|clk_counter\(1),
	datad => VCC,
	cin => \u1_uart|u1_UART_RX|clk_counter[0]~13\,
	combout => \u1_uart|u1_UART_RX|clk_counter[1]~14_combout\,
	cout => \u1_uart|u1_UART_RX|clk_counter[1]~15\);

-- Location: LCCOMB_X18_Y8_N6
\u1_uart|u1_UART_RX|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector1~0_combout\ = (!\u1_uart|u1_UART_RX|u1|a_d2~regout\ & (((!\u1_uart|u1_UART_RX|t_bit_flg~regout\ & \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\)) # (!\u1_uart|u1_UART_RX|fsm_state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datab => \u1_uart|u1_UART_RX|t_bit_flg~regout\,
	datac => \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\,
	datad => \u1_uart|u1_UART_RX|fsm_state.idle~regout\,
	combout => \u1_uart|u1_UART_RX|Selector1~0_combout\);

-- Location: LCFF_X18_Y8_N7
\u1_uart|u1_UART_RX|fsm_state.get_start_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|Selector1~0_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\);

-- Location: LCCOMB_X18_Y8_N26
\u1_uart|u1_UART_RX|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector0~0_combout\ = (\u1_uart|u1_UART_RX|u1|a_d2~regout\ & ((\u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\) # (!\u1_uart|u1_UART_RX|fsm_state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u1_UART_RX|fsm_state.idle~regout\,
	datac => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datad => \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\,
	combout => \u1_uart|u1_UART_RX|Selector0~0_combout\);

-- Location: LCCOMB_X18_Y8_N2
\u1_uart|u1_UART_RX|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector0~1_combout\ = (!\u1_uart|u1_UART_RX|Selector0~0_combout\ & ((!\u1_uart|u1_UART_RX|t_bit_flg~regout\) # (!\u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\,
	datac => \u1_uart|u1_UART_RX|t_bit_flg~regout\,
	datad => \u1_uart|u1_UART_RX|Selector0~0_combout\,
	combout => \u1_uart|u1_UART_RX|Selector0~1_combout\);

-- Location: LCFF_X18_Y8_N3
\u1_uart|u1_UART_RX|fsm_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|Selector0~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|fsm_state.idle~regout\);

-- Location: LCCOMB_X18_Y8_N18
\u1_uart|u1_UART_RX|max_cnt[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|max_cnt[10]~0_combout\ = (!\u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\ & !\u1_uart|u1_UART_RX|fsm_state.get_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\,
	datad => \u1_uart|u1_UART_RX|fsm_state.get_data~regout\,
	combout => \u1_uart|u1_UART_RX|max_cnt[10]~0_combout\);

-- Location: LCCOMB_X18_Y8_N24
\u1_uart|u1_UART_RX|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector4~0_combout\ = (\u1_uart|u1_UART_RX|u1|a_d2~regout\ & (((\u1_uart|u1_UART_RX|rst_counter~regout\ & !\u1_uart|u1_UART_RX|max_cnt[10]~0_combout\)))) # (!\u1_uart|u1_UART_RX|u1|a_d2~regout\ & 
-- (((\u1_uart|u1_UART_RX|rst_counter~regout\ & !\u1_uart|u1_UART_RX|max_cnt[10]~0_combout\)) # (!\u1_uart|u1_UART_RX|fsm_state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datab => \u1_uart|u1_UART_RX|fsm_state.idle~regout\,
	datac => \u1_uart|u1_UART_RX|rst_counter~regout\,
	datad => \u1_uart|u1_UART_RX|max_cnt[10]~0_combout\,
	combout => \u1_uart|u1_UART_RX|Selector4~0_combout\);

-- Location: LCFF_X18_Y8_N25
\u1_uart|u1_UART_RX|rst_counter\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|Selector4~0_combout\,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|rst_counter~regout\);

-- Location: LCCOMB_X19_Y8_N16
\u1_uart|u1_UART_RX|clk_counter[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[5]~22_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(5) & (!\u1_uart|u1_UART_RX|clk_counter[4]~21\)) # (!\u1_uart|u1_UART_RX|clk_counter\(5) & ((\u1_uart|u1_UART_RX|clk_counter[4]~21\) # (GND)))
-- \u1_uart|u1_UART_RX|clk_counter[5]~23\ = CARRY((!\u1_uart|u1_UART_RX|clk_counter[4]~21\) # (!\u1_uart|u1_UART_RX|clk_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|clk_counter\(5),
	datad => VCC,
	cin => \u1_uart|u1_UART_RX|clk_counter[4]~21\,
	combout => \u1_uart|u1_UART_RX|clk_counter[5]~22_combout\,
	cout => \u1_uart|u1_UART_RX|clk_counter[5]~23\);

-- Location: LCFF_X19_Y8_N17
\u1_uart|u1_UART_RX|clk_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[5]~22_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(5));

-- Location: LCCOMB_X16_Y8_N8
\u1_uart|u1_UART_RX|clk_counter[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\ = (\u1_uart|u1_UART_RX|rst_counter~regout\) # ((\u1_uart|u1_UART_RX|clk_counter\(6) & (\u1_uart|u1_UART_RX|Equal0~4_combout\ & \u1_uart|u1_UART_RX|clk_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|clk_counter\(6),
	datab => \u1_uart|u1_UART_RX|Equal0~4_combout\,
	datac => \u1_uart|u1_UART_RX|rst_counter~regout\,
	datad => \u1_uart|u1_UART_RX|clk_counter\(5),
	combout => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\);

-- Location: LCFF_X19_Y8_N9
\u1_uart|u1_UART_RX|clk_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[1]~14_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(1));

-- Location: LCCOMB_X19_Y8_N10
\u1_uart|u1_UART_RX|clk_counter[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[2]~16_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(2) & (\u1_uart|u1_UART_RX|clk_counter[1]~15\ $ (GND))) # (!\u1_uart|u1_UART_RX|clk_counter\(2) & (!\u1_uart|u1_UART_RX|clk_counter[1]~15\ & VCC))
-- \u1_uart|u1_UART_RX|clk_counter[2]~17\ = CARRY((\u1_uart|u1_UART_RX|clk_counter\(2) & !\u1_uart|u1_UART_RX|clk_counter[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|clk_counter\(2),
	datad => VCC,
	cin => \u1_uart|u1_UART_RX|clk_counter[1]~15\,
	combout => \u1_uart|u1_UART_RX|clk_counter[2]~16_combout\,
	cout => \u1_uart|u1_UART_RX|clk_counter[2]~17\);

-- Location: LCCOMB_X19_Y8_N14
\u1_uart|u1_UART_RX|clk_counter[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[4]~20_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(4) & (\u1_uart|u1_UART_RX|clk_counter[3]~19\ $ (GND))) # (!\u1_uart|u1_UART_RX|clk_counter\(4) & (!\u1_uart|u1_UART_RX|clk_counter[3]~19\ & VCC))
-- \u1_uart|u1_UART_RX|clk_counter[4]~21\ = CARRY((\u1_uart|u1_UART_RX|clk_counter\(4) & !\u1_uart|u1_UART_RX|clk_counter[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u1_UART_RX|clk_counter\(4),
	datad => VCC,
	cin => \u1_uart|u1_UART_RX|clk_counter[3]~19\,
	combout => \u1_uart|u1_UART_RX|clk_counter[4]~20_combout\,
	cout => \u1_uart|u1_UART_RX|clk_counter[4]~21\);

-- Location: LCFF_X19_Y8_N15
\u1_uart|u1_UART_RX|clk_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[4]~20_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(4));

-- Location: LCCOMB_X19_Y8_N18
\u1_uart|u1_UART_RX|clk_counter[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[6]~25_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(6) & (\u1_uart|u1_UART_RX|clk_counter[5]~23\ $ (GND))) # (!\u1_uart|u1_UART_RX|clk_counter\(6) & (!\u1_uart|u1_UART_RX|clk_counter[5]~23\ & VCC))
-- \u1_uart|u1_UART_RX|clk_counter[6]~26\ = CARRY((\u1_uart|u1_UART_RX|clk_counter\(6) & !\u1_uart|u1_UART_RX|clk_counter[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u1_UART_RX|clk_counter\(6),
	datad => VCC,
	cin => \u1_uart|u1_UART_RX|clk_counter[5]~23\,
	combout => \u1_uart|u1_UART_RX|clk_counter[6]~25_combout\,
	cout => \u1_uart|u1_UART_RX|clk_counter[6]~26\);

-- Location: LCFF_X19_Y8_N19
\u1_uart|u1_UART_RX|clk_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[6]~25_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(6));

-- Location: LCCOMB_X19_Y8_N20
\u1_uart|u1_UART_RX|clk_counter[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[7]~27_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(7) & (!\u1_uart|u1_UART_RX|clk_counter[6]~26\)) # (!\u1_uart|u1_UART_RX|clk_counter\(7) & ((\u1_uart|u1_UART_RX|clk_counter[6]~26\) # (GND)))
-- \u1_uart|u1_UART_RX|clk_counter[7]~28\ = CARRY((!\u1_uart|u1_UART_RX|clk_counter[6]~26\) # (!\u1_uart|u1_UART_RX|clk_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|clk_counter\(7),
	datad => VCC,
	cin => \u1_uart|u1_UART_RX|clk_counter[6]~26\,
	combout => \u1_uart|u1_UART_RX|clk_counter[7]~27_combout\,
	cout => \u1_uart|u1_UART_RX|clk_counter[7]~28\);

-- Location: LCCOMB_X19_Y8_N22
\u1_uart|u1_UART_RX|clk_counter[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[8]~29_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(8) & (\u1_uart|u1_UART_RX|clk_counter[7]~28\ $ (GND))) # (!\u1_uart|u1_UART_RX|clk_counter\(8) & (!\u1_uart|u1_UART_RX|clk_counter[7]~28\ & VCC))
-- \u1_uart|u1_UART_RX|clk_counter[8]~30\ = CARRY((\u1_uart|u1_UART_RX|clk_counter\(8) & !\u1_uart|u1_UART_RX|clk_counter[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u1_UART_RX|clk_counter\(8),
	datad => VCC,
	cin => \u1_uart|u1_UART_RX|clk_counter[7]~28\,
	combout => \u1_uart|u1_UART_RX|clk_counter[8]~29_combout\,
	cout => \u1_uart|u1_UART_RX|clk_counter[8]~30\);

-- Location: LCFF_X19_Y8_N23
\u1_uart|u1_UART_RX|clk_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[8]~29_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(8));

-- Location: LCCOMB_X19_Y8_N26
\u1_uart|u1_UART_RX|clk_counter[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[10]~33_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(10) & (\u1_uart|u1_UART_RX|clk_counter[9]~32\ $ (GND))) # (!\u1_uart|u1_UART_RX|clk_counter\(10) & (!\u1_uart|u1_UART_RX|clk_counter[9]~32\ & VCC))
-- \u1_uart|u1_UART_RX|clk_counter[10]~34\ = CARRY((\u1_uart|u1_UART_RX|clk_counter\(10) & !\u1_uart|u1_UART_RX|clk_counter[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u1_UART_RX|clk_counter\(10),
	datad => VCC,
	cin => \u1_uart|u1_UART_RX|clk_counter[9]~32\,
	combout => \u1_uart|u1_UART_RX|clk_counter[10]~33_combout\,
	cout => \u1_uart|u1_UART_RX|clk_counter[10]~34\);

-- Location: LCFF_X19_Y8_N27
\u1_uart|u1_UART_RX|clk_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[10]~33_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(10));

-- Location: LCCOMB_X19_Y8_N2
\u1_uart|u1_UART_RX|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Equal0~2_combout\ = (\u1_uart|u1_UART_RX|max_cnt\(10) & (!\u1_uart|u1_UART_RX|clk_counter\(10) & (!\u1_uart|u1_UART_RX|clk_counter\(1) & !\u1_uart|u1_UART_RX|clk_counter\(8)))) # (!\u1_uart|u1_UART_RX|max_cnt\(10) & 
-- (\u1_uart|u1_UART_RX|clk_counter\(10) & (\u1_uart|u1_UART_RX|clk_counter\(1) & \u1_uart|u1_UART_RX|clk_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|max_cnt\(10),
	datab => \u1_uart|u1_UART_RX|clk_counter\(10),
	datac => \u1_uart|u1_UART_RX|clk_counter\(1),
	datad => \u1_uart|u1_UART_RX|clk_counter\(8),
	combout => \u1_uart|u1_UART_RX|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y8_N14
\u1_uart|u1_UART_RX|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector6~0_combout\ = (\u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\ & ((\u1_uart|u1_UART_RX|Selector2~5_combout\) # ((\u1_uart|u1_UART_RX|max_cnt\(11))))) # (!\u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\ & 
-- (((\u1_uart|u1_UART_RX|max_cnt\(11) & !\u1_uart|u1_UART_RX|max_cnt[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\,
	datab => \u1_uart|u1_UART_RX|Selector2~5_combout\,
	datac => \u1_uart|u1_UART_RX|max_cnt\(11),
	datad => \u1_uart|u1_UART_RX|max_cnt[10]~0_combout\,
	combout => \u1_uart|u1_UART_RX|Selector6~0_combout\);

-- Location: LCFF_X18_Y8_N15
\u1_uart|u1_UART_RX|max_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|Selector6~0_combout\,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|max_cnt\(11));

-- Location: LCFF_X19_Y8_N21
\u1_uart|u1_UART_RX|clk_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[7]~27_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(7));

-- Location: LCCOMB_X19_Y8_N28
\u1_uart|u1_UART_RX|clk_counter[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|clk_counter[11]~35_combout\ = \u1_uart|u1_UART_RX|clk_counter[10]~34\ $ (\u1_uart|u1_UART_RX|clk_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1_uart|u1_UART_RX|clk_counter\(11),
	cin => \u1_uart|u1_UART_RX|clk_counter[10]~34\,
	combout => \u1_uart|u1_UART_RX|clk_counter[11]~35_combout\);

-- Location: LCFF_X19_Y8_N29
\u1_uart|u1_UART_RX|clk_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[11]~35_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(11));

-- Location: LCCOMB_X19_Y8_N4
\u1_uart|u1_UART_RX|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Equal0~3_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(9) & (((!\u1_uart|u1_UART_RX|clk_counter\(11)) # (!\u1_uart|u1_UART_RX|clk_counter\(7))) # (!\u1_uart|u1_UART_RX|max_cnt\(11)))) # (!\u1_uart|u1_UART_RX|clk_counter\(9) & 
-- ((\u1_uart|u1_UART_RX|max_cnt\(11)) # ((\u1_uart|u1_UART_RX|clk_counter\(7)) # (\u1_uart|u1_UART_RX|clk_counter\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|clk_counter\(9),
	datab => \u1_uart|u1_UART_RX|max_cnt\(11),
	datac => \u1_uart|u1_UART_RX|clk_counter\(7),
	datad => \u1_uart|u1_UART_RX|clk_counter\(11),
	combout => \u1_uart|u1_UART_RX|Equal0~3_combout\);

-- Location: LCFF_X19_Y8_N11
\u1_uart|u1_UART_RX|clk_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[2]~16_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(2));

-- Location: LCFF_X19_Y8_N7
\u1_uart|u1_UART_RX|clk_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|clk_counter[0]~12_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u1_UART_RX|clk_counter[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|clk_counter\(0));

-- Location: LCCOMB_X19_Y8_N0
\u1_uart|u1_UART_RX|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Equal0~1_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(3) & (\u1_uart|u1_UART_RX|clk_counter\(2) & (\u1_uart|u1_UART_RX|clk_counter\(4) & !\u1_uart|u1_UART_RX|clk_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|clk_counter\(3),
	datab => \u1_uart|u1_UART_RX|clk_counter\(2),
	datac => \u1_uart|u1_UART_RX|clk_counter\(4),
	datad => \u1_uart|u1_UART_RX|clk_counter\(0),
	combout => \u1_uart|u1_UART_RX|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y8_N30
\u1_uart|u1_UART_RX|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Equal0~4_combout\ = (\u1_uart|u1_UART_RX|Equal0~2_combout\ & (!\u1_uart|u1_UART_RX|Equal0~3_combout\ & \u1_uart|u1_UART_RX|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u1_UART_RX|Equal0~2_combout\,
	datac => \u1_uart|u1_UART_RX|Equal0~3_combout\,
	datad => \u1_uart|u1_UART_RX|Equal0~1_combout\,
	combout => \u1_uart|u1_UART_RX|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y8_N6
\u1_uart|u1_UART_RX|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Equal0~0_combout\ = (\u1_uart|u1_UART_RX|clk_counter\(6) & \u1_uart|u1_UART_RX|clk_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u1_UART_RX|clk_counter\(6),
	datad => \u1_uart|u1_UART_RX|clk_counter\(5),
	combout => \u1_uart|u1_UART_RX|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y8_N2
\u1_uart|u1_UART_RX|t_bit_flg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|t_bit_flg~0_combout\ = (\u1_uart|u1_UART_RX|rst_counter~regout\ & (((\u1_uart|u1_UART_RX|t_bit_flg~regout\)))) # (!\u1_uart|u1_UART_RX|rst_counter~regout\ & (\u1_uart|u1_UART_RX|Equal0~4_combout\ & 
-- ((\u1_uart|u1_UART_RX|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|rst_counter~regout\,
	datab => \u1_uart|u1_UART_RX|Equal0~4_combout\,
	datac => \u1_uart|u1_UART_RX|t_bit_flg~regout\,
	datad => \u1_uart|u1_UART_RX|Equal0~0_combout\,
	combout => \u1_uart|u1_UART_RX|t_bit_flg~0_combout\);

-- Location: LCFF_X16_Y8_N3
\u1_uart|u1_UART_RX|t_bit_flg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|t_bit_flg~0_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|t_bit_flg~regout\);

-- Location: LCCOMB_X16_Y8_N24
\u1_uart|u1_UART_RX|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector2~5_combout\ = (!\u1_uart|u1_UART_RX|u1|a_d2~regout\ & \u1_uart|u1_UART_RX|t_bit_flg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datad => \u1_uart|u1_UART_RX|t_bit_flg~regout\,
	combout => \u1_uart|u1_UART_RX|Selector2~5_combout\);

-- Location: LCCOMB_X18_Y8_N0
\u1_uart|u1_UART_RX|Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector2~6_combout\ = (\u1_uart|u1_UART_RX|Rx_idx\(3) & (\u1_uart|u1_UART_RX|Selector2~5_combout\ & ((\u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\)))) # (!\u1_uart|u1_UART_RX|Rx_idx\(3) & 
-- ((\u1_uart|u1_UART_RX|fsm_state.get_data~regout\) # ((\u1_uart|u1_UART_RX|Selector2~5_combout\ & \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(3),
	datab => \u1_uart|u1_UART_RX|Selector2~5_combout\,
	datac => \u1_uart|u1_UART_RX|fsm_state.get_data~regout\,
	datad => \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\,
	combout => \u1_uart|u1_UART_RX|Selector2~6_combout\);

-- Location: LCFF_X18_Y8_N1
\u1_uart|u1_UART_RX|fsm_state.get_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|Selector2~6_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|fsm_state.get_data~regout\);

-- Location: LCCOMB_X15_Y8_N2
\u1_uart|u1_UART_RX|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector18~1_combout\ = (\u1_uart|u1_UART_RX|Rx_idx\(2) & (!\u1_uart|u1_UART_RX|Rx_idx\(3) & (\u1_uart|u1_UART_RX|fsm_state.get_data~regout\ & \u1_uart|u1_UART_RX|t_bit_flg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(2),
	datab => \u1_uart|u1_UART_RX|Rx_idx\(3),
	datac => \u1_uart|u1_UART_RX|fsm_state.get_data~regout\,
	datad => \u1_uart|u1_UART_RX|t_bit_flg~regout\,
	combout => \u1_uart|u1_UART_RX|Selector18~1_combout\);

-- Location: LCCOMB_X18_Y8_N4
\u1_uart|u1_UART_RX|Selector18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector18~3_combout\ = (\u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\) # (\u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\,
	datad => \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\,
	combout => \u1_uart|u1_UART_RX|Selector18~3_combout\);

-- Location: LCCOMB_X15_Y8_N4
\u1_uart|u1_UART_RX|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector21~0_combout\ = (\u1_uart|u1_UART_RX|Rx_idx\(0) & ((\u1_uart|u1_UART_RX|Selector18~3_combout\) # ((!\u1_uart|u1_UART_RX|t_bit_flg~regout\ & \u1_uart|u1_UART_RX|Selector2~4_combout\)))) # (!\u1_uart|u1_UART_RX|Rx_idx\(0) & 
-- (\u1_uart|u1_UART_RX|t_bit_flg~regout\ & (\u1_uart|u1_UART_RX|Selector2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|t_bit_flg~regout\,
	datab => \u1_uart|u1_UART_RX|Selector2~4_combout\,
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Selector18~3_combout\,
	combout => \u1_uart|u1_UART_RX|Selector21~0_combout\);

-- Location: LCFF_X15_Y8_N5
\u1_uart|u1_UART_RX|Rx_idx[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|Selector21~0_combout\,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|Rx_idx\(0));

-- Location: LCCOMB_X15_Y8_N0
\u1_uart|u1_UART_RX|Selector18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector18~2_combout\ = (\u1_uart|u1_UART_RX|Selector18~0_combout\) # ((\u1_uart|u1_UART_RX|Selector18~1_combout\ & (\u1_uart|u1_UART_RX|Rx_idx\(0) & \u1_uart|u1_UART_RX|Rx_idx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Selector18~0_combout\,
	datab => \u1_uart|u1_UART_RX|Selector18~1_combout\,
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Rx_idx\(1),
	combout => \u1_uart|u1_UART_RX|Selector18~2_combout\);

-- Location: LCFF_X15_Y8_N1
\u1_uart|u1_UART_RX|Rx_idx[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|Selector18~2_combout\,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|Rx_idx\(3));

-- Location: LCCOMB_X15_Y8_N10
\u1_uart|u1_UART_RX|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector2~4_combout\ = (!\u1_uart|u1_UART_RX|Rx_idx\(3) & \u1_uart|u1_UART_RX|fsm_state.get_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u1_UART_RX|Rx_idx\(3),
	datac => \u1_uart|u1_UART_RX|fsm_state.get_data~regout\,
	combout => \u1_uart|u1_UART_RX|Selector2~4_combout\);

-- Location: LCCOMB_X15_Y8_N22
\u1_uart|u1_UART_RX|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector20~1_combout\ = (\u1_uart|u1_UART_RX|Selector20~0_combout\ & ((\u1_uart|u1_UART_RX|Selector2~4_combout\) # ((\u1_uart|u1_UART_RX|Rx_idx\(1) & \u1_uart|u1_UART_RX|Selector18~3_combout\)))) # 
-- (!\u1_uart|u1_UART_RX|Selector20~0_combout\ & (((\u1_uart|u1_UART_RX|Rx_idx\(1) & \u1_uart|u1_UART_RX|Selector18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Selector20~0_combout\,
	datab => \u1_uart|u1_UART_RX|Selector2~4_combout\,
	datac => \u1_uart|u1_UART_RX|Rx_idx\(1),
	datad => \u1_uart|u1_UART_RX|Selector18~3_combout\,
	combout => \u1_uart|u1_UART_RX|Selector20~1_combout\);

-- Location: LCFF_X15_Y8_N23
\u1_uart|u1_UART_RX|Rx_idx[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|Selector20~1_combout\,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|Rx_idx\(1));

-- Location: LCCOMB_X18_Y8_N20
\u1_uart|u1_UART_RX|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Decoder0~0_combout\ = (!\u1_uart|u1_UART_RX|Rx_idx\(3) & (\u1_uart|u1_UART_RX|fsm_state.get_data~regout\ & (\u1_uart|u1_UART_RX|t_bit_flg~regout\ & \RST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(3),
	datab => \u1_uart|u1_UART_RX|fsm_state.get_data~regout\,
	datac => \u1_uart|u1_UART_RX|t_bit_flg~regout\,
	datad => \RST~combout\,
	combout => \u1_uart|u1_UART_RX|Decoder0~0_combout\);

-- Location: LCCOMB_X15_Y8_N26
\u1_uart|u1_UART_RX|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Decoder0~1_combout\ = (!\u1_uart|u1_UART_RX|Rx_idx\(2) & (!\u1_uart|u1_UART_RX|Rx_idx\(1) & (!\u1_uart|u1_UART_RX|Rx_idx\(0) & \u1_uart|u1_UART_RX|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(2),
	datab => \u1_uart|u1_UART_RX|Rx_idx\(1),
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Decoder0~0_combout\,
	combout => \u1_uart|u1_UART_RX|Decoder0~1_combout\);

-- Location: LCCOMB_X16_Y8_N12
\u1_uart|u1_UART_RX|DATA[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|DATA[0]~0_combout\ = (\u1_uart|u1_UART_RX|Decoder0~1_combout\ & (\u1_uart|u1_UART_RX|u1|a_d2~regout\)) # (!\u1_uart|u1_UART_RX|Decoder0~1_combout\ & ((\u1_uart|u1_UART_RX|DATA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datab => \u1_uart|u1_UART_RX|Decoder0~1_combout\,
	datac => \u1_uart|u1_UART_RX|DATA\(0),
	combout => \u1_uart|u1_UART_RX|DATA[0]~0_combout\);

-- Location: LCFF_X16_Y8_N13
\u1_uart|u1_UART_RX|DATA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|DATA\(0));

-- Location: LCCOMB_X14_Y1_N8
\u1_uart|u2_UART_TX|Tx_idx[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Tx_idx[0]~4_combout\ = (\u1_uart|u2_UART_TX|t_bit_flg~regout\ & (\u1_uart|u2_UART_TX|Tx_idx\(0) $ (VCC))) # (!\u1_uart|u2_UART_TX|t_bit_flg~regout\ & (\u1_uart|u2_UART_TX|Tx_idx\(0) & VCC))
-- \u1_uart|u2_UART_TX|Tx_idx[0]~5\ = CARRY((\u1_uart|u2_UART_TX|t_bit_flg~regout\ & \u1_uart|u2_UART_TX|Tx_idx\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|t_bit_flg~regout\,
	datab => \u1_uart|u2_UART_TX|Tx_idx\(0),
	datad => VCC,
	combout => \u1_uart|u2_UART_TX|Tx_idx[0]~4_combout\,
	cout => \u1_uart|u2_UART_TX|Tx_idx[0]~5\);

-- Location: LCCOMB_X14_Y13_N20
\u1_uart|u2_UART_TX|Tx_idx[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Tx_idx[3]~12_combout\ = (\u1_uart|u2_UART_TX|fsm_state.send_data~regout\ & \RST~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_UART_TX|fsm_state.send_data~regout\,
	datad => \RST~combout\,
	combout => \u1_uart|u2_UART_TX|Tx_idx[3]~12_combout\);

-- Location: LCFF_X14_Y1_N9
\u1_uart|u2_UART_TX|Tx_idx[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|Tx_idx[0]~4_combout\,
	sclr => \u1_uart|u2_UART_TX|Tx_idx\(3),
	ena => \u1_uart|u2_UART_TX|Tx_idx[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|Tx_idx\(0));

-- Location: LCCOMB_X14_Y1_N10
\u1_uart|u2_UART_TX|Tx_idx[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Tx_idx[1]~6_combout\ = (\u1_uart|u2_UART_TX|Tx_idx\(1) & (!\u1_uart|u2_UART_TX|Tx_idx[0]~5\)) # (!\u1_uart|u2_UART_TX|Tx_idx\(1) & ((\u1_uart|u2_UART_TX|Tx_idx[0]~5\) # (GND)))
-- \u1_uart|u2_UART_TX|Tx_idx[1]~7\ = CARRY((!\u1_uart|u2_UART_TX|Tx_idx[0]~5\) # (!\u1_uart|u2_UART_TX|Tx_idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Tx_idx\(1),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|Tx_idx[0]~5\,
	combout => \u1_uart|u2_UART_TX|Tx_idx[1]~6_combout\,
	cout => \u1_uart|u2_UART_TX|Tx_idx[1]~7\);

-- Location: LCCOMB_X14_Y1_N14
\u1_uart|u2_UART_TX|Tx_idx[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Tx_idx[3]~10_combout\ = \u1_uart|u2_UART_TX|Tx_idx\(3) $ (\u1_uart|u2_UART_TX|Tx_idx[2]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_UART_TX|Tx_idx\(3),
	cin => \u1_uart|u2_UART_TX|Tx_idx[2]~9\,
	combout => \u1_uart|u2_UART_TX|Tx_idx[3]~10_combout\);

-- Location: LCFF_X14_Y1_N15
\u1_uart|u2_UART_TX|Tx_idx[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|Tx_idx[3]~10_combout\,
	sclr => \u1_uart|u2_UART_TX|Tx_idx\(3),
	ena => \u1_uart|u2_UART_TX|Tx_idx[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|Tx_idx\(3));

-- Location: LCCOMB_X13_Y13_N2
\u1_uart|u2_UART_TX|clk_counter[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[0]~12_combout\ = \u1_uart|u2_UART_TX|clk_counter\(0) $ (VCC)
-- \u1_uart|u2_UART_TX|clk_counter[0]~13\ = CARRY(\u1_uart|u2_UART_TX|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_UART_TX|clk_counter\(0),
	datad => VCC,
	combout => \u1_uart|u2_UART_TX|clk_counter[0]~12_combout\,
	cout => \u1_uart|u2_UART_TX|clk_counter[0]~13\);

-- Location: LCCOMB_X13_Y13_N16
\u1_uart|u2_UART_TX|clk_counter[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[7]~27_combout\ = (\u1_uart|u2_UART_TX|clk_counter\(7) & (!\u1_uart|u2_UART_TX|clk_counter[6]~26\)) # (!\u1_uart|u2_UART_TX|clk_counter\(7) & ((\u1_uart|u2_UART_TX|clk_counter[6]~26\) # (GND)))
-- \u1_uart|u2_UART_TX|clk_counter[7]~28\ = CARRY((!\u1_uart|u2_UART_TX|clk_counter[6]~26\) # (!\u1_uart|u2_UART_TX|clk_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|clk_counter\(7),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|clk_counter[6]~26\,
	combout => \u1_uart|u2_UART_TX|clk_counter[7]~27_combout\,
	cout => \u1_uart|u2_UART_TX|clk_counter[7]~28\);

-- Location: LCFF_X13_Y13_N17
\u1_uart|u2_UART_TX|clk_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[7]~27_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(7));

-- Location: LCCOMB_X13_Y13_N10
\u1_uart|u2_UART_TX|clk_counter[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[4]~21_combout\ = (\u1_uart|u2_UART_TX|clk_counter\(4) & (\u1_uart|u2_UART_TX|clk_counter[3]~20\ $ (GND))) # (!\u1_uart|u2_UART_TX|clk_counter\(4) & (!\u1_uart|u2_UART_TX|clk_counter[3]~20\ & VCC))
-- \u1_uart|u2_UART_TX|clk_counter[4]~22\ = CARRY((\u1_uart|u2_UART_TX|clk_counter\(4) & !\u1_uart|u2_UART_TX|clk_counter[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|clk_counter\(4),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|clk_counter[3]~20\,
	combout => \u1_uart|u2_UART_TX|clk_counter[4]~21_combout\,
	cout => \u1_uart|u2_UART_TX|clk_counter[4]~22\);

-- Location: LCFF_X13_Y13_N11
\u1_uart|u2_UART_TX|clk_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[4]~21_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(4));

-- Location: LCCOMB_X13_Y13_N26
\u1_uart|u2_UART_TX|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Equal0~1_combout\ = (((!\u1_uart|u2_UART_TX|clk_counter\(4)) # (!\u1_uart|u2_UART_TX|clk_counter\(7))) # (!\u1_uart|u2_UART_TX|clk_counter\(6))) # (!\u1_uart|u2_UART_TX|clk_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|clk_counter\(5),
	datab => \u1_uart|u2_UART_TX|clk_counter\(6),
	datac => \u1_uart|u2_UART_TX|clk_counter\(7),
	datad => \u1_uart|u2_UART_TX|clk_counter\(4),
	combout => \u1_uart|u2_UART_TX|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y14_N0
\u2_controller|address_counter[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[0]~12_combout\ = \u2_controller|address_counter\(0) $ (VCC)
-- \u2_controller|address_counter[0]~13\ = CARRY(\u2_controller|address_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|address_counter\(0),
	datad => VCC,
	combout => \u2_controller|address_counter[0]~12_combout\,
	cout => \u2_controller|address_counter[0]~13\);

-- Location: LCCOMB_X18_Y8_N10
\u1_uart|u1_UART_RX|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector3~0_combout\ = (\u1_uart|u1_UART_RX|Rx_idx\(3) & ((\u1_uart|u1_UART_RX|fsm_state.get_data~regout\) # ((!\u1_uart|u1_UART_RX|t_bit_flg~regout\ & \u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\)))) # 
-- (!\u1_uart|u1_UART_RX|Rx_idx\(3) & (!\u1_uart|u1_UART_RX|t_bit_flg~regout\ & (\u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(3),
	datab => \u1_uart|u1_UART_RX|t_bit_flg~regout\,
	datac => \u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\,
	datad => \u1_uart|u1_UART_RX|fsm_state.get_data~regout\,
	combout => \u1_uart|u1_UART_RX|Selector3~0_combout\);

-- Location: LCFF_X18_Y8_N11
\u1_uart|u1_UART_RX|fsm_state.get_end_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|Selector3~0_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\);

-- Location: LCCOMB_X18_Y8_N12
\u1_uart|u1_UART_RX|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector5~0_combout\ = (\u1_uart|u1_UART_RX|u1|a_d2~regout\ & (\u1_uart|u1_UART_RX|t_bit_flg~regout\ & \u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datac => \u1_uart|u1_UART_RX|t_bit_flg~regout\,
	datad => \u1_uart|u1_UART_RX|fsm_state.get_end_bit~regout\,
	combout => \u1_uart|u1_UART_RX|Selector5~0_combout\);

-- Location: LCCOMB_X18_Y8_N8
\u1_uart|u1_UART_RX|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Selector5~1_combout\ = (\u1_uart|u1_UART_RX|Selector5~0_combout\) # ((\u1_uart|u1_UART_RX|DATA_VALID~regout\ & ((\u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\) # (!\u1_uart|u1_UART_RX|max_cnt[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|fsm_state.get_start_bit~regout\,
	datab => \u1_uart|u1_UART_RX|max_cnt[10]~0_combout\,
	datac => \u1_uart|u1_UART_RX|DATA_VALID~regout\,
	datad => \u1_uart|u1_UART_RX|Selector5~0_combout\,
	combout => \u1_uart|u1_UART_RX|Selector5~1_combout\);

-- Location: LCFF_X18_Y8_N9
\u1_uart|u1_UART_RX|DATA_VALID\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|Selector5~1_combout\,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|DATA_VALID~regout\);

-- Location: LCCOMB_X14_Y14_N30
\u2_controller|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Selector0~2_combout\ = (\u2_controller|fsm_state.recive~regout\ & !\u1_uart|u1_UART_RX|DATA_VALID~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|fsm_state.recive~regout\,
	datad => \u1_uart|u1_UART_RX|DATA_VALID~regout\,
	combout => \u2_controller|Selector0~2_combout\);

-- Location: LCCOMB_X13_Y14_N2
\u2_controller|address_counter[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[1]~17_combout\ = (\u2_controller|fsm_state.save_data~regout\ & ((\u2_controller|address_counter\(1) & (!\u2_controller|address_counter[0]~13\)) # (!\u2_controller|address_counter\(1) & 
-- ((\u2_controller|address_counter[0]~13\) # (GND))))) # (!\u2_controller|fsm_state.save_data~regout\ & ((\u2_controller|address_counter\(1) & (\u2_controller|address_counter[0]~13\ & VCC)) # (!\u2_controller|address_counter\(1) & 
-- (!\u2_controller|address_counter[0]~13\))))
-- \u2_controller|address_counter[1]~18\ = CARRY((\u2_controller|fsm_state.save_data~regout\ & ((!\u2_controller|address_counter[0]~13\) # (!\u2_controller|address_counter\(1)))) # (!\u2_controller|fsm_state.save_data~regout\ & 
-- (!\u2_controller|address_counter\(1) & !\u2_controller|address_counter[0]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|address_counter\(1),
	datad => VCC,
	cin => \u2_controller|address_counter[0]~13\,
	combout => \u2_controller|address_counter[1]~17_combout\,
	cout => \u2_controller|address_counter[1]~18\);

-- Location: LCCOMB_X13_Y14_N4
\u2_controller|address_counter[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[2]~19_combout\ = ((\u2_controller|fsm_state.save_data~regout\ $ (\u2_controller|address_counter\(2) $ (\u2_controller|address_counter[1]~18\)))) # (GND)
-- \u2_controller|address_counter[2]~20\ = CARRY((\u2_controller|fsm_state.save_data~regout\ & (\u2_controller|address_counter\(2) & !\u2_controller|address_counter[1]~18\)) # (!\u2_controller|fsm_state.save_data~regout\ & 
-- ((\u2_controller|address_counter\(2)) # (!\u2_controller|address_counter[1]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|address_counter\(2),
	datad => VCC,
	cin => \u2_controller|address_counter[1]~18\,
	combout => \u2_controller|address_counter[2]~19_combout\,
	cout => \u2_controller|address_counter[2]~20\);

-- Location: LCFF_X13_Y14_N5
\u2_controller|address_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[2]~19_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(2));

-- Location: LCCOMB_X13_Y14_N6
\u2_controller|address_counter[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[3]~21_combout\ = (\u2_controller|fsm_state.save_data~regout\ & ((\u2_controller|address_counter\(3) & (!\u2_controller|address_counter[2]~20\)) # (!\u2_controller|address_counter\(3) & 
-- ((\u2_controller|address_counter[2]~20\) # (GND))))) # (!\u2_controller|fsm_state.save_data~regout\ & ((\u2_controller|address_counter\(3) & (\u2_controller|address_counter[2]~20\ & VCC)) # (!\u2_controller|address_counter\(3) & 
-- (!\u2_controller|address_counter[2]~20\))))
-- \u2_controller|address_counter[3]~22\ = CARRY((\u2_controller|fsm_state.save_data~regout\ & ((!\u2_controller|address_counter[2]~20\) # (!\u2_controller|address_counter\(3)))) # (!\u2_controller|fsm_state.save_data~regout\ & 
-- (!\u2_controller|address_counter\(3) & !\u2_controller|address_counter[2]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|address_counter\(3),
	datad => VCC,
	cin => \u2_controller|address_counter[2]~20\,
	combout => \u2_controller|address_counter[3]~21_combout\,
	cout => \u2_controller|address_counter[3]~22\);

-- Location: LCFF_X13_Y14_N7
\u2_controller|address_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[3]~21_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(3));

-- Location: LCCOMB_X13_Y14_N8
\u2_controller|address_counter[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[4]~23_combout\ = ((\u2_controller|fsm_state.save_data~regout\ $ (\u2_controller|address_counter\(4) $ (\u2_controller|address_counter[3]~22\)))) # (GND)
-- \u2_controller|address_counter[4]~24\ = CARRY((\u2_controller|fsm_state.save_data~regout\ & (\u2_controller|address_counter\(4) & !\u2_controller|address_counter[3]~22\)) # (!\u2_controller|fsm_state.save_data~regout\ & 
-- ((\u2_controller|address_counter\(4)) # (!\u2_controller|address_counter[3]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|address_counter\(4),
	datad => VCC,
	cin => \u2_controller|address_counter[3]~22\,
	combout => \u2_controller|address_counter[4]~23_combout\,
	cout => \u2_controller|address_counter[4]~24\);

-- Location: LCFF_X13_Y14_N9
\u2_controller|address_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[4]~23_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(4));

-- Location: LCCOMB_X13_Y14_N10
\u2_controller|address_counter[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[5]~25_combout\ = (\u2_controller|fsm_state.save_data~regout\ & ((\u2_controller|address_counter\(5) & (!\u2_controller|address_counter[4]~24\)) # (!\u2_controller|address_counter\(5) & 
-- ((\u2_controller|address_counter[4]~24\) # (GND))))) # (!\u2_controller|fsm_state.save_data~regout\ & ((\u2_controller|address_counter\(5) & (\u2_controller|address_counter[4]~24\ & VCC)) # (!\u2_controller|address_counter\(5) & 
-- (!\u2_controller|address_counter[4]~24\))))
-- \u2_controller|address_counter[5]~26\ = CARRY((\u2_controller|fsm_state.save_data~regout\ & ((!\u2_controller|address_counter[4]~24\) # (!\u2_controller|address_counter\(5)))) # (!\u2_controller|fsm_state.save_data~regout\ & 
-- (!\u2_controller|address_counter\(5) & !\u2_controller|address_counter[4]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|address_counter\(5),
	datad => VCC,
	cin => \u2_controller|address_counter[4]~24\,
	combout => \u2_controller|address_counter[5]~25_combout\,
	cout => \u2_controller|address_counter[5]~26\);

-- Location: LCFF_X13_Y14_N11
\u2_controller|address_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[5]~25_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(5));

-- Location: LCCOMB_X13_Y14_N12
\u2_controller|address_counter[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[6]~27_combout\ = ((\u2_controller|fsm_state.save_data~regout\ $ (\u2_controller|address_counter\(6) $ (\u2_controller|address_counter[5]~26\)))) # (GND)
-- \u2_controller|address_counter[6]~28\ = CARRY((\u2_controller|fsm_state.save_data~regout\ & (\u2_controller|address_counter\(6) & !\u2_controller|address_counter[5]~26\)) # (!\u2_controller|fsm_state.save_data~regout\ & 
-- ((\u2_controller|address_counter\(6)) # (!\u2_controller|address_counter[5]~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|address_counter\(6),
	datad => VCC,
	cin => \u2_controller|address_counter[5]~26\,
	combout => \u2_controller|address_counter[6]~27_combout\,
	cout => \u2_controller|address_counter[6]~28\);

-- Location: LCFF_X13_Y14_N13
\u2_controller|address_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[6]~27_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(6));

-- Location: LCCOMB_X13_Y14_N14
\u2_controller|address_counter[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[7]~29_combout\ = (\u2_controller|fsm_state.save_data~regout\ & ((\u2_controller|address_counter\(7) & (!\u2_controller|address_counter[6]~28\)) # (!\u2_controller|address_counter\(7) & 
-- ((\u2_controller|address_counter[6]~28\) # (GND))))) # (!\u2_controller|fsm_state.save_data~regout\ & ((\u2_controller|address_counter\(7) & (\u2_controller|address_counter[6]~28\ & VCC)) # (!\u2_controller|address_counter\(7) & 
-- (!\u2_controller|address_counter[6]~28\))))
-- \u2_controller|address_counter[7]~30\ = CARRY((\u2_controller|fsm_state.save_data~regout\ & ((!\u2_controller|address_counter[6]~28\) # (!\u2_controller|address_counter\(7)))) # (!\u2_controller|fsm_state.save_data~regout\ & 
-- (!\u2_controller|address_counter\(7) & !\u2_controller|address_counter[6]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|address_counter\(7),
	datad => VCC,
	cin => \u2_controller|address_counter[6]~28\,
	combout => \u2_controller|address_counter[7]~29_combout\,
	cout => \u2_controller|address_counter[7]~30\);

-- Location: LCFF_X13_Y14_N15
\u2_controller|address_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[7]~29_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(7));

-- Location: LCCOMB_X13_Y14_N16
\u2_controller|address_counter[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[8]~31_combout\ = ((\u2_controller|fsm_state.save_data~regout\ $ (\u2_controller|address_counter\(8) $ (\u2_controller|address_counter[7]~30\)))) # (GND)
-- \u2_controller|address_counter[8]~32\ = CARRY((\u2_controller|fsm_state.save_data~regout\ & (\u2_controller|address_counter\(8) & !\u2_controller|address_counter[7]~30\)) # (!\u2_controller|fsm_state.save_data~regout\ & 
-- ((\u2_controller|address_counter\(8)) # (!\u2_controller|address_counter[7]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|address_counter\(8),
	datad => VCC,
	cin => \u2_controller|address_counter[7]~30\,
	combout => \u2_controller|address_counter[8]~31_combout\,
	cout => \u2_controller|address_counter[8]~32\);

-- Location: LCFF_X13_Y14_N17
\u2_controller|address_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[8]~31_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(8));

-- Location: LCCOMB_X13_Y14_N18
\u2_controller|address_counter[9]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[9]~33_combout\ = (\u2_controller|fsm_state.save_data~regout\ & ((\u2_controller|address_counter\(9) & (!\u2_controller|address_counter[8]~32\)) # (!\u2_controller|address_counter\(9) & 
-- ((\u2_controller|address_counter[8]~32\) # (GND))))) # (!\u2_controller|fsm_state.save_data~regout\ & ((\u2_controller|address_counter\(9) & (\u2_controller|address_counter[8]~32\ & VCC)) # (!\u2_controller|address_counter\(9) & 
-- (!\u2_controller|address_counter[8]~32\))))
-- \u2_controller|address_counter[9]~34\ = CARRY((\u2_controller|fsm_state.save_data~regout\ & ((!\u2_controller|address_counter[8]~32\) # (!\u2_controller|address_counter\(9)))) # (!\u2_controller|fsm_state.save_data~regout\ & 
-- (!\u2_controller|address_counter\(9) & !\u2_controller|address_counter[8]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|address_counter\(9),
	datad => VCC,
	cin => \u2_controller|address_counter[8]~32\,
	combout => \u2_controller|address_counter[9]~33_combout\,
	cout => \u2_controller|address_counter[9]~34\);

-- Location: LCFF_X13_Y14_N19
\u2_controller|address_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[9]~33_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(9));

-- Location: LCCOMB_X13_Y14_N20
\u2_controller|address_counter[10]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[10]~35_combout\ = ((\u2_controller|fsm_state.save_data~regout\ $ (\u2_controller|address_counter\(10) $ (\u2_controller|address_counter[9]~34\)))) # (GND)
-- \u2_controller|address_counter[10]~36\ = CARRY((\u2_controller|fsm_state.save_data~regout\ & (\u2_controller|address_counter\(10) & !\u2_controller|address_counter[9]~34\)) # (!\u2_controller|fsm_state.save_data~regout\ & 
-- ((\u2_controller|address_counter\(10)) # (!\u2_controller|address_counter[9]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|address_counter\(10),
	datad => VCC,
	cin => \u2_controller|address_counter[9]~34\,
	combout => \u2_controller|address_counter[10]~35_combout\,
	cout => \u2_controller|address_counter[10]~36\);

-- Location: LCFF_X13_Y14_N21
\u2_controller|address_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[10]~35_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(10));

-- Location: LCCOMB_X13_Y14_N22
\u2_controller|address_counter[11]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[11]~37_combout\ = \u2_controller|fsm_state.save_data~regout\ $ (\u2_controller|address_counter\(11) $ (!\u2_controller|address_counter[10]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|address_counter\(11),
	cin => \u2_controller|address_counter[10]~36\,
	combout => \u2_controller|address_counter[11]~37_combout\);

-- Location: LCFF_X13_Y14_N23
\u2_controller|address_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[11]~37_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(11));

-- Location: LCCOMB_X13_Y14_N30
\u2_controller|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Equal0~2_combout\ = (!\u2_controller|address_counter\(8) & (!\u2_controller|address_counter\(11) & (!\u2_controller|address_counter\(10) & !\u2_controller|address_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|address_counter\(8),
	datab => \u2_controller|address_counter\(11),
	datac => \u2_controller|address_counter\(10),
	datad => \u2_controller|address_counter\(9),
	combout => \u2_controller|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y18_N18
\u2_controller|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Equal0~1_combout\ = (!\u2_controller|address_counter\(6) & (!\u2_controller|address_counter\(5) & (!\u2_controller|address_counter\(4) & !\u2_controller|address_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|address_counter\(6),
	datab => \u2_controller|address_counter\(5),
	datac => \u2_controller|address_counter\(4),
	datad => \u2_controller|address_counter\(7),
	combout => \u2_controller|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y18_N6
\u2_controller|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Equal0~3_combout\ = (\u2_controller|Equal0~0_combout\ & (\u2_controller|Equal0~2_combout\ & \u2_controller|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|Equal0~0_combout\,
	datac => \u2_controller|Equal0~2_combout\,
	datad => \u2_controller|Equal0~1_combout\,
	combout => \u2_controller|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y14_N26
\u2_controller|address_counter[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[1]~15_combout\ = (\u2_controller|fsm_state.transmit~regout\ & (\u1_uart|u2_UART_TX|DONE~regout\ & !\u2_controller|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|fsm_state.transmit~regout\,
	datac => \u1_uart|u2_UART_TX|DONE~regout\,
	datad => \u2_controller|Equal0~3_combout\,
	combout => \u2_controller|address_counter[1]~15_combout\);

-- Location: LCCOMB_X14_Y14_N4
\u2_controller|address_counter[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|address_counter[1]~16_combout\ = ((\u2_controller|address_counter[1]~15_combout\) # ((\u2_controller|Selector0~2_combout\ & !\u2_controller|generate_fsm~0_combout\))) # (!\u2_controller|address_counter[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|address_counter[1]~14_combout\,
	datab => \u2_controller|Selector0~2_combout\,
	datac => \u2_controller|generate_fsm~0_combout\,
	datad => \u2_controller|address_counter[1]~15_combout\,
	combout => \u2_controller|address_counter[1]~16_combout\);

-- Location: LCFF_X13_Y14_N1
\u2_controller|address_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[0]~12_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(0));

-- Location: LCFF_X13_Y14_N3
\u2_controller|address_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|address_counter[1]~17_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \u2_controller|address_counter[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|address_counter\(1));

-- Location: LCCOMB_X13_Y14_N28
\u2_controller|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Equal0~0_combout\ = (!\u2_controller|address_counter\(3) & (!\u2_controller|address_counter\(1) & (!\u2_controller|address_counter\(2) & !\u2_controller|address_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|address_counter\(3),
	datab => \u2_controller|address_counter\(1),
	datac => \u2_controller|address_counter\(2),
	datad => \u2_controller|address_counter\(0),
	combout => \u2_controller|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y18_N4
\u2_controller|generate_fsm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|generate_fsm~0_combout\ = ((\u2_controller|Equal0~0_combout\ & (\u2_controller|Equal0~2_combout\ & \u2_controller|Equal0~1_combout\))) # (!\u2_controller|u2|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|u2|Q~0_combout\,
	datab => \u2_controller|Equal0~0_combout\,
	datac => \u2_controller|Equal0~2_combout\,
	datad => \u2_controller|Equal0~1_combout\,
	combout => \u2_controller|generate_fsm~0_combout\);

-- Location: LCCOMB_X14_Y14_N28
\u2_controller|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Selector0~5_combout\ = (\u2_controller|Selector0~4_combout\) # ((\u2_controller|generate_fsm~0_combout\ & (\u2_controller|fsm_state.recive~regout\ & !\u1_uart|u1_UART_RX|DATA_VALID~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|Selector0~4_combout\,
	datab => \u2_controller|generate_fsm~0_combout\,
	datac => \u2_controller|fsm_state.recive~regout\,
	datad => \u1_uart|u1_UART_RX|DATA_VALID~regout\,
	combout => \u2_controller|Selector0~5_combout\);

-- Location: LCFF_X14_Y14_N29
\u2_controller|fsm_state.recive\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|Selector0~5_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|fsm_state.recive~regout\);

-- Location: LCCOMB_X14_Y14_N24
\u2_controller|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Selector1~2_combout\ = (\u2_controller|address_counter[1]~15_combout\) # ((\u2_controller|fsm_state.recive~regout\ & (!\u2_controller|generate_fsm~0_combout\ & !\u1_uart|u1_UART_RX|DATA_VALID~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|address_counter[1]~15_combout\,
	datab => \u2_controller|fsm_state.recive~regout\,
	datac => \u2_controller|generate_fsm~0_combout\,
	datad => \u1_uart|u1_UART_RX|DATA_VALID~regout\,
	combout => \u2_controller|Selector1~2_combout\);

-- Location: LCFF_X14_Y14_N25
\u2_controller|fsm_state.load_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|Selector1~2_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|fsm_state.load_data~regout\);

-- Location: LCCOMB_X14_Y14_N12
\u2_controller|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Selector5~0_combout\ = (\u2_controller|fsm_state.load_data~regout\) # ((\u2_controller|DATA_FROM_MEM_VALID~regout\ & ((\u2_controller|fsm_state.save_data~regout\) # (\u2_controller|fsm_state.recive~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.save_data~regout\,
	datab => \u2_controller|fsm_state.recive~regout\,
	datac => \u2_controller|DATA_FROM_MEM_VALID~regout\,
	datad => \u2_controller|fsm_state.load_data~regout\,
	combout => \u2_controller|Selector5~0_combout\);

-- Location: LCFF_X14_Y14_N13
\u2_controller|DATA_FROM_MEM_VALID\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|Selector5~0_combout\,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|DATA_FROM_MEM_VALID~regout\);

-- Location: LCCOMB_X14_Y13_N4
\u1_uart|u2_UART_TX|clk_counter[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\ = (\u2_controller|DATA_FROM_MEM_VALID~regout\) # ((!\u1_uart|u2_UART_TX|Equal0~0_combout\ & (!\u1_uart|u2_UART_TX|Equal0~2_combout\ & !\u1_uart|u2_UART_TX|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Equal0~0_combout\,
	datab => \u1_uart|u2_UART_TX|Equal0~2_combout\,
	datac => \u1_uart|u2_UART_TX|Equal0~1_combout\,
	datad => \u2_controller|DATA_FROM_MEM_VALID~regout\,
	combout => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\);

-- Location: LCFF_X13_Y13_N3
\u1_uart|u2_UART_TX|clk_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[0]~12_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(0));

-- Location: LCCOMB_X13_Y13_N4
\u1_uart|u2_UART_TX|clk_counter[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[1]~15_combout\ = (\u1_uart|u2_UART_TX|clk_counter\(1) & (!\u1_uart|u2_UART_TX|clk_counter[0]~13\)) # (!\u1_uart|u2_UART_TX|clk_counter\(1) & ((\u1_uart|u2_UART_TX|clk_counter[0]~13\) # (GND)))
-- \u1_uart|u2_UART_TX|clk_counter[1]~16\ = CARRY((!\u1_uart|u2_UART_TX|clk_counter[0]~13\) # (!\u1_uart|u2_UART_TX|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_UART_TX|clk_counter\(1),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|clk_counter[0]~13\,
	combout => \u1_uart|u2_UART_TX|clk_counter[1]~15_combout\,
	cout => \u1_uart|u2_UART_TX|clk_counter[1]~16\);

-- Location: LCFF_X13_Y13_N5
\u1_uart|u2_UART_TX|clk_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[1]~15_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(1));

-- Location: LCCOMB_X13_Y13_N8
\u1_uart|u2_UART_TX|clk_counter[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[3]~19_combout\ = (\u1_uart|u2_UART_TX|clk_counter\(3) & (!\u1_uart|u2_UART_TX|clk_counter[2]~18\)) # (!\u1_uart|u2_UART_TX|clk_counter\(3) & ((\u1_uart|u2_UART_TX|clk_counter[2]~18\) # (GND)))
-- \u1_uart|u2_UART_TX|clk_counter[3]~20\ = CARRY((!\u1_uart|u2_UART_TX|clk_counter[2]~18\) # (!\u1_uart|u2_UART_TX|clk_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_UART_TX|clk_counter\(3),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|clk_counter[2]~18\,
	combout => \u1_uart|u2_UART_TX|clk_counter[3]~19_combout\,
	cout => \u1_uart|u2_UART_TX|clk_counter[3]~20\);

-- Location: LCFF_X13_Y13_N9
\u1_uart|u2_UART_TX|clk_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[3]~19_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(3));

-- Location: LCCOMB_X13_Y13_N14
\u1_uart|u2_UART_TX|clk_counter[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[6]~25_combout\ = (\u1_uart|u2_UART_TX|clk_counter\(6) & (\u1_uart|u2_UART_TX|clk_counter[5]~24\ $ (GND))) # (!\u1_uart|u2_UART_TX|clk_counter\(6) & (!\u1_uart|u2_UART_TX|clk_counter[5]~24\ & VCC))
-- \u1_uart|u2_UART_TX|clk_counter[6]~26\ = CARRY((\u1_uart|u2_UART_TX|clk_counter\(6) & !\u1_uart|u2_UART_TX|clk_counter[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_UART_TX|clk_counter\(6),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|clk_counter[5]~24\,
	combout => \u1_uart|u2_UART_TX|clk_counter[6]~25_combout\,
	cout => \u1_uart|u2_UART_TX|clk_counter[6]~26\);

-- Location: LCFF_X13_Y13_N15
\u1_uart|u2_UART_TX|clk_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[6]~25_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(6));

-- Location: LCCOMB_X13_Y13_N18
\u1_uart|u2_UART_TX|clk_counter[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[8]~29_combout\ = (\u1_uart|u2_UART_TX|clk_counter\(8) & (\u1_uart|u2_UART_TX|clk_counter[7]~28\ $ (GND))) # (!\u1_uart|u2_UART_TX|clk_counter\(8) & (!\u1_uart|u2_UART_TX|clk_counter[7]~28\ & VCC))
-- \u1_uart|u2_UART_TX|clk_counter[8]~30\ = CARRY((\u1_uart|u2_UART_TX|clk_counter\(8) & !\u1_uart|u2_UART_TX|clk_counter[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_UART_TX|clk_counter\(8),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|clk_counter[7]~28\,
	combout => \u1_uart|u2_UART_TX|clk_counter[8]~29_combout\,
	cout => \u1_uart|u2_UART_TX|clk_counter[8]~30\);

-- Location: LCFF_X13_Y13_N19
\u1_uart|u2_UART_TX|clk_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[8]~29_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(8));

-- Location: LCCOMB_X13_Y13_N22
\u1_uart|u2_UART_TX|clk_counter[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[10]~33_combout\ = (\u1_uart|u2_UART_TX|clk_counter\(10) & (\u1_uart|u2_UART_TX|clk_counter[9]~32\ $ (GND))) # (!\u1_uart|u2_UART_TX|clk_counter\(10) & (!\u1_uart|u2_UART_TX|clk_counter[9]~32\ & VCC))
-- \u1_uart|u2_UART_TX|clk_counter[10]~34\ = CARRY((\u1_uart|u2_UART_TX|clk_counter\(10) & !\u1_uart|u2_UART_TX|clk_counter[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_UART_TX|clk_counter\(10),
	datad => VCC,
	cin => \u1_uart|u2_UART_TX|clk_counter[9]~32\,
	combout => \u1_uart|u2_UART_TX|clk_counter[10]~33_combout\,
	cout => \u1_uart|u2_UART_TX|clk_counter[10]~34\);

-- Location: LCFF_X13_Y13_N23
\u1_uart|u2_UART_TX|clk_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[10]~33_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(10));

-- Location: LCCOMB_X13_Y13_N24
\u1_uart|u2_UART_TX|clk_counter[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|clk_counter[11]~35_combout\ = \u1_uart|u2_UART_TX|clk_counter\(11) $ (\u1_uart|u2_UART_TX|clk_counter[10]~34\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|clk_counter\(11),
	cin => \u1_uart|u2_UART_TX|clk_counter[10]~34\,
	combout => \u1_uart|u2_UART_TX|clk_counter[11]~35_combout\);

-- Location: LCFF_X13_Y13_N25
\u1_uart|u2_UART_TX|clk_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|clk_counter[11]~35_combout\,
	aclr => \ALT_INV_RST~combout\,
	sclr => \u1_uart|u2_UART_TX|clk_counter[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|clk_counter\(11));

-- Location: LCCOMB_X13_Y13_N28
\u1_uart|u2_UART_TX|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Equal0~2_combout\ = ((\u1_uart|u2_UART_TX|clk_counter\(8)) # ((\u1_uart|u2_UART_TX|clk_counter\(10)) # (!\u1_uart|u2_UART_TX|clk_counter\(11)))) # (!\u1_uart|u2_UART_TX|clk_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|clk_counter\(9),
	datab => \u1_uart|u2_UART_TX|clk_counter\(8),
	datac => \u1_uart|u2_UART_TX|clk_counter\(11),
	datad => \u1_uart|u2_UART_TX|clk_counter\(10),
	combout => \u1_uart|u2_UART_TX|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y13_N2
\u1_uart|u2_UART_TX|t_bit_flg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|t_bit_flg~0_combout\ = (!\u1_uart|u2_UART_TX|Equal0~0_combout\ & (!\u1_uart|u2_UART_TX|Equal0~2_combout\ & (!\u1_uart|u2_UART_TX|Equal0~1_combout\ & !\u2_controller|DATA_FROM_MEM_VALID~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Equal0~0_combout\,
	datab => \u1_uart|u2_UART_TX|Equal0~2_combout\,
	datac => \u1_uart|u2_UART_TX|Equal0~1_combout\,
	datad => \u2_controller|DATA_FROM_MEM_VALID~regout\,
	combout => \u1_uart|u2_UART_TX|t_bit_flg~0_combout\);

-- Location: LCCOMB_X14_Y13_N8
\u1_uart|u2_UART_TX|t_bit_flg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|t_bit_flg~1_combout\ = (\u1_uart|u2_UART_TX|t_bit_flg~0_combout\) # ((\u1_uart|u2_UART_TX|t_bit_flg~regout\ & \u2_controller|DATA_FROM_MEM_VALID~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_UART_TX|t_bit_flg~0_combout\,
	datac => \u1_uart|u2_UART_TX|t_bit_flg~regout\,
	datad => \u2_controller|DATA_FROM_MEM_VALID~regout\,
	combout => \u1_uart|u2_UART_TX|t_bit_flg~1_combout\);

-- Location: LCFF_X14_Y13_N9
\u1_uart|u2_UART_TX|t_bit_flg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|t_bit_flg~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|t_bit_flg~regout\);

-- Location: LCCOMB_X14_Y13_N30
\u1_uart|u2_UART_TX|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Selector2~0_combout\ = (\u1_uart|u2_UART_TX|fsm_state.send_start_bit~regout\ & ((\u1_uart|u2_UART_TX|t_bit_flg~regout\) # ((!\u1_uart|u2_UART_TX|Tx_idx\(3) & \u1_uart|u2_UART_TX|fsm_state.send_data~regout\)))) # 
-- (!\u1_uart|u2_UART_TX|fsm_state.send_start_bit~regout\ & (!\u1_uart|u2_UART_TX|Tx_idx\(3) & (\u1_uart|u2_UART_TX|fsm_state.send_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|fsm_state.send_start_bit~regout\,
	datab => \u1_uart|u2_UART_TX|Tx_idx\(3),
	datac => \u1_uart|u2_UART_TX|fsm_state.send_data~regout\,
	datad => \u1_uart|u2_UART_TX|t_bit_flg~regout\,
	combout => \u1_uart|u2_UART_TX|Selector2~0_combout\);

-- Location: LCFF_X14_Y13_N31
\u1_uart|u2_UART_TX|fsm_state.send_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|Selector2~0_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|fsm_state.send_data~regout\);

-- Location: LCCOMB_X14_Y13_N18
\u1_uart|u2_UART_TX|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Selector3~0_combout\ = (\u1_uart|u2_UART_TX|Tx_idx\(3) & ((\u1_uart|u2_UART_TX|fsm_state.send_data~regout\) # ((\u1_uart|u2_UART_TX|fsm_state.send_end_bit~regout\ & !\u1_uart|u2_UART_TX|t_bit_flg~regout\)))) # 
-- (!\u1_uart|u2_UART_TX|Tx_idx\(3) & (((\u1_uart|u2_UART_TX|fsm_state.send_end_bit~regout\ & !\u1_uart|u2_UART_TX|t_bit_flg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Tx_idx\(3),
	datab => \u1_uart|u2_UART_TX|fsm_state.send_data~regout\,
	datac => \u1_uart|u2_UART_TX|fsm_state.send_end_bit~regout\,
	datad => \u1_uart|u2_UART_TX|t_bit_flg~regout\,
	combout => \u1_uart|u2_UART_TX|Selector3~0_combout\);

-- Location: LCFF_X14_Y13_N19
\u1_uart|u2_UART_TX|fsm_state.send_end_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|Selector3~0_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|fsm_state.send_end_bit~regout\);

-- Location: LCCOMB_X14_Y13_N22
\u1_uart|u2_UART_TX|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Selector0~1_combout\ = (\u1_uart|u2_UART_TX|fsm_state.send_end_bit~regout\ & \u1_uart|u2_UART_TX|t_bit_flg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1_uart|u2_UART_TX|fsm_state.send_end_bit~regout\,
	datad => \u1_uart|u2_UART_TX|t_bit_flg~regout\,
	combout => \u1_uart|u2_UART_TX|Selector0~1_combout\);

-- Location: LCFF_X14_Y13_N23
\u1_uart|u2_UART_TX|DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|Selector0~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|DONE~regout\);

-- Location: LCCOMB_X14_Y14_N8
\u2_controller|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Selector2~0_combout\ = (\u2_controller|fsm_state.load_data~regout\) # ((!\u1_uart|u2_UART_TX|DONE~regout\ & \u2_controller|fsm_state.transmit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.load_data~regout\,
	datab => \u1_uart|u2_UART_TX|DONE~regout\,
	datac => \u2_controller|fsm_state.transmit~regout\,
	combout => \u2_controller|Selector2~0_combout\);

-- Location: LCFF_X14_Y14_N9
\u2_controller|fsm_state.transmit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|Selector2~0_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|fsm_state.transmit~regout\);

-- Location: LCCOMB_X14_Y14_N6
\u2_controller|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Selector3~0_combout\ = ((!\u1_uart|u1_UART_RX|DATA_VALID~regout\ & ((!\u2_controller|generate_fsm~0_combout\) # (!\u2_controller|sram_we_n_sig~regout\)))) # (!\u2_controller|fsm_state.recive~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|sram_we_n_sig~regout\,
	datab => \u2_controller|fsm_state.recive~regout\,
	datac => \u2_controller|generate_fsm~0_combout\,
	datad => \u1_uart|u1_UART_RX|DATA_VALID~regout\,
	combout => \u2_controller|Selector3~0_combout\);

-- Location: LCCOMB_X14_Y14_N0
\u2_controller|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Selector3~1_combout\ = ((\u2_controller|sram_we_n_sig~regout\ & ((\u2_controller|fsm_state.load_data~regout\) # (\u2_controller|fsm_state.transmit~regout\)))) # (!\u2_controller|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|fsm_state.load_data~regout\,
	datab => \u2_controller|fsm_state.transmit~regout\,
	datac => \u2_controller|sram_we_n_sig~regout\,
	datad => \u2_controller|Selector3~0_combout\,
	combout => \u2_controller|Selector3~1_combout\);

-- Location: LCFF_X14_Y14_N1
\u2_controller|sram_we_n_sig\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|Selector3~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|sram_we_n_sig~regout\);

-- Location: LCCOMB_X14_Y14_N2
\u2_controller|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|Selector4~1_combout\ = (\u2_controller|sram_oe_n_sig~regout\ & (((\u2_controller|Selector0~2_combout\)) # (!\u2_controller|Selector4~0_combout\))) # (!\u2_controller|sram_oe_n_sig~regout\ & (((!\u2_controller|generate_fsm~0_combout\ & 
-- \u2_controller|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2_controller|Selector4~0_combout\,
	datab => \u2_controller|generate_fsm~0_combout\,
	datac => \u2_controller|sram_oe_n_sig~regout\,
	datad => \u2_controller|Selector0~2_combout\,
	combout => \u2_controller|Selector4~1_combout\);

-- Location: LCFF_X14_Y14_N3
\u2_controller|sram_oe_n_sig\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|Selector4~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|sram_oe_n_sig~regout\);

-- Location: LCCOMB_X14_Y1_N2
\u2_controller|SRAM_DQ~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|SRAM_DQ~16_combout\ = (\u2_controller|sram_we_n_sig~regout\ & !\u2_controller|sram_oe_n_sig~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|sram_we_n_sig~regout\,
	datad => \u2_controller|sram_oe_n_sig~regout\,
	combout => \u2_controller|SRAM_DQ~16_combout\);

-- Location: LCCOMB_X15_Y8_N28
\u1_uart|u1_UART_RX|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Decoder0~2_combout\ = (!\u1_uart|u1_UART_RX|Rx_idx\(2) & (!\u1_uart|u1_UART_RX|Rx_idx\(1) & (\u1_uart|u1_UART_RX|Rx_idx\(0) & \u1_uart|u1_UART_RX|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(2),
	datab => \u1_uart|u1_UART_RX|Rx_idx\(1),
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Decoder0~0_combout\,
	combout => \u1_uart|u1_UART_RX|Decoder0~2_combout\);

-- Location: LCCOMB_X16_Y8_N30
\u1_uart|u1_UART_RX|DATA[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|DATA[1]~1_combout\ = (\u1_uart|u1_UART_RX|Decoder0~2_combout\ & (\u1_uart|u1_UART_RX|u1|a_d2~regout\)) # (!\u1_uart|u1_UART_RX|Decoder0~2_combout\ & ((\u1_uart|u1_UART_RX|DATA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datab => \u1_uart|u1_UART_RX|Decoder0~2_combout\,
	datac => \u1_uart|u1_UART_RX|DATA\(1),
	combout => \u1_uart|u1_UART_RX|DATA[1]~1_combout\);

-- Location: LCFF_X16_Y8_N31
\u1_uart|u1_UART_RX|DATA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|DATA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|DATA\(1));

-- Location: LCCOMB_X15_Y8_N6
\u1_uart|u1_UART_RX|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Decoder0~3_combout\ = (!\u1_uart|u1_UART_RX|Rx_idx\(2) & (\u1_uart|u1_UART_RX|Rx_idx\(1) & (!\u1_uart|u1_UART_RX|Rx_idx\(0) & \u1_uart|u1_UART_RX|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(2),
	datab => \u1_uart|u1_UART_RX|Rx_idx\(1),
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Decoder0~0_combout\,
	combout => \u1_uart|u1_UART_RX|Decoder0~3_combout\);

-- Location: LCCOMB_X16_Y8_N0
\u1_uart|u1_UART_RX|DATA[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|DATA[2]~2_combout\ = (\u1_uart|u1_UART_RX|Decoder0~3_combout\ & (\u1_uart|u1_UART_RX|u1|a_d2~regout\)) # (!\u1_uart|u1_UART_RX|Decoder0~3_combout\ & ((\u1_uart|u1_UART_RX|DATA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datab => \u1_uart|u1_UART_RX|Decoder0~3_combout\,
	datac => \u1_uart|u1_UART_RX|DATA\(2),
	combout => \u1_uart|u1_UART_RX|DATA[2]~2_combout\);

-- Location: LCFF_X16_Y8_N1
\u1_uart|u1_UART_RX|DATA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|DATA[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|DATA\(2));

-- Location: LCCOMB_X15_Y8_N16
\u1_uart|u1_UART_RX|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Decoder0~4_combout\ = (!\u1_uart|u1_UART_RX|Rx_idx\(2) & (\u1_uart|u1_UART_RX|Rx_idx\(1) & (\u1_uart|u1_UART_RX|Rx_idx\(0) & \u1_uart|u1_UART_RX|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(2),
	datab => \u1_uart|u1_UART_RX|Rx_idx\(1),
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Decoder0~0_combout\,
	combout => \u1_uart|u1_UART_RX|Decoder0~4_combout\);

-- Location: LCCOMB_X16_Y8_N10
\u1_uart|u1_UART_RX|DATA[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|DATA[3]~3_combout\ = (\u1_uart|u1_UART_RX|Decoder0~4_combout\ & (\u1_uart|u1_UART_RX|u1|a_d2~regout\)) # (!\u1_uart|u1_UART_RX|Decoder0~4_combout\ & ((\u1_uart|u1_UART_RX|DATA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datab => \u1_uart|u1_UART_RX|Decoder0~4_combout\,
	datac => \u1_uart|u1_UART_RX|DATA\(3),
	combout => \u1_uart|u1_UART_RX|DATA[3]~3_combout\);

-- Location: LCFF_X16_Y8_N11
\u1_uart|u1_UART_RX|DATA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|DATA[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|DATA\(3));

-- Location: LCCOMB_X15_Y8_N18
\u1_uart|u1_UART_RX|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Decoder0~5_combout\ = (\u1_uart|u1_UART_RX|Rx_idx\(2) & (!\u1_uart|u1_UART_RX|Rx_idx\(1) & (!\u1_uart|u1_UART_RX|Rx_idx\(0) & \u1_uart|u1_UART_RX|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(2),
	datab => \u1_uart|u1_UART_RX|Rx_idx\(1),
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Decoder0~0_combout\,
	combout => \u1_uart|u1_UART_RX|Decoder0~5_combout\);

-- Location: LCCOMB_X16_Y8_N28
\u1_uart|u1_UART_RX|DATA[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|DATA[4]~4_combout\ = (\u1_uart|u1_UART_RX|Decoder0~5_combout\ & (\u1_uart|u1_UART_RX|u1|a_d2~regout\)) # (!\u1_uart|u1_UART_RX|Decoder0~5_combout\ & ((\u1_uart|u1_UART_RX|DATA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datab => \u1_uart|u1_UART_RX|Decoder0~5_combout\,
	datac => \u1_uart|u1_UART_RX|DATA\(4),
	combout => \u1_uart|u1_UART_RX|DATA[4]~4_combout\);

-- Location: LCFF_X16_Y8_N29
\u1_uart|u1_UART_RX|DATA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|DATA[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|DATA\(4));

-- Location: LCCOMB_X15_Y8_N12
\u1_uart|u1_UART_RX|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Decoder0~6_combout\ = (\u1_uart|u1_UART_RX|Rx_idx\(2) & (!\u1_uart|u1_UART_RX|Rx_idx\(1) & (\u1_uart|u1_UART_RX|Rx_idx\(0) & \u1_uart|u1_UART_RX|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(2),
	datab => \u1_uart|u1_UART_RX|Rx_idx\(1),
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Decoder0~0_combout\,
	combout => \u1_uart|u1_UART_RX|Decoder0~6_combout\);

-- Location: LCCOMB_X16_Y8_N22
\u1_uart|u1_UART_RX|DATA[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|DATA[5]~5_combout\ = (\u1_uart|u1_UART_RX|Decoder0~6_combout\ & (\u1_uart|u1_UART_RX|u1|a_d2~regout\)) # (!\u1_uart|u1_UART_RX|Decoder0~6_combout\ & ((\u1_uart|u1_UART_RX|DATA\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datac => \u1_uart|u1_UART_RX|DATA\(5),
	datad => \u1_uart|u1_UART_RX|Decoder0~6_combout\,
	combout => \u1_uart|u1_UART_RX|DATA[5]~5_combout\);

-- Location: LCFF_X16_Y8_N23
\u1_uart|u1_UART_RX|DATA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|DATA[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|DATA\(5));

-- Location: LCCOMB_X15_Y8_N14
\u1_uart|u1_UART_RX|Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Decoder0~7_combout\ = (\u1_uart|u1_UART_RX|Rx_idx\(2) & (\u1_uart|u1_UART_RX|Rx_idx\(1) & (!\u1_uart|u1_UART_RX|Rx_idx\(0) & \u1_uart|u1_UART_RX|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(2),
	datab => \u1_uart|u1_UART_RX|Rx_idx\(1),
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Decoder0~0_combout\,
	combout => \u1_uart|u1_UART_RX|Decoder0~7_combout\);

-- Location: LCCOMB_X16_Y8_N16
\u1_uart|u1_UART_RX|DATA[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|DATA[6]~6_combout\ = (\u1_uart|u1_UART_RX|Decoder0~7_combout\ & (\u1_uart|u1_UART_RX|u1|a_d2~regout\)) # (!\u1_uart|u1_UART_RX|Decoder0~7_combout\ & ((\u1_uart|u1_UART_RX|DATA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datac => \u1_uart|u1_UART_RX|DATA\(6),
	datad => \u1_uart|u1_UART_RX|Decoder0~7_combout\,
	combout => \u1_uart|u1_UART_RX|DATA[6]~6_combout\);

-- Location: LCFF_X16_Y8_N17
\u1_uart|u1_UART_RX|DATA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|DATA[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|DATA\(6));

-- Location: LCCOMB_X15_Y8_N8
\u1_uart|u1_UART_RX|Decoder0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|Decoder0~8_combout\ = (\u1_uart|u1_UART_RX|Rx_idx\(2) & (\u1_uart|u1_UART_RX|Rx_idx\(1) & (\u1_uart|u1_UART_RX|Rx_idx\(0) & \u1_uart|u1_UART_RX|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|Rx_idx\(2),
	datab => \u1_uart|u1_UART_RX|Rx_idx\(1),
	datac => \u1_uart|u1_UART_RX|Rx_idx\(0),
	datad => \u1_uart|u1_UART_RX|Decoder0~0_combout\,
	combout => \u1_uart|u1_UART_RX|Decoder0~8_combout\);

-- Location: LCCOMB_X16_Y8_N18
\u1_uart|u1_UART_RX|DATA[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u1_UART_RX|DATA[7]~7_combout\ = (\u1_uart|u1_UART_RX|Decoder0~8_combout\ & (\u1_uart|u1_UART_RX|u1|a_d2~regout\)) # (!\u1_uart|u1_UART_RX|Decoder0~8_combout\ & ((\u1_uart|u1_UART_RX|DATA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u1_UART_RX|u1|a_d2~regout\,
	datac => \u1_uart|u1_UART_RX|DATA\(7),
	datad => \u1_uart|u1_UART_RX|Decoder0~8_combout\,
	combout => \u1_uart|u1_UART_RX|DATA[7]~7_combout\);

-- Location: LCFF_X16_Y8_N19
\u1_uart|u1_UART_RX|DATA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u1_UART_RX|DATA[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u1_UART_RX|DATA\(7));

-- Location: LCFF_X14_Y1_N11
\u1_uart|u2_UART_TX|Tx_idx[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|Tx_idx[1]~6_combout\,
	sclr => \u1_uart|u2_UART_TX|Tx_idx\(3),
	ena => \u1_uart|u2_UART_TX|Tx_idx[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|Tx_idx\(1));

-- Location: LCCOMB_X14_Y1_N26
\u1_uart|u2_UART_TX|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Mux0~5_combout\ = (\u1_uart|u2_UART_TX|Tx_idx\(1) & (((\u1_uart|u2_UART_TX|Tx_idx\(0))))) # (!\u1_uart|u2_UART_TX|Tx_idx\(1) & (((\SRAM_DQ[1]~1\ & \u1_uart|u2_UART_TX|Tx_idx\(0))) # (!\u1_uart|u2_UART_TX|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Mux0~4_combout\,
	datab => \SRAM_DQ[1]~1\,
	datac => \u1_uart|u2_UART_TX|Tx_idx\(0),
	datad => \u1_uart|u2_UART_TX|Tx_idx\(1),
	combout => \u1_uart|u2_UART_TX|Mux0~5_combout\);

-- Location: LCCOMB_X14_Y1_N28
\u1_uart|u2_UART_TX|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Mux0~6_combout\ = (\u2_controller|sram_oe_n_sig~regout\ & ((\u1_uart|u2_UART_TX|Mux0~5_combout\ & (!\SRAM_DQ[3]~3\)) # (!\u1_uart|u2_UART_TX|Mux0~5_combout\ & ((!\SRAM_DQ[2]~2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[3]~3\,
	datab => \u1_uart|u2_UART_TX|Mux0~5_combout\,
	datac => \SRAM_DQ[2]~2\,
	datad => \u2_controller|sram_oe_n_sig~regout\,
	combout => \u1_uart|u2_UART_TX|Mux0~6_combout\);

-- Location: LCCOMB_X14_Y1_N30
\u1_uart|u2_UART_TX|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Mux0~7_combout\ = (\u1_uart|u2_UART_TX|Tx_idx\(1) & (((\u2_controller|sram_we_n_sig~regout\) # (!\u1_uart|u2_UART_TX|Mux0~6_combout\)))) # (!\u1_uart|u2_UART_TX|Tx_idx\(1) & (\u1_uart|u2_UART_TX|Mux0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Tx_idx\(1),
	datab => \u1_uart|u2_UART_TX|Mux0~5_combout\,
	datac => \u2_controller|sram_we_n_sig~regout\,
	datad => \u1_uart|u2_UART_TX|Mux0~6_combout\,
	combout => \u1_uart|u2_UART_TX|Mux0~7_combout\);

-- Location: LCCOMB_X14_Y1_N0
\u1_uart|u2_UART_TX|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Mux0~0_combout\ = (!\u2_controller|sram_we_n_sig~regout\ & (\u2_controller|sram_oe_n_sig~regout\ & ((\u1_uart|u2_UART_TX|Tx_idx\(1)) # (!\SRAM_DQ[4]~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Tx_idx\(1),
	datab => \u2_controller|sram_we_n_sig~regout\,
	datac => \SRAM_DQ[4]~4\,
	datad => \u2_controller|sram_oe_n_sig~regout\,
	combout => \u1_uart|u2_UART_TX|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y1_N18
\u1_uart|u2_UART_TX|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Mux0~1_combout\ = (\u1_uart|u2_UART_TX|Tx_idx\(0) & (\u1_uart|u2_UART_TX|Tx_idx\(1))) # (!\u1_uart|u2_UART_TX|Tx_idx\(0) & (((\u1_uart|u2_UART_TX|Tx_idx\(1) & \SRAM_DQ[6]~6\)) # (!\u1_uart|u2_UART_TX|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Tx_idx\(1),
	datab => \u1_uart|u2_UART_TX|Tx_idx\(0),
	datac => \SRAM_DQ[6]~6\,
	datad => \u1_uart|u2_UART_TX|Mux0~0_combout\,
	combout => \u1_uart|u2_UART_TX|Mux0~1_combout\);

-- Location: LCCOMB_X14_Y1_N22
\u1_uart|u2_UART_TX|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Mux0~3_combout\ = (\u1_uart|u2_UART_TX|Tx_idx\(0) & (((\u2_controller|sram_we_n_sig~regout\)) # (!\u1_uart|u2_UART_TX|Mux0~2_combout\))) # (!\u1_uart|u2_UART_TX|Tx_idx\(0) & (((\u1_uart|u2_UART_TX|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Mux0~2_combout\,
	datab => \u1_uart|u2_UART_TX|Mux0~1_combout\,
	datac => \u1_uart|u2_UART_TX|Tx_idx\(0),
	datad => \u2_controller|sram_we_n_sig~regout\,
	combout => \u1_uart|u2_UART_TX|Mux0~3_combout\);

-- Location: LCCOMB_X14_Y1_N16
\u1_uart|u2_UART_TX|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Selector4~0_combout\ = (\u1_uart|u2_UART_TX|Tx_idx\(2) & ((\u1_uart|u2_UART_TX|Mux0~3_combout\))) # (!\u1_uart|u2_UART_TX|Tx_idx\(2) & (\u1_uart|u2_UART_TX|Mux0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Tx_idx\(2),
	datab => \u1_uart|u2_UART_TX|Mux0~7_combout\,
	datad => \u1_uart|u2_UART_TX|Mux0~3_combout\,
	combout => \u1_uart|u2_UART_TX|Selector4~0_combout\);

-- Location: LCCOMB_X14_Y13_N16
\u1_uart|u2_UART_TX|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Selector4~1_combout\ = (\u1_uart|u2_UART_TX|Tx_idx\(3) & ((!\u1_uart|u2_UART_TX|TX~regout\))) # (!\u1_uart|u2_UART_TX|Tx_idx\(3) & (\u1_uart|u2_UART_TX|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|Tx_idx\(3),
	datac => \u1_uart|u2_UART_TX|Selector4~0_combout\,
	datad => \u1_uart|u2_UART_TX|TX~regout\,
	combout => \u1_uart|u2_UART_TX|Selector4~1_combout\);

-- Location: LCCOMB_X14_Y13_N28
\u1_uart|u2_UART_TX|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Selector0~0_combout\ = (\u1_uart|u2_UART_TX|t_bit_flg~regout\ & (!\u1_uart|u2_UART_TX|fsm_state.send_end_bit~regout\ & ((\u1_uart|u2_UART_TX|fsm_state.idle~regout\) # (\u2_controller|DATA_FROM_MEM_VALID~regout\)))) # 
-- (!\u1_uart|u2_UART_TX|t_bit_flg~regout\ & (((\u1_uart|u2_UART_TX|fsm_state.idle~regout\) # (\u2_controller|DATA_FROM_MEM_VALID~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|t_bit_flg~regout\,
	datab => \u1_uart|u2_UART_TX|fsm_state.send_end_bit~regout\,
	datac => \u1_uart|u2_UART_TX|fsm_state.idle~regout\,
	datad => \u2_controller|DATA_FROM_MEM_VALID~regout\,
	combout => \u1_uart|u2_UART_TX|Selector0~0_combout\);

-- Location: LCFF_X14_Y13_N29
\u1_uart|u2_UART_TX|fsm_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|Selector0~0_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|fsm_state.idle~regout\);

-- Location: LCCOMB_X14_Y13_N0
\u1_uart|u2_UART_TX|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1_uart|u2_UART_TX|Selector4~2_combout\ = (!\u1_uart|u2_UART_TX|fsm_state.send_end_bit~regout\ & (\u1_uart|u2_UART_TX|fsm_state.idle~regout\ & ((!\u1_uart|u2_UART_TX|Selector4~1_combout\) # (!\u1_uart|u2_UART_TX|fsm_state.send_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1_uart|u2_UART_TX|fsm_state.send_data~regout\,
	datab => \u1_uart|u2_UART_TX|fsm_state.send_end_bit~regout\,
	datac => \u1_uart|u2_UART_TX|Selector4~1_combout\,
	datad => \u1_uart|u2_UART_TX|fsm_state.idle~regout\,
	combout => \u1_uart|u2_UART_TX|Selector4~2_combout\);

-- Location: LCFF_X14_Y13_N1
\u1_uart|u2_UART_TX|TX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1_uart|u2_UART_TX|Selector4~2_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1_uart|u2_UART_TX|TX~regout\);

-- Location: LCCOMB_X14_Y14_N16
\u2_controller|fsm_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|fsm_state~10_combout\ = (\u2_controller|fsm_state.recive~regout\ & \u1_uart|u1_UART_RX|DATA_VALID~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|fsm_state.recive~regout\,
	datad => \u1_uart|u1_UART_RX|DATA_VALID~regout\,
	combout => \u2_controller|fsm_state~10_combout\);

-- Location: LCFF_X14_Y14_N17
\u2_controller|fsm_state.save_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|fsm_state~10_combout\,
	aclr => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|fsm_state.save_data~regout\);

-- Location: LCCOMB_X14_Y14_N20
\u2_controller|DATA_FROM_MEM_VALID~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2_controller|DATA_FROM_MEM_VALID~0_combout\ = (\u2_controller|fsm_state.recive~regout\) # (\u2_controller|fsm_state.save_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2_controller|fsm_state.recive~regout\,
	datac => \u2_controller|fsm_state.save_data~regout\,
	combout => \u2_controller|DATA_FROM_MEM_VALID~0_combout\);

-- Location: LCFF_X14_Y14_N21
\u2_controller|LED2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2_controller|DATA_FROM_MEM_VALID~0_combout\,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|LED2~regout\);

-- Location: LCFF_X14_Y14_N15
\u2_controller|LED3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|fsm_state.transmit~regout\,
	sload => VCC,
	ena => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2_controller|LED3~regout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MODE~I\ : cycloneii_io
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
	padio => ww_MODE,
	combout => \MODE~combout\);

-- Location: LCFF_X2_Y18_N9
\u3_bin2bcd|reg_in[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|address_counter\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(3));

-- Location: LCFF_X13_Y18_N7
\u3_bin2bcd|reg_in[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|address_counter\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(9));

-- Location: LCFF_X13_Y18_N1
\u3_bin2bcd|reg_in[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|address_counter\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(8));

-- Location: LCFF_X13_Y18_N3
\u3_bin2bcd|reg_in[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|address_counter\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(11));

-- Location: LCCOMB_X13_Y18_N0
\u3_bin2bcd|BCD~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~17_combout\ = (\u3_bin2bcd|reg_in\(10) & (!\u3_bin2bcd|reg_in\(8) & (\u3_bin2bcd|reg_in\(9) $ (!\u3_bin2bcd|reg_in\(11))))) # (!\u3_bin2bcd|reg_in\(10) & (!\u3_bin2bcd|reg_in\(9) & (\u3_bin2bcd|reg_in\(8) & \u3_bin2bcd|reg_in\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(10),
	datab => \u3_bin2bcd|reg_in\(9),
	datac => \u3_bin2bcd|reg_in\(8),
	datad => \u3_bin2bcd|reg_in\(11),
	combout => \u3_bin2bcd|BCD~17_combout\);

-- Location: LCFF_X13_Y18_N19
\u3_bin2bcd|reg_in[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|address_counter\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(7));

-- Location: LCCOMB_X13_Y18_N6
\u3_bin2bcd|BCD~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~19_combout\ = (\u3_bin2bcd|reg_in\(9) & (!\u3_bin2bcd|reg_in\(11) & ((\u3_bin2bcd|reg_in\(8)) # (!\u3_bin2bcd|reg_in\(10))))) # (!\u3_bin2bcd|reg_in\(9) & (\u3_bin2bcd|reg_in\(11) & ((\u3_bin2bcd|reg_in\(10)) # (!\u3_bin2bcd|reg_in\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(10),
	datab => \u3_bin2bcd|reg_in\(8),
	datac => \u3_bin2bcd|reg_in\(9),
	datad => \u3_bin2bcd|reg_in\(11),
	combout => \u3_bin2bcd|BCD~19_combout\);

-- Location: LCCOMB_X13_Y18_N18
\u3_bin2bcd|BCD~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~21_combout\ = (\u3_bin2bcd|BCD~17_combout\ & (((!\u3_bin2bcd|reg_in\(7))))) # (!\u3_bin2bcd|BCD~17_combout\ & ((\u3_bin2bcd|reg_in\(7) & ((!\u3_bin2bcd|BCD~19_combout\))) # (!\u3_bin2bcd|reg_in\(7) & (\u3_bin2bcd|BCD~18_combout\ & 
-- \u3_bin2bcd|BCD~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~18_combout\,
	datab => \u3_bin2bcd|BCD~17_combout\,
	datac => \u3_bin2bcd|reg_in\(7),
	datad => \u3_bin2bcd|BCD~19_combout\,
	combout => \u3_bin2bcd|BCD~21_combout\);

-- Location: LCCOMB_X13_Y18_N4
\u3_bin2bcd|BCD~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~20_combout\ = (\u3_bin2bcd|BCD~19_combout\ & (!\u3_bin2bcd|BCD~18_combout\ & (!\u3_bin2bcd|reg_in\(7)))) # (!\u3_bin2bcd|BCD~19_combout\ & (\u3_bin2bcd|BCD~17_combout\ & ((\u3_bin2bcd|BCD~18_combout\) # (\u3_bin2bcd|reg_in\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~18_combout\,
	datab => \u3_bin2bcd|reg_in\(7),
	datac => \u3_bin2bcd|BCD~17_combout\,
	datad => \u3_bin2bcd|BCD~19_combout\,
	combout => \u3_bin2bcd|BCD~20_combout\);

-- Location: LCCOMB_X13_Y18_N22
\u3_bin2bcd|BCD~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~22_combout\ = (\u3_bin2bcd|BCD~18_combout\ & ((\u3_bin2bcd|reg_in\(7)) # ((!\u3_bin2bcd|BCD~17_combout\ & !\u3_bin2bcd|BCD~19_combout\)))) # (!\u3_bin2bcd|BCD~18_combout\ & (!\u3_bin2bcd|reg_in\(7) & (\u3_bin2bcd|BCD~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~18_combout\,
	datab => \u3_bin2bcd|reg_in\(7),
	datac => \u3_bin2bcd|BCD~17_combout\,
	datad => \u3_bin2bcd|BCD~19_combout\,
	combout => \u3_bin2bcd|BCD~22_combout\);

-- Location: LCCOMB_X14_Y18_N30
\u3_bin2bcd|BCD~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~25_combout\ = (\u3_bin2bcd|reg_in\(6) & (\u3_bin2bcd|BCD~21_combout\)) # (!\u3_bin2bcd|reg_in\(6) & ((\u3_bin2bcd|BCD~21_combout\ & (!\u3_bin2bcd|BCD~20_combout\ & !\u3_bin2bcd|BCD~22_combout\)) # (!\u3_bin2bcd|BCD~21_combout\ & 
-- (\u3_bin2bcd|BCD~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(6),
	datab => \u3_bin2bcd|BCD~21_combout\,
	datac => \u3_bin2bcd|BCD~20_combout\,
	datad => \u3_bin2bcd|BCD~22_combout\,
	combout => \u3_bin2bcd|BCD~25_combout\);

-- Location: LCFF_X14_Y18_N29
\u3_bin2bcd|reg_in[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|address_counter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(5));

-- Location: LCFF_X14_Y18_N25
\u3_bin2bcd|reg_in[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|address_counter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(6));

-- Location: LCCOMB_X14_Y18_N24
\u3_bin2bcd|BCD~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~24_combout\ = (\u3_bin2bcd|BCD~22_combout\ & (!\u3_bin2bcd|reg_in\(6) & ((\u3_bin2bcd|BCD~20_combout\) # (\u3_bin2bcd|BCD~21_combout\)))) # (!\u3_bin2bcd|BCD~22_combout\ & (\u3_bin2bcd|BCD~20_combout\ $ ((\u3_bin2bcd|reg_in\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~22_combout\,
	datab => \u3_bin2bcd|BCD~20_combout\,
	datac => \u3_bin2bcd|reg_in\(6),
	datad => \u3_bin2bcd|BCD~21_combout\,
	combout => \u3_bin2bcd|BCD~24_combout\);

-- Location: LCCOMB_X14_Y18_N0
\u3_bin2bcd|BCD~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~26_combout\ = (\u3_bin2bcd|BCD~25_combout\ & (((!\u3_bin2bcd|reg_in\(5) & !\u3_bin2bcd|BCD~24_combout\)))) # (!\u3_bin2bcd|BCD~25_combout\ & (\u3_bin2bcd|BCD~23_combout\ & ((\u3_bin2bcd|reg_in\(5)) # (\u3_bin2bcd|BCD~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~23_combout\,
	datab => \u3_bin2bcd|BCD~25_combout\,
	datac => \u3_bin2bcd|reg_in\(5),
	datad => \u3_bin2bcd|BCD~24_combout\,
	combout => \u3_bin2bcd|BCD~26_combout\);

-- Location: LCFF_X14_Y18_N3
\u3_bin2bcd|reg_in[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|address_counter\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(4));

-- Location: LCCOMB_X14_Y18_N12
\u3_bin2bcd|BCD~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~28_combout\ = (\u3_bin2bcd|BCD~23_combout\ & ((\u3_bin2bcd|reg_in\(5) $ (!\u3_bin2bcd|BCD~24_combout\)))) # (!\u3_bin2bcd|BCD~23_combout\ & (\u3_bin2bcd|BCD~24_combout\ & ((\u3_bin2bcd|reg_in\(5)) # (!\u3_bin2bcd|BCD~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~23_combout\,
	datab => \u3_bin2bcd|BCD~25_combout\,
	datac => \u3_bin2bcd|reg_in\(5),
	datad => \u3_bin2bcd|BCD~24_combout\,
	combout => \u3_bin2bcd|BCD~28_combout\);

-- Location: LCCOMB_X14_Y18_N8
\u3_bin2bcd|BCD~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~30_combout\ = (\u3_bin2bcd|BCD~26_combout\ & (((!\u3_bin2bcd|reg_in\(4))))) # (!\u3_bin2bcd|BCD~26_combout\ & ((\u3_bin2bcd|reg_in\(4) & ((!\u3_bin2bcd|BCD~28_combout\))) # (!\u3_bin2bcd|reg_in\(4) & (\u3_bin2bcd|BCD~27_combout\ & 
-- \u3_bin2bcd|BCD~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~27_combout\,
	datab => \u3_bin2bcd|BCD~26_combout\,
	datac => \u3_bin2bcd|reg_in\(4),
	datad => \u3_bin2bcd|BCD~28_combout\,
	combout => \u3_bin2bcd|BCD~30_combout\);

-- Location: LCCOMB_X14_Y18_N26
\u3_bin2bcd|BCD~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~31_combout\ = (\u3_bin2bcd|BCD~27_combout\ & ((\u3_bin2bcd|reg_in\(4)) # ((!\u3_bin2bcd|BCD~26_combout\ & !\u3_bin2bcd|BCD~28_combout\)))) # (!\u3_bin2bcd|BCD~27_combout\ & (\u3_bin2bcd|BCD~26_combout\ & (!\u3_bin2bcd|reg_in\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~27_combout\,
	datab => \u3_bin2bcd|BCD~26_combout\,
	datac => \u3_bin2bcd|reg_in\(4),
	datad => \u3_bin2bcd|BCD~28_combout\,
	combout => \u3_bin2bcd|BCD~31_combout\);

-- Location: LCCOMB_X2_Y18_N18
\u3_bin2bcd|BCD~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~32_combout\ = (\u3_bin2bcd|BCD~31_combout\ & (((!\u3_bin2bcd|reg_in\(3) & !\u3_bin2bcd|BCD~30_combout\)))) # (!\u3_bin2bcd|BCD~31_combout\ & (\u3_bin2bcd|BCD~29_combout\ & ((\u3_bin2bcd|reg_in\(3)) # (\u3_bin2bcd|BCD~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~29_combout\,
	datab => \u3_bin2bcd|reg_in\(3),
	datac => \u3_bin2bcd|BCD~30_combout\,
	datad => \u3_bin2bcd|BCD~31_combout\,
	combout => \u3_bin2bcd|BCD~32_combout\);

-- Location: LCFF_X2_Y18_N21
\u3_bin2bcd|reg_in[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|address_counter\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(2));

-- Location: LCCOMB_X2_Y18_N0
\u3_bin2bcd|BCD~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~34_combout\ = (\u3_bin2bcd|BCD~29_combout\ & (\u3_bin2bcd|reg_in\(3) $ ((!\u3_bin2bcd|BCD~30_combout\)))) # (!\u3_bin2bcd|BCD~29_combout\ & (\u3_bin2bcd|BCD~30_combout\ & ((\u3_bin2bcd|reg_in\(3)) # (!\u3_bin2bcd|BCD~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~29_combout\,
	datab => \u3_bin2bcd|reg_in\(3),
	datac => \u3_bin2bcd|BCD~30_combout\,
	datad => \u3_bin2bcd|BCD~31_combout\,
	combout => \u3_bin2bcd|BCD~34_combout\);

-- Location: LCCOMB_X2_Y18_N26
\u3_bin2bcd|BCD~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~35_combout\ = (\u3_bin2bcd|BCD~34_combout\ & (!\u3_bin2bcd|BCD~33_combout\ & ((!\u3_bin2bcd|reg_in\(2))))) # (!\u3_bin2bcd|BCD~34_combout\ & (\u3_bin2bcd|BCD~32_combout\ & ((\u3_bin2bcd|BCD~33_combout\) # (\u3_bin2bcd|reg_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~33_combout\,
	datab => \u3_bin2bcd|BCD~32_combout\,
	datac => \u3_bin2bcd|reg_in\(2),
	datad => \u3_bin2bcd|BCD~34_combout\,
	combout => \u3_bin2bcd|BCD~35_combout\);

-- Location: LCCOMB_X2_Y18_N16
\u3_bin2bcd|BCD~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~37_combout\ = (\u3_bin2bcd|BCD~33_combout\ & ((\u3_bin2bcd|reg_in\(2)) # ((!\u3_bin2bcd|BCD~32_combout\ & !\u3_bin2bcd|BCD~34_combout\)))) # (!\u3_bin2bcd|BCD~33_combout\ & (\u3_bin2bcd|BCD~32_combout\ & (!\u3_bin2bcd|reg_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~33_combout\,
	datab => \u3_bin2bcd|BCD~32_combout\,
	datac => \u3_bin2bcd|reg_in\(2),
	datad => \u3_bin2bcd|BCD~34_combout\,
	combout => \u3_bin2bcd|BCD~37_combout\);

-- Location: LCCOMB_X2_Y18_N22
\u3_bin2bcd|BCD~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~36_combout\ = (\u3_bin2bcd|BCD~32_combout\ & (((!\u3_bin2bcd|reg_in\(2))))) # (!\u3_bin2bcd|BCD~32_combout\ & ((\u3_bin2bcd|reg_in\(2) & ((!\u3_bin2bcd|BCD~34_combout\))) # (!\u3_bin2bcd|reg_in\(2) & (\u3_bin2bcd|BCD~33_combout\ & 
-- \u3_bin2bcd|BCD~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~33_combout\,
	datab => \u3_bin2bcd|BCD~32_combout\,
	datac => \u3_bin2bcd|reg_in\(2),
	datad => \u3_bin2bcd|BCD~34_combout\,
	combout => \u3_bin2bcd|BCD~36_combout\);

-- Location: LCCOMB_X2_Y18_N4
\u3_bin2bcd|bcd1:BCD[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[1]~0_combout\ = (\u3_bin2bcd|reg_in\(1) & (!\u3_bin2bcd|BCD~35_combout\ & (!\u3_bin2bcd|BCD~37_combout\))) # (!\u3_bin2bcd|reg_in\(1) & ((\u3_bin2bcd|BCD~35_combout\) # ((\u3_bin2bcd|BCD~37_combout\ & \u3_bin2bcd|BCD~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(1),
	datab => \u3_bin2bcd|BCD~35_combout\,
	datac => \u3_bin2bcd|BCD~37_combout\,
	datad => \u3_bin2bcd|BCD~36_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[1]~0_combout\);

-- Location: LCFF_X2_Y18_N5
\u3_bin2bcd|ones[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|ones\(1));

-- Location: LCCOMB_X2_Y18_N24
\u3_bin2bcd|bcd1:BCD[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[3]~0_combout\ = (\u3_bin2bcd|BCD~37_combout\ & (!\u3_bin2bcd|reg_in\(1) & ((!\u3_bin2bcd|BCD~36_combout\)))) # (!\u3_bin2bcd|BCD~37_combout\ & (\u3_bin2bcd|BCD~35_combout\ & ((\u3_bin2bcd|reg_in\(1)) # (\u3_bin2bcd|BCD~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(1),
	datab => \u3_bin2bcd|BCD~35_combout\,
	datac => \u3_bin2bcd|BCD~37_combout\,
	datad => \u3_bin2bcd|BCD~36_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[3]~0_combout\);

-- Location: LCFF_X2_Y18_N25
\u3_bin2bcd|ones[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|ones\(3));

-- Location: LCFF_X1_Y18_N15
\u3_bin2bcd|reg_in[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|address_counter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(0));

-- Location: LCFF_X1_Y18_N9
\u3_bin2bcd|ones[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u3_bin2bcd|reg_in\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|ones\(0));

-- Location: LCCOMB_X2_Y18_N2
\u3_bin2bcd|bcd1:BCD[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[2]~0_combout\ = (\u3_bin2bcd|reg_in\(1) & (((\u3_bin2bcd|BCD~36_combout\)))) # (!\u3_bin2bcd|reg_in\(1) & ((\u3_bin2bcd|BCD~35_combout\ & ((!\u3_bin2bcd|BCD~36_combout\))) # (!\u3_bin2bcd|BCD~35_combout\ & 
-- (!\u3_bin2bcd|BCD~37_combout\ & \u3_bin2bcd|BCD~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(1),
	datab => \u3_bin2bcd|BCD~35_combout\,
	datac => \u3_bin2bcd|BCD~37_combout\,
	datad => \u3_bin2bcd|BCD~36_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[2]~0_combout\);

-- Location: LCFF_X2_Y18_N3
\u3_bin2bcd|ones[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|ones\(2));

-- Location: LCCOMB_X1_Y18_N26
\u4_bcd2seg_1|D_OUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4_bcd2seg_1|D_OUT[0]~0_combout\ = (\u3_bin2bcd|ones\(1) & (\u3_bin2bcd|ones\(3))) # (!\u3_bin2bcd|ones\(1) & (\u3_bin2bcd|ones\(2) $ (((!\u3_bin2bcd|ones\(3) & \u3_bin2bcd|ones\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|ones\(1),
	datab => \u3_bin2bcd|ones\(3),
	datac => \u3_bin2bcd|ones\(0),
	datad => \u3_bin2bcd|ones\(2),
	combout => \u4_bcd2seg_1|D_OUT[0]~0_combout\);

-- Location: LCCOMB_X1_Y18_N28
\u4_bcd2seg_1|D_OUT[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4_bcd2seg_1|D_OUT[1]~1_combout\ = (\u3_bin2bcd|ones\(3) & ((\u3_bin2bcd|ones\(1)) # ((\u3_bin2bcd|ones\(2))))) # (!\u3_bin2bcd|ones\(3) & (\u3_bin2bcd|ones\(2) & (\u3_bin2bcd|ones\(1) $ (\u3_bin2bcd|ones\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|ones\(1),
	datab => \u3_bin2bcd|ones\(3),
	datac => \u3_bin2bcd|ones\(0),
	datad => \u3_bin2bcd|ones\(2),
	combout => \u4_bcd2seg_1|D_OUT[1]~1_combout\);

-- Location: LCCOMB_X1_Y18_N6
\u4_bcd2seg_1|D_OUT[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4_bcd2seg_1|D_OUT[2]~2_combout\ = (\u3_bin2bcd|ones\(2) & (((!\u3_bin2bcd|ones\(3))))) # (!\u3_bin2bcd|ones\(2) & (((!\u3_bin2bcd|ones\(3) & \u3_bin2bcd|ones\(0))) # (!\u3_bin2bcd|ones\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|ones\(1),
	datab => \u3_bin2bcd|ones\(3),
	datac => \u3_bin2bcd|ones\(0),
	datad => \u3_bin2bcd|ones\(2),
	combout => \u4_bcd2seg_1|D_OUT[2]~2_combout\);

-- Location: LCCOMB_X1_Y18_N0
\u4_bcd2seg_1|D_OUT[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4_bcd2seg_1|D_OUT[3]~3_combout\ = (\u3_bin2bcd|ones\(1) & ((\u3_bin2bcd|ones\(3)) # ((\u3_bin2bcd|ones\(0) & \u3_bin2bcd|ones\(2))))) # (!\u3_bin2bcd|ones\(1) & (\u3_bin2bcd|ones\(2) $ (((!\u3_bin2bcd|ones\(3) & \u3_bin2bcd|ones\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|ones\(1),
	datab => \u3_bin2bcd|ones\(3),
	datac => \u3_bin2bcd|ones\(0),
	datad => \u3_bin2bcd|ones\(2),
	combout => \u4_bcd2seg_1|D_OUT[3]~3_combout\);

-- Location: LCCOMB_X1_Y18_N10
\u4_bcd2seg_1|D_OUT[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4_bcd2seg_1|D_OUT[4]~4_combout\ = (\u3_bin2bcd|ones\(0)) # ((\u3_bin2bcd|ones\(1) & (\u3_bin2bcd|ones\(3))) # (!\u3_bin2bcd|ones\(1) & ((\u3_bin2bcd|ones\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|ones\(1),
	datab => \u3_bin2bcd|ones\(3),
	datac => \u3_bin2bcd|ones\(0),
	datad => \u3_bin2bcd|ones\(2),
	combout => \u4_bcd2seg_1|D_OUT[4]~4_combout\);

-- Location: LCCOMB_X1_Y18_N12
\u4_bcd2seg_1|D_OUT[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4_bcd2seg_1|D_OUT[5]~5_combout\ = (\u3_bin2bcd|ones\(0) & (!\u3_bin2bcd|ones\(1) & (\u3_bin2bcd|ones\(3) $ (\u3_bin2bcd|ones\(2))))) # (!\u3_bin2bcd|ones\(0) & ((\u3_bin2bcd|ones\(2) & ((!\u3_bin2bcd|ones\(3)))) # (!\u3_bin2bcd|ones\(2) & 
-- (!\u3_bin2bcd|ones\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|ones\(1),
	datab => \u3_bin2bcd|ones\(3),
	datac => \u3_bin2bcd|ones\(0),
	datad => \u3_bin2bcd|ones\(2),
	combout => \u4_bcd2seg_1|D_OUT[5]~5_combout\);

-- Location: LCCOMB_X1_Y18_N8
\u4_bcd2seg_1|D_OUT[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4_bcd2seg_1|D_OUT[6]~6_combout\ = (\u3_bin2bcd|ones\(1) & ((\u3_bin2bcd|ones\(3)) # ((\u3_bin2bcd|ones\(0) & \u3_bin2bcd|ones\(2))))) # (!\u3_bin2bcd|ones\(1) & (\u3_bin2bcd|ones\(3) $ (((!\u3_bin2bcd|ones\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|ones\(1),
	datab => \u3_bin2bcd|ones\(3),
	datac => \u3_bin2bcd|ones\(0),
	datad => \u3_bin2bcd|ones\(2),
	combout => \u4_bcd2seg_1|D_OUT[6]~6_combout\);

-- Location: LCCOMB_X2_Y18_N6
\u3_bin2bcd|bcd1:BCD[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[4]~0_combout\ = \u3_bin2bcd|BCD~35_combout\ $ (((\u3_bin2bcd|BCD~37_combout\ & ((\u3_bin2bcd|reg_in\(1)) # (\u3_bin2bcd|BCD~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(1),
	datab => \u3_bin2bcd|BCD~35_combout\,
	datac => \u3_bin2bcd|BCD~37_combout\,
	datad => \u3_bin2bcd|BCD~36_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[4]~0_combout\);

-- Location: LCFF_X2_Y18_N7
\u3_bin2bcd|tenths[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|tenths\(0));

-- Location: LCCOMB_X2_Y18_N20
\u3_bin2bcd|BCD~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~52_combout\ = \u3_bin2bcd|BCD~32_combout\ $ ((((!\u3_bin2bcd|BCD~33_combout\ & !\u3_bin2bcd|reg_in\(2))) # (!\u3_bin2bcd|BCD~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~33_combout\,
	datab => \u3_bin2bcd|BCD~32_combout\,
	datac => \u3_bin2bcd|reg_in\(2),
	datad => \u3_bin2bcd|BCD~34_combout\,
	combout => \u3_bin2bcd|BCD~52_combout\);

-- Location: LCCOMB_X13_Y18_N24
\u3_bin2bcd|BCD~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~66_combout\ = (\u3_bin2bcd|reg_in\(10) & ((\u3_bin2bcd|reg_in\(8) & ((\u3_bin2bcd|reg_in\(9)) # (!\u3_bin2bcd|reg_in\(11)))) # (!\u3_bin2bcd|reg_in\(8) & (\u3_bin2bcd|reg_in\(9) & !\u3_bin2bcd|reg_in\(11))))) # (!\u3_bin2bcd|reg_in\(10) & 
-- (((!\u3_bin2bcd|reg_in\(9) & \u3_bin2bcd|reg_in\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(10),
	datab => \u3_bin2bcd|reg_in\(8),
	datac => \u3_bin2bcd|reg_in\(9),
	datad => \u3_bin2bcd|reg_in\(11),
	combout => \u3_bin2bcd|BCD~66_combout\);

-- Location: LCCOMB_X12_Y18_N20
\u3_bin2bcd|BCD~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~65_combout\ = \u3_bin2bcd|BCD~20_combout\ $ ((((!\u3_bin2bcd|BCD~21_combout\ & !\u3_bin2bcd|reg_in\(6))) # (!\u3_bin2bcd|BCD~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~20_combout\,
	datab => \u3_bin2bcd|BCD~21_combout\,
	datac => \u3_bin2bcd|BCD~22_combout\,
	datad => \u3_bin2bcd|reg_in\(6),
	combout => \u3_bin2bcd|BCD~65_combout\);

-- Location: LCFF_X13_Y18_N21
\u3_bin2bcd|reg_in[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \u2_controller|address_counter\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|reg_in\(10));

-- Location: LCCOMB_X13_Y18_N30
\u3_bin2bcd|BCD~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~71_combout\ = (\u3_bin2bcd|BCD~70_combout\ & (\u3_bin2bcd|reg_in\(9) $ (((!\u3_bin2bcd|reg_in\(8) & \u3_bin2bcd|reg_in\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~70_combout\,
	datab => \u3_bin2bcd|reg_in\(8),
	datac => \u3_bin2bcd|reg_in\(9),
	datad => \u3_bin2bcd|reg_in\(10),
	combout => \u3_bin2bcd|BCD~71_combout\);

-- Location: LCCOMB_X12_Y18_N18
\u3_bin2bcd|BCD~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~41_combout\ = (\u3_bin2bcd|BCD~65_combout\ & (((\u3_bin2bcd|BCD~71_combout\)))) # (!\u3_bin2bcd|BCD~65_combout\ & (\u3_bin2bcd|BCD~64_combout\ $ (((\u3_bin2bcd|BCD~66_combout\ & \u3_bin2bcd|BCD~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~64_combout\,
	datab => \u3_bin2bcd|BCD~66_combout\,
	datac => \u3_bin2bcd|BCD~65_combout\,
	datad => \u3_bin2bcd|BCD~71_combout\,
	combout => \u3_bin2bcd|BCD~41_combout\);

-- Location: LCCOMB_X13_Y18_N28
\u3_bin2bcd|BCD~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~67_combout\ = \u3_bin2bcd|BCD~17_combout\ $ ((((!\u3_bin2bcd|BCD~18_combout\ & !\u3_bin2bcd|reg_in\(7))) # (!\u3_bin2bcd|BCD~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~18_combout\,
	datab => \u3_bin2bcd|reg_in\(7),
	datac => \u3_bin2bcd|BCD~17_combout\,
	datad => \u3_bin2bcd|BCD~19_combout\,
	combout => \u3_bin2bcd|BCD~67_combout\);

-- Location: LCCOMB_X12_Y18_N24
\u3_bin2bcd|BCD~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~39_combout\ = (\u3_bin2bcd|BCD~65_combout\ & ((\u3_bin2bcd|LessThan0~0_combout\ & ((\u3_bin2bcd|BCD~66_combout\) # (!\u3_bin2bcd|BCD~67_combout\))) # (!\u3_bin2bcd|LessThan0~0_combout\ & ((\u3_bin2bcd|BCD~67_combout\) # 
-- (!\u3_bin2bcd|BCD~66_combout\))))) # (!\u3_bin2bcd|BCD~65_combout\ & (\u3_bin2bcd|BCD~66_combout\ $ (((\u3_bin2bcd|LessThan0~0_combout\ & \u3_bin2bcd|BCD~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|LessThan0~0_combout\,
	datab => \u3_bin2bcd|BCD~67_combout\,
	datac => \u3_bin2bcd|BCD~65_combout\,
	datad => \u3_bin2bcd|BCD~66_combout\,
	combout => \u3_bin2bcd|BCD~39_combout\);

-- Location: LCCOMB_X14_Y18_N20
\u3_bin2bcd|BCD~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~38_combout\ = \u3_bin2bcd|BCD~23_combout\ $ ((((!\u3_bin2bcd|reg_in\(5) & !\u3_bin2bcd|BCD~24_combout\)) # (!\u3_bin2bcd|BCD~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~23_combout\,
	datab => \u3_bin2bcd|BCD~25_combout\,
	datac => \u3_bin2bcd|reg_in\(5),
	datad => \u3_bin2bcd|BCD~24_combout\,
	combout => \u3_bin2bcd|BCD~38_combout\);

-- Location: LCCOMB_X12_Y18_N26
\u3_bin2bcd|BCD~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~46_combout\ = (\u3_bin2bcd|BCD~42_combout\ & ((\u3_bin2bcd|BCD~39_combout\ $ (\u3_bin2bcd|BCD~38_combout\)))) # (!\u3_bin2bcd|BCD~42_combout\ & ((\u3_bin2bcd|BCD~39_combout\) # ((\u3_bin2bcd|BCD~41_combout\ & 
-- \u3_bin2bcd|BCD~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~42_combout\,
	datab => \u3_bin2bcd|BCD~41_combout\,
	datac => \u3_bin2bcd|BCD~39_combout\,
	datad => \u3_bin2bcd|BCD~38_combout\,
	combout => \u3_bin2bcd|BCD~46_combout\);

-- Location: LCCOMB_X14_Y18_N2
\u3_bin2bcd|BCD~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~44_combout\ = \u3_bin2bcd|BCD~26_combout\ $ ((((!\u3_bin2bcd|BCD~27_combout\ & !\u3_bin2bcd|reg_in\(4))) # (!\u3_bin2bcd|BCD~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~27_combout\,
	datab => \u3_bin2bcd|BCD~26_combout\,
	datac => \u3_bin2bcd|reg_in\(4),
	datad => \u3_bin2bcd|BCD~28_combout\,
	combout => \u3_bin2bcd|BCD~44_combout\);

-- Location: LCCOMB_X12_Y18_N8
\u3_bin2bcd|BCD~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~45_combout\ = (\u3_bin2bcd|BCD~42_combout\ & (((!\u3_bin2bcd|BCD~38_combout\)))) # (!\u3_bin2bcd|BCD~42_combout\ & ((\u3_bin2bcd|BCD~41_combout\ & ((\u3_bin2bcd|BCD~39_combout\) # (!\u3_bin2bcd|BCD~38_combout\))) # 
-- (!\u3_bin2bcd|BCD~41_combout\ & ((\u3_bin2bcd|BCD~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~42_combout\,
	datab => \u3_bin2bcd|BCD~41_combout\,
	datac => \u3_bin2bcd|BCD~39_combout\,
	datad => \u3_bin2bcd|BCD~38_combout\,
	combout => \u3_bin2bcd|BCD~45_combout\);

-- Location: LCCOMB_X5_Y18_N18
\u3_bin2bcd|BCD~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~49_combout\ = (\u3_bin2bcd|BCD~43_combout\ & (((!\u3_bin2bcd|BCD~44_combout\)))) # (!\u3_bin2bcd|BCD~43_combout\ & ((\u3_bin2bcd|BCD~46_combout\ & (\u3_bin2bcd|BCD~44_combout\)) # (!\u3_bin2bcd|BCD~46_combout\ & 
-- ((\u3_bin2bcd|BCD~45_combout\) # (!\u3_bin2bcd|BCD~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~43_combout\,
	datab => \u3_bin2bcd|BCD~46_combout\,
	datac => \u3_bin2bcd|BCD~44_combout\,
	datad => \u3_bin2bcd|BCD~45_combout\,
	combout => \u3_bin2bcd|BCD~49_combout\);

-- Location: LCCOMB_X2_Y18_N8
\u3_bin2bcd|BCD~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~48_combout\ = \u3_bin2bcd|BCD~29_combout\ $ ((((!\u3_bin2bcd|BCD~30_combout\ & !\u3_bin2bcd|reg_in\(3))) # (!\u3_bin2bcd|BCD~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~29_combout\,
	datab => \u3_bin2bcd|BCD~30_combout\,
	datac => \u3_bin2bcd|reg_in\(3),
	datad => \u3_bin2bcd|BCD~31_combout\,
	combout => \u3_bin2bcd|BCD~48_combout\);

-- Location: LCCOMB_X5_Y18_N0
\u3_bin2bcd|BCD~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~47_combout\ = (\u3_bin2bcd|BCD~46_combout\ & (\u3_bin2bcd|BCD~43_combout\ & ((!\u3_bin2bcd|BCD~45_combout\) # (!\u3_bin2bcd|BCD~44_combout\)))) # (!\u3_bin2bcd|BCD~46_combout\ & (((\u3_bin2bcd|BCD~44_combout\ & 
-- \u3_bin2bcd|BCD~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~43_combout\,
	datab => \u3_bin2bcd|BCD~46_combout\,
	datac => \u3_bin2bcd|BCD~44_combout\,
	datad => \u3_bin2bcd|BCD~45_combout\,
	combout => \u3_bin2bcd|BCD~47_combout\);

-- Location: LCCOMB_X5_Y18_N8
\u3_bin2bcd|BCD~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~53_combout\ = (\u3_bin2bcd|BCD~50_combout\ & ((\u3_bin2bcd|BCD~48_combout\ $ (\u3_bin2bcd|BCD~47_combout\)))) # (!\u3_bin2bcd|BCD~50_combout\ & (((\u3_bin2bcd|BCD~49_combout\ & !\u3_bin2bcd|BCD~47_combout\)) # 
-- (!\u3_bin2bcd|BCD~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~50_combout\,
	datab => \u3_bin2bcd|BCD~49_combout\,
	datac => \u3_bin2bcd|BCD~48_combout\,
	datad => \u3_bin2bcd|BCD~47_combout\,
	combout => \u3_bin2bcd|BCD~53_combout\);

-- Location: LCCOMB_X5_Y18_N2
\u3_bin2bcd|BCD~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~54_combout\ = (\u3_bin2bcd|BCD~49_combout\ & (((!\u3_bin2bcd|BCD~47_combout\) # (!\u3_bin2bcd|BCD~48_combout\)))) # (!\u3_bin2bcd|BCD~49_combout\ & (\u3_bin2bcd|BCD~48_combout\ & ((\u3_bin2bcd|BCD~47_combout\) # 
-- (!\u3_bin2bcd|BCD~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~50_combout\,
	datab => \u3_bin2bcd|BCD~49_combout\,
	datac => \u3_bin2bcd|BCD~48_combout\,
	datad => \u3_bin2bcd|BCD~47_combout\,
	combout => \u3_bin2bcd|BCD~54_combout\);

-- Location: LCCOMB_X5_Y18_N26
\u3_bin2bcd|bcd1:BCD[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[6]~0_combout\ = (\u3_bin2bcd|BCD~51_combout\ & (\u3_bin2bcd|BCD~52_combout\ $ ((!\u3_bin2bcd|BCD~53_combout\)))) # (!\u3_bin2bcd|BCD~51_combout\ & (!\u3_bin2bcd|BCD~53_combout\ & ((\u3_bin2bcd|BCD~54_combout\) # 
-- (!\u3_bin2bcd|BCD~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~51_combout\,
	datab => \u3_bin2bcd|BCD~52_combout\,
	datac => \u3_bin2bcd|BCD~53_combout\,
	datad => \u3_bin2bcd|BCD~54_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[6]~0_combout\);

-- Location: LCFF_X5_Y18_N27
\u3_bin2bcd|tenths[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|tenths\(2));

-- Location: LCCOMB_X5_Y18_N12
\u3_bin2bcd|bcd1:BCD[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[5]~0_combout\ = (\u3_bin2bcd|BCD~51_combout\ & (\u3_bin2bcd|BCD~52_combout\)) # (!\u3_bin2bcd|BCD~51_combout\ & ((\u3_bin2bcd|BCD~52_combout\ & (!\u3_bin2bcd|BCD~53_combout\ & !\u3_bin2bcd|BCD~54_combout\)) # 
-- (!\u3_bin2bcd|BCD~52_combout\ & ((\u3_bin2bcd|BCD~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~51_combout\,
	datab => \u3_bin2bcd|BCD~52_combout\,
	datac => \u3_bin2bcd|BCD~53_combout\,
	datad => \u3_bin2bcd|BCD~54_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[5]~0_combout\);

-- Location: LCFF_X5_Y18_N13
\u3_bin2bcd|tenths[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|tenths\(1));

-- Location: LCCOMB_X5_Y18_N24
\u3_bin2bcd|bcd1:BCD[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[7]~0_combout\ = (\u3_bin2bcd|BCD~54_combout\ & (\u3_bin2bcd|BCD~51_combout\ & ((!\u3_bin2bcd|BCD~53_combout\) # (!\u3_bin2bcd|BCD~52_combout\)))) # (!\u3_bin2bcd|BCD~54_combout\ & (((\u3_bin2bcd|BCD~52_combout\ & 
-- \u3_bin2bcd|BCD~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~51_combout\,
	datab => \u3_bin2bcd|BCD~52_combout\,
	datac => \u3_bin2bcd|BCD~53_combout\,
	datad => \u3_bin2bcd|BCD~54_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[7]~0_combout\);

-- Location: LCFF_X5_Y18_N25
\u3_bin2bcd|tenths[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|tenths\(3));

-- Location: LCCOMB_X1_Y21_N8
\u5_bcd2seg_10|D_OUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5_bcd2seg_10|D_OUT[0]~0_combout\ = (\u3_bin2bcd|tenths\(1) & (((\u3_bin2bcd|tenths\(3))))) # (!\u3_bin2bcd|tenths\(1) & (\u3_bin2bcd|tenths\(2) $ (((\u3_bin2bcd|tenths\(0) & !\u3_bin2bcd|tenths\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|tenths\(0),
	datab => \u3_bin2bcd|tenths\(2),
	datac => \u3_bin2bcd|tenths\(1),
	datad => \u3_bin2bcd|tenths\(3),
	combout => \u5_bcd2seg_10|D_OUT[0]~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\u5_bcd2seg_10|D_OUT[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5_bcd2seg_10|D_OUT[1]~1_combout\ = (\u3_bin2bcd|tenths\(2) & ((\u3_bin2bcd|tenths\(3)) # (\u3_bin2bcd|tenths\(0) $ (\u3_bin2bcd|tenths\(1))))) # (!\u3_bin2bcd|tenths\(2) & (((\u3_bin2bcd|tenths\(1) & \u3_bin2bcd|tenths\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|tenths\(0),
	datab => \u3_bin2bcd|tenths\(2),
	datac => \u3_bin2bcd|tenths\(1),
	datad => \u3_bin2bcd|tenths\(3),
	combout => \u5_bcd2seg_10|D_OUT[1]~1_combout\);

-- Location: LCCOMB_X1_Y21_N28
\u5_bcd2seg_10|D_OUT[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5_bcd2seg_10|D_OUT[2]~2_combout\ = (\u3_bin2bcd|tenths\(2) & (((!\u3_bin2bcd|tenths\(3))))) # (!\u3_bin2bcd|tenths\(2) & (((\u3_bin2bcd|tenths\(0) & !\u3_bin2bcd|tenths\(3))) # (!\u3_bin2bcd|tenths\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|tenths\(0),
	datab => \u3_bin2bcd|tenths\(2),
	datac => \u3_bin2bcd|tenths\(1),
	datad => \u3_bin2bcd|tenths\(3),
	combout => \u5_bcd2seg_10|D_OUT[2]~2_combout\);

-- Location: LCCOMB_X1_Y21_N22
\u5_bcd2seg_10|D_OUT[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5_bcd2seg_10|D_OUT[3]~3_combout\ = (\u3_bin2bcd|tenths\(1) & ((\u3_bin2bcd|tenths\(3)) # ((\u3_bin2bcd|tenths\(0) & \u3_bin2bcd|tenths\(2))))) # (!\u3_bin2bcd|tenths\(1) & (\u3_bin2bcd|tenths\(2) $ (((\u3_bin2bcd|tenths\(0) & 
-- !\u3_bin2bcd|tenths\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|tenths\(0),
	datab => \u3_bin2bcd|tenths\(2),
	datac => \u3_bin2bcd|tenths\(1),
	datad => \u3_bin2bcd|tenths\(3),
	combout => \u5_bcd2seg_10|D_OUT[3]~3_combout\);

-- Location: LCCOMB_X1_Y21_N16
\u5_bcd2seg_10|D_OUT[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5_bcd2seg_10|D_OUT[4]~4_combout\ = (\u3_bin2bcd|tenths\(0)) # ((\u3_bin2bcd|tenths\(1) & ((\u3_bin2bcd|tenths\(3)))) # (!\u3_bin2bcd|tenths\(1) & (\u3_bin2bcd|tenths\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|tenths\(0),
	datab => \u3_bin2bcd|tenths\(2),
	datac => \u3_bin2bcd|tenths\(1),
	datad => \u3_bin2bcd|tenths\(3),
	combout => \u5_bcd2seg_10|D_OUT[4]~4_combout\);

-- Location: LCCOMB_X1_Y21_N2
\u5_bcd2seg_10|D_OUT[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5_bcd2seg_10|D_OUT[5]~5_combout\ = (\u3_bin2bcd|tenths\(0) & (!\u3_bin2bcd|tenths\(1) & (\u3_bin2bcd|tenths\(2) $ (\u3_bin2bcd|tenths\(3))))) # (!\u3_bin2bcd|tenths\(0) & ((\u3_bin2bcd|tenths\(2) & ((!\u3_bin2bcd|tenths\(3)))) # (!\u3_bin2bcd|tenths\(2) 
-- & (!\u3_bin2bcd|tenths\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|tenths\(0),
	datab => \u3_bin2bcd|tenths\(2),
	datac => \u3_bin2bcd|tenths\(1),
	datad => \u3_bin2bcd|tenths\(3),
	combout => \u5_bcd2seg_10|D_OUT[5]~5_combout\);

-- Location: LCCOMB_X1_Y21_N4
\u5_bcd2seg_10|D_OUT[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5_bcd2seg_10|D_OUT[6]~6_combout\ = (\u3_bin2bcd|tenths\(2) & ((\u3_bin2bcd|tenths\(3)) # ((\u3_bin2bcd|tenths\(0) & \u3_bin2bcd|tenths\(1))))) # (!\u3_bin2bcd|tenths\(2) & ((\u3_bin2bcd|tenths\(1) $ (!\u3_bin2bcd|tenths\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|tenths\(0),
	datab => \u3_bin2bcd|tenths\(2),
	datac => \u3_bin2bcd|tenths\(1),
	datad => \u3_bin2bcd|tenths\(3),
	combout => \u5_bcd2seg_10|D_OUT[6]~6_combout\);

-- Location: LCCOMB_X13_Y18_N16
\u3_bin2bcd|BCD~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~7_combout\ = (\u3_bin2bcd|reg_in\(9)) # (\u3_bin2bcd|reg_in\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3_bin2bcd|reg_in\(9),
	datad => \u3_bin2bcd|reg_in\(7),
	combout => \u3_bin2bcd|BCD~7_combout\);

-- Location: LCCOMB_X13_Y18_N10
\u3_bin2bcd|BCD~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~69_combout\ = (\u3_bin2bcd|reg_in\(10) & (\u3_bin2bcd|reg_in\(11) & ((\u3_bin2bcd|reg_in\(8)) # (\u3_bin2bcd|BCD~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(10),
	datab => \u3_bin2bcd|reg_in\(8),
	datac => \u3_bin2bcd|BCD~7_combout\,
	datad => \u3_bin2bcd|reg_in\(11),
	combout => \u3_bin2bcd|BCD~69_combout\);

-- Location: LCCOMB_X12_Y18_N2
\u3_bin2bcd|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|LessThan6~0_combout\ = (\u3_bin2bcd|LessThan0~0_combout\ & ((\u3_bin2bcd|BCD~67_combout\ & ((!\u3_bin2bcd|BCD~66_combout\))) # (!\u3_bin2bcd|BCD~67_combout\ & (!\u3_bin2bcd|BCD~65_combout\ & \u3_bin2bcd|BCD~66_combout\)))) # 
-- (!\u3_bin2bcd|LessThan0~0_combout\ & (\u3_bin2bcd|BCD~66_combout\ & ((!\u3_bin2bcd|BCD~65_combout\) # (!\u3_bin2bcd|BCD~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|LessThan0~0_combout\,
	datab => \u3_bin2bcd|BCD~67_combout\,
	datac => \u3_bin2bcd|BCD~65_combout\,
	datad => \u3_bin2bcd|BCD~66_combout\,
	combout => \u3_bin2bcd|LessThan6~0_combout\);

-- Location: LCCOMB_X12_Y18_N28
\u3_bin2bcd|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|LessThan8~0_combout\ = (\u3_bin2bcd|LessThan6~0_combout\ $ (!\u3_bin2bcd|BCD~65_combout\)) # (!\u3_bin2bcd|BCD~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3_bin2bcd|LessThan6~0_combout\,
	datac => \u3_bin2bcd|BCD~65_combout\,
	datad => \u3_bin2bcd|BCD~38_combout\,
	combout => \u3_bin2bcd|LessThan8~0_combout\);

-- Location: LCCOMB_X12_Y18_N16
\u3_bin2bcd|BCD~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~59_combout\ = (\u3_bin2bcd|BCD~69_combout\ & (\u3_bin2bcd|BCD~42_combout\ $ (((!\u3_bin2bcd|LessThan8~0_combout\) # (!\u3_bin2bcd|BCD~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~42_combout\,
	datab => \u3_bin2bcd|BCD~41_combout\,
	datac => \u3_bin2bcd|BCD~69_combout\,
	datad => \u3_bin2bcd|LessThan8~0_combout\,
	combout => \u3_bin2bcd|BCD~59_combout\);

-- Location: LCCOMB_X12_Y18_N6
\u3_bin2bcd|BCD~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~43_combout\ = (\u3_bin2bcd|BCD~41_combout\ & (((\u3_bin2bcd|BCD~39_combout\ & \u3_bin2bcd|BCD~38_combout\)))) # (!\u3_bin2bcd|BCD~41_combout\ & (\u3_bin2bcd|BCD~42_combout\ & ((!\u3_bin2bcd|BCD~38_combout\) # 
-- (!\u3_bin2bcd|BCD~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~42_combout\,
	datab => \u3_bin2bcd|BCD~41_combout\,
	datac => \u3_bin2bcd|BCD~39_combout\,
	datad => \u3_bin2bcd|BCD~38_combout\,
	combout => \u3_bin2bcd|BCD~43_combout\);

-- Location: LCCOMB_X4_Y18_N24
\u3_bin2bcd|BCD~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~60_combout\ = \u3_bin2bcd|BCD~43_combout\ $ (((\u3_bin2bcd|BCD~46_combout\) # ((\u3_bin2bcd|BCD~45_combout\ & \u3_bin2bcd|BCD~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~45_combout\,
	datab => \u3_bin2bcd|BCD~46_combout\,
	datac => \u3_bin2bcd|BCD~43_combout\,
	datad => \u3_bin2bcd|BCD~44_combout\,
	combout => \u3_bin2bcd|BCD~60_combout\);

-- Location: LCCOMB_X13_Y18_N26
\u3_bin2bcd|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|LessThan0~0_combout\ = (\u3_bin2bcd|reg_in\(11) & ((\u3_bin2bcd|reg_in\(9)) # (\u3_bin2bcd|reg_in\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3_bin2bcd|reg_in\(11),
	datac => \u3_bin2bcd|reg_in\(9),
	datad => \u3_bin2bcd|reg_in\(10),
	combout => \u3_bin2bcd|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y18_N30
\u3_bin2bcd|bcd1:BCD[14]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[14]~17_combout\ = (\u3_bin2bcd|LessThan0~0_combout\ & ((\u3_bin2bcd|BCD~66_combout\) # (!\u3_bin2bcd|BCD~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3_bin2bcd|BCD~67_combout\,
	datac => \u3_bin2bcd|LessThan0~0_combout\,
	datad => \u3_bin2bcd|BCD~66_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[14]~17_combout\);

-- Location: LCCOMB_X12_Y18_N14
\u3_bin2bcd|BCD~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~58_combout\ = (!\u3_bin2bcd|bcd1:BCD[14]~17_combout\ & (\u3_bin2bcd|BCD~42_combout\ $ (((\u3_bin2bcd|LessThan8~0_combout\ & \u3_bin2bcd|BCD~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~42_combout\,
	datab => \u3_bin2bcd|LessThan8~0_combout\,
	datac => \u3_bin2bcd|BCD~41_combout\,
	datad => \u3_bin2bcd|bcd1:BCD[14]~17_combout\,
	combout => \u3_bin2bcd|BCD~58_combout\);

-- Location: LCCOMB_X4_Y18_N26
\u3_bin2bcd|BCD~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~61_combout\ = (\u3_bin2bcd|BCD~57_combout\ & (((!\u3_bin2bcd|BCD~59_combout\ & !\u3_bin2bcd|BCD~58_combout\)) # (!\u3_bin2bcd|BCD~60_combout\))) # (!\u3_bin2bcd|BCD~57_combout\ & (\u3_bin2bcd|BCD~59_combout\ $ 
-- ((\u3_bin2bcd|BCD~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~57_combout\,
	datab => \u3_bin2bcd|BCD~59_combout\,
	datac => \u3_bin2bcd|BCD~60_combout\,
	datad => \u3_bin2bcd|BCD~58_combout\,
	combout => \u3_bin2bcd|BCD~61_combout\);

-- Location: LCCOMB_X4_Y18_N20
\u3_bin2bcd|BCD~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~62_combout\ = (\u3_bin2bcd|BCD~59_combout\ & ((\u3_bin2bcd|BCD~60_combout\ $ (\u3_bin2bcd|BCD~58_combout\)))) # (!\u3_bin2bcd|BCD~59_combout\ & (\u3_bin2bcd|BCD~58_combout\ & ((!\u3_bin2bcd|BCD~60_combout\) # 
-- (!\u3_bin2bcd|BCD~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~57_combout\,
	datab => \u3_bin2bcd|BCD~59_combout\,
	datac => \u3_bin2bcd|BCD~60_combout\,
	datad => \u3_bin2bcd|BCD~58_combout\,
	combout => \u3_bin2bcd|BCD~62_combout\);

-- Location: LCCOMB_X5_Y18_N28
\u3_bin2bcd|BCD~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|BCD~55_combout\ = \u3_bin2bcd|BCD~47_combout\ $ (((\u3_bin2bcd|BCD~50_combout\) # ((\u3_bin2bcd|BCD~49_combout\ & \u3_bin2bcd|BCD~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~50_combout\,
	datab => \u3_bin2bcd|BCD~49_combout\,
	datac => \u3_bin2bcd|BCD~48_combout\,
	datad => \u3_bin2bcd|BCD~47_combout\,
	combout => \u3_bin2bcd|BCD~55_combout\);

-- Location: LCCOMB_X4_Y18_N28
\u3_bin2bcd|bcd1:BCD[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[9]~0_combout\ = (\u3_bin2bcd|BCD~63_combout\ & (((\u3_bin2bcd|BCD~55_combout\)))) # (!\u3_bin2bcd|BCD~63_combout\ & ((\u3_bin2bcd|BCD~62_combout\ & (!\u3_bin2bcd|BCD~61_combout\ & \u3_bin2bcd|BCD~55_combout\)) # 
-- (!\u3_bin2bcd|BCD~62_combout\ & ((!\u3_bin2bcd|BCD~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~63_combout\,
	datab => \u3_bin2bcd|BCD~61_combout\,
	datac => \u3_bin2bcd|BCD~62_combout\,
	datad => \u3_bin2bcd|BCD~55_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[9]~0_combout\);

-- Location: LCFF_X4_Y18_N29
\u3_bin2bcd|hunderths[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|hunderths\(1));

-- Location: LCCOMB_X4_Y18_N2
\u3_bin2bcd|bcd1:BCD[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[10]~0_combout\ = (\u3_bin2bcd|BCD~63_combout\ & (\u3_bin2bcd|BCD~61_combout\ $ (((!\u3_bin2bcd|BCD~55_combout\))))) # (!\u3_bin2bcd|BCD~63_combout\ & (!\u3_bin2bcd|BCD~61_combout\ & ((!\u3_bin2bcd|BCD~55_combout\) # 
-- (!\u3_bin2bcd|BCD~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~63_combout\,
	datab => \u3_bin2bcd|BCD~61_combout\,
	datac => \u3_bin2bcd|BCD~62_combout\,
	datad => \u3_bin2bcd|BCD~55_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[10]~0_combout\);

-- Location: LCFF_X4_Y18_N3
\u3_bin2bcd|hunderths[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|hunderths\(2));

-- Location: LCCOMB_X4_Y18_N16
\u3_bin2bcd|bcd1:BCD[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[11]~0_combout\ = (\u3_bin2bcd|BCD~62_combout\ & (((\u3_bin2bcd|BCD~61_combout\ & \u3_bin2bcd|BCD~55_combout\)))) # (!\u3_bin2bcd|BCD~62_combout\ & (\u3_bin2bcd|BCD~63_combout\ & ((!\u3_bin2bcd|BCD~55_combout\) # 
-- (!\u3_bin2bcd|BCD~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~63_combout\,
	datab => \u3_bin2bcd|BCD~61_combout\,
	datac => \u3_bin2bcd|BCD~62_combout\,
	datad => \u3_bin2bcd|BCD~55_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[11]~0_combout\);

-- Location: LCFF_X4_Y18_N17
\u3_bin2bcd|hunderths[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|hunderths\(3));

-- Location: LCCOMB_X5_Y18_N30
\u3_bin2bcd|bcd1:BCD[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[8]~0_combout\ = \u3_bin2bcd|BCD~51_combout\ $ (((!\u3_bin2bcd|BCD~54_combout\ & ((!\u3_bin2bcd|BCD~53_combout\) # (!\u3_bin2bcd|BCD~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~51_combout\,
	datab => \u3_bin2bcd|BCD~52_combout\,
	datac => \u3_bin2bcd|BCD~53_combout\,
	datad => \u3_bin2bcd|BCD~54_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[8]~0_combout\);

-- Location: LCFF_X5_Y18_N31
\u3_bin2bcd|hunderths[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|hunderths\(0));

-- Location: LCCOMB_X4_Y18_N22
\u6_bcd2seg_100|D_OUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6_bcd2seg_100|D_OUT[0]~0_combout\ = (\u3_bin2bcd|hunderths\(1) & (((\u3_bin2bcd|hunderths\(3))))) # (!\u3_bin2bcd|hunderths\(1) & (\u3_bin2bcd|hunderths\(2) $ (((!\u3_bin2bcd|hunderths\(3) & \u3_bin2bcd|hunderths\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|hunderths\(1),
	datab => \u3_bin2bcd|hunderths\(2),
	datac => \u3_bin2bcd|hunderths\(3),
	datad => \u3_bin2bcd|hunderths\(0),
	combout => \u6_bcd2seg_100|D_OUT[0]~0_combout\);

-- Location: LCCOMB_X4_Y18_N0
\u6_bcd2seg_100|D_OUT[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6_bcd2seg_100|D_OUT[1]~1_combout\ = (\u3_bin2bcd|hunderths\(2) & ((\u3_bin2bcd|hunderths\(3)) # (\u3_bin2bcd|hunderths\(1) $ (\u3_bin2bcd|hunderths\(0))))) # (!\u3_bin2bcd|hunderths\(2) & (\u3_bin2bcd|hunderths\(1) & (\u3_bin2bcd|hunderths\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|hunderths\(1),
	datab => \u3_bin2bcd|hunderths\(2),
	datac => \u3_bin2bcd|hunderths\(3),
	datad => \u3_bin2bcd|hunderths\(0),
	combout => \u6_bcd2seg_100|D_OUT[1]~1_combout\);

-- Location: LCCOMB_X4_Y18_N18
\u6_bcd2seg_100|D_OUT[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6_bcd2seg_100|D_OUT[2]~2_combout\ = (\u3_bin2bcd|hunderths\(2) & (((!\u3_bin2bcd|hunderths\(3))))) # (!\u3_bin2bcd|hunderths\(2) & (((!\u3_bin2bcd|hunderths\(3) & \u3_bin2bcd|hunderths\(0))) # (!\u3_bin2bcd|hunderths\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|hunderths\(1),
	datab => \u3_bin2bcd|hunderths\(2),
	datac => \u3_bin2bcd|hunderths\(3),
	datad => \u3_bin2bcd|hunderths\(0),
	combout => \u6_bcd2seg_100|D_OUT[2]~2_combout\);

-- Location: LCCOMB_X4_Y18_N4
\u6_bcd2seg_100|D_OUT[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6_bcd2seg_100|D_OUT[3]~3_combout\ = (\u3_bin2bcd|hunderths\(1) & ((\u3_bin2bcd|hunderths\(3)) # ((\u3_bin2bcd|hunderths\(2) & \u3_bin2bcd|hunderths\(0))))) # (!\u3_bin2bcd|hunderths\(1) & (\u3_bin2bcd|hunderths\(2) $ (((!\u3_bin2bcd|hunderths\(3) & 
-- \u3_bin2bcd|hunderths\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|hunderths\(1),
	datab => \u3_bin2bcd|hunderths\(2),
	datac => \u3_bin2bcd|hunderths\(3),
	datad => \u3_bin2bcd|hunderths\(0),
	combout => \u6_bcd2seg_100|D_OUT[3]~3_combout\);

-- Location: LCCOMB_X4_Y18_N14
\u6_bcd2seg_100|D_OUT[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6_bcd2seg_100|D_OUT[4]~4_combout\ = (\u3_bin2bcd|hunderths\(0)) # ((\u3_bin2bcd|hunderths\(1) & ((\u3_bin2bcd|hunderths\(3)))) # (!\u3_bin2bcd|hunderths\(1) & (\u3_bin2bcd|hunderths\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|hunderths\(1),
	datab => \u3_bin2bcd|hunderths\(2),
	datac => \u3_bin2bcd|hunderths\(3),
	datad => \u3_bin2bcd|hunderths\(0),
	combout => \u6_bcd2seg_100|D_OUT[4]~4_combout\);

-- Location: LCCOMB_X4_Y18_N8
\u6_bcd2seg_100|D_OUT[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6_bcd2seg_100|D_OUT[5]~5_combout\ = (\u3_bin2bcd|hunderths\(2) & (!\u3_bin2bcd|hunderths\(3) & ((!\u3_bin2bcd|hunderths\(0)) # (!\u3_bin2bcd|hunderths\(1))))) # (!\u3_bin2bcd|hunderths\(2) & (!\u3_bin2bcd|hunderths\(1) & ((\u3_bin2bcd|hunderths\(3)) # 
-- (!\u3_bin2bcd|hunderths\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|hunderths\(1),
	datab => \u3_bin2bcd|hunderths\(2),
	datac => \u3_bin2bcd|hunderths\(3),
	datad => \u3_bin2bcd|hunderths\(0),
	combout => \u6_bcd2seg_100|D_OUT[5]~5_combout\);

-- Location: LCCOMB_X4_Y18_N10
\u6_bcd2seg_100|D_OUT[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6_bcd2seg_100|D_OUT[6]~6_combout\ = (\u3_bin2bcd|hunderths\(1) & ((\u3_bin2bcd|hunderths\(3)) # ((\u3_bin2bcd|hunderths\(2) & \u3_bin2bcd|hunderths\(0))))) # (!\u3_bin2bcd|hunderths\(1) & (\u3_bin2bcd|hunderths\(2) $ ((!\u3_bin2bcd|hunderths\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|hunderths\(1),
	datab => \u3_bin2bcd|hunderths\(2),
	datac => \u3_bin2bcd|hunderths\(3),
	datad => \u3_bin2bcd|hunderths\(0),
	combout => \u6_bcd2seg_100|D_OUT[6]~6_combout\);

-- Location: LCCOMB_X4_Y18_N12
\u3_bin2bcd|bcd1:BCD[12]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[12]~0_combout\ = \u3_bin2bcd|BCD~63_combout\ $ (((\u3_bin2bcd|BCD~62_combout\ & ((!\u3_bin2bcd|BCD~55_combout\) # (!\u3_bin2bcd|BCD~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~63_combout\,
	datab => \u3_bin2bcd|BCD~61_combout\,
	datac => \u3_bin2bcd|BCD~62_combout\,
	datad => \u3_bin2bcd|BCD~55_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[12]~0_combout\);

-- Location: LCFF_X4_Y18_N13
\u3_bin2bcd|thousands[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|thousands\(0));

-- Location: LCCOMB_X4_Y18_N6
\u3_bin2bcd|bcd1:BCD[13]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[13]~0_combout\ = \u3_bin2bcd|BCD~59_combout\ $ (((\u3_bin2bcd|BCD~57_combout\ & ((\u3_bin2bcd|BCD~58_combout\) # (!\u3_bin2bcd|BCD~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|BCD~57_combout\,
	datab => \u3_bin2bcd|BCD~59_combout\,
	datac => \u3_bin2bcd|BCD~60_combout\,
	datad => \u3_bin2bcd|BCD~58_combout\,
	combout => \u3_bin2bcd|bcd1:BCD[13]~0_combout\);

-- Location: LCFF_X4_Y18_N7
\u3_bin2bcd|thousands[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|thousands\(1));

-- Location: LCCOMB_X13_Y18_N14
\u3_bin2bcd|bcd1:BCD[14]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[14]~5_combout\ = (\u3_bin2bcd|reg_in\(8) & (\u3_bin2bcd|reg_in\(7) & ((\u3_bin2bcd|reg_in\(5)) # (\u3_bin2bcd|reg_in\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(5),
	datab => \u3_bin2bcd|reg_in\(8),
	datac => \u3_bin2bcd|reg_in\(6),
	datad => \u3_bin2bcd|reg_in\(7),
	combout => \u3_bin2bcd|bcd1:BCD[14]~5_combout\);

-- Location: LCCOMB_X13_Y18_N8
\u3_bin2bcd|bcd1:BCD[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3_bin2bcd|bcd1:BCD[14]~18_combout\ = (\u3_bin2bcd|reg_in\(10) & (\u3_bin2bcd|bcd1:BCD[14]~5_combout\ & (\u3_bin2bcd|reg_in\(9) & \u3_bin2bcd|reg_in\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|reg_in\(10),
	datab => \u3_bin2bcd|bcd1:BCD[14]~5_combout\,
	datac => \u3_bin2bcd|reg_in\(9),
	datad => \u3_bin2bcd|reg_in\(11),
	combout => \u3_bin2bcd|bcd1:BCD[14]~18_combout\);

-- Location: LCFF_X13_Y18_N9
\u3_bin2bcd|thousands[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3_bin2bcd|bcd1:BCD[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3_bin2bcd|thousands\(2));

-- Location: LCCOMB_X1_Y22_N0
\u7_bcd2seg_1000|D_OUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7_bcd2seg_1000|D_OUT[0]~0_combout\ = (!\u3_bin2bcd|thousands\(1) & (\u3_bin2bcd|thousands\(0) $ (\u3_bin2bcd|thousands\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|thousands\(0),
	datac => \u3_bin2bcd|thousands\(1),
	datad => \u3_bin2bcd|thousands\(2),
	combout => \u7_bcd2seg_1000|D_OUT[0]~0_combout\);

-- Location: LCCOMB_X1_Y22_N10
\u7_bcd2seg_1000|D_OUT[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7_bcd2seg_1000|D_OUT[1]~1_combout\ = (\u3_bin2bcd|thousands\(2) & (\u3_bin2bcd|thousands\(0) $ (\u3_bin2bcd|thousands\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|thousands\(0),
	datac => \u3_bin2bcd|thousands\(1),
	datad => \u3_bin2bcd|thousands\(2),
	combout => \u7_bcd2seg_1000|D_OUT[1]~1_combout\);

-- Location: LCCOMB_X1_Y22_N12
\u7_bcd2seg_1000|D_OUT[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7_bcd2seg_1000|D_OUT[2]~2_combout\ = (!\u3_bin2bcd|thousands\(0) & (\u3_bin2bcd|thousands\(1) & !\u3_bin2bcd|thousands\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|thousands\(0),
	datac => \u3_bin2bcd|thousands\(1),
	datad => \u3_bin2bcd|thousands\(2),
	combout => \u7_bcd2seg_1000|D_OUT[2]~2_combout\);

-- Location: LCCOMB_X1_Y22_N6
\u7_bcd2seg_1000|D_OUT[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7_bcd2seg_1000|D_OUT[3]~3_combout\ = (\u3_bin2bcd|thousands\(0) & (\u3_bin2bcd|thousands\(1) $ (!\u3_bin2bcd|thousands\(2)))) # (!\u3_bin2bcd|thousands\(0) & (!\u3_bin2bcd|thousands\(1) & \u3_bin2bcd|thousands\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|thousands\(0),
	datac => \u3_bin2bcd|thousands\(1),
	datad => \u3_bin2bcd|thousands\(2),
	combout => \u7_bcd2seg_1000|D_OUT[3]~3_combout\);

-- Location: LCCOMB_X1_Y22_N16
\u7_bcd2seg_1000|D_OUT[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7_bcd2seg_1000|D_OUT[4]~4_combout\ = (\u3_bin2bcd|thousands\(0)) # ((!\u3_bin2bcd|thousands\(1) & \u3_bin2bcd|thousands\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|thousands\(0),
	datac => \u3_bin2bcd|thousands\(1),
	datad => \u3_bin2bcd|thousands\(2),
	combout => \u7_bcd2seg_1000|D_OUT[4]~4_combout\);

-- Location: LCCOMB_X1_Y22_N26
\u7_bcd2seg_1000|D_OUT[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7_bcd2seg_1000|D_OUT[5]~5_combout\ = (\u3_bin2bcd|thousands\(0) & ((\u3_bin2bcd|thousands\(1)) # (!\u3_bin2bcd|thousands\(2)))) # (!\u3_bin2bcd|thousands\(0) & (\u3_bin2bcd|thousands\(1) & !\u3_bin2bcd|thousands\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|thousands\(0),
	datac => \u3_bin2bcd|thousands\(1),
	datad => \u3_bin2bcd|thousands\(2),
	combout => \u7_bcd2seg_1000|D_OUT[5]~5_combout\);

-- Location: LCCOMB_X1_Y22_N28
\u7_bcd2seg_1000|D_OUT[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7_bcd2seg_1000|D_OUT[6]~6_combout\ = (\u3_bin2bcd|thousands\(1) & ((!\u3_bin2bcd|thousands\(2)) # (!\u3_bin2bcd|thousands\(0)))) # (!\u3_bin2bcd|thousands\(1) & ((\u3_bin2bcd|thousands\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3_bin2bcd|thousands\(0),
	datac => \u3_bin2bcd|thousands\(1),
	datad => \u3_bin2bcd|thousands\(2),
	combout => \u7_bcd2seg_1000|D_OUT[6]~6_combout\);

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[8]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[0]~0\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(8));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[9]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[1]~1\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(9));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[10]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[2]~2\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(10));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[11]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[3]~3\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(11));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[12]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[4]~4\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(12));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[13]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[5]~5\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(13));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[14]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[6]~6\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(14));

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[15]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_DQ[7]~7\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(15));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SER_TX~I\ : cycloneii_io
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
	datain => \u1_uart|u2_UART_TX|ALT_INV_TX~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SER_TX);

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[0]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(0));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[1]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(1));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[2]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(2));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[3]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(3));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[4]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(4));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[5]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(5));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[6]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(6));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[7]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(7));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[8]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(8));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[9]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(9));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[10]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(10));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[11]~I\ : cycloneii_io
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
	datain => \u2_controller|address_counter\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(11));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[12]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(12));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[13]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(13));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[14]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(14));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[15]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(15));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[16]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(16));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[17]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(17));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_WE_N~I\ : cycloneii_io
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
	datain => \u2_controller|ALT_INV_sram_we_n_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_WE_N);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_OE_N~I\ : cycloneii_io
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
	datain => \u2_controller|ALT_INV_sram_oe_n_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_OE_N);

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_CE_N~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_CE_N);

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_UB_N~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_UB_N);

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_LB_N~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_LB_N);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED1~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED2~I\ : cycloneii_io
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
	datain => \u2_controller|LED2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2);

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED3~I\ : cycloneii_io
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
	datain => \u2_controller|LED3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3);

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED4~I\ : cycloneii_io
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
	datain => \ALT_INV_MODE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED4);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_ONES[0]~I\ : cycloneii_io
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
	datain => \u4_bcd2seg_1|D_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_ONES(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_ONES[1]~I\ : cycloneii_io
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
	datain => \u4_bcd2seg_1|D_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_ONES(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_ONES[2]~I\ : cycloneii_io
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
	datain => \u4_bcd2seg_1|ALT_INV_D_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_ONES(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_ONES[3]~I\ : cycloneii_io
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
	datain => \u4_bcd2seg_1|D_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_ONES(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_ONES[4]~I\ : cycloneii_io
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
	datain => \u4_bcd2seg_1|D_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_ONES(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_ONES[5]~I\ : cycloneii_io
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
	datain => \u4_bcd2seg_1|ALT_INV_D_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_ONES(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_ONES[6]~I\ : cycloneii_io
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
	datain => \u4_bcd2seg_1|D_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_ONES(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_TENS[0]~I\ : cycloneii_io
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
	datain => \u5_bcd2seg_10|D_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_TENS(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_TENS[1]~I\ : cycloneii_io
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
	datain => \u5_bcd2seg_10|D_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_TENS(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_TENS[2]~I\ : cycloneii_io
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
	datain => \u5_bcd2seg_10|ALT_INV_D_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_TENS(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_TENS[3]~I\ : cycloneii_io
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
	datain => \u5_bcd2seg_10|D_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_TENS(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_TENS[4]~I\ : cycloneii_io
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
	datain => \u5_bcd2seg_10|D_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_TENS(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_TENS[5]~I\ : cycloneii_io
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
	datain => \u5_bcd2seg_10|ALT_INV_D_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_TENS(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_TENS[6]~I\ : cycloneii_io
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
	datain => \u5_bcd2seg_10|D_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_TENS(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_HUNDS[0]~I\ : cycloneii_io
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
	datain => \u6_bcd2seg_100|D_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_HUNDS(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_HUNDS[1]~I\ : cycloneii_io
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
	datain => \u6_bcd2seg_100|D_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_HUNDS(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_HUNDS[2]~I\ : cycloneii_io
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
	datain => \u6_bcd2seg_100|ALT_INV_D_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_HUNDS(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_HUNDS[3]~I\ : cycloneii_io
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
	datain => \u6_bcd2seg_100|D_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_HUNDS(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_HUNDS[4]~I\ : cycloneii_io
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
	datain => \u6_bcd2seg_100|D_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_HUNDS(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_HUNDS[5]~I\ : cycloneii_io
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
	datain => \u6_bcd2seg_100|ALT_INV_D_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_HUNDS(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_HUNDS[6]~I\ : cycloneii_io
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
	datain => \u6_bcd2seg_100|D_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_HUNDS(6));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_THOUS[0]~I\ : cycloneii_io
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
	datain => \u7_bcd2seg_1000|D_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_THOUS(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_THOUS[1]~I\ : cycloneii_io
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
	datain => \u7_bcd2seg_1000|D_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_THOUS(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_THOUS[2]~I\ : cycloneii_io
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
	datain => \u7_bcd2seg_1000|D_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_THOUS(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_THOUS[3]~I\ : cycloneii_io
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
	datain => \u7_bcd2seg_1000|D_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_THOUS(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_THOUS[4]~I\ : cycloneii_io
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
	datain => \u7_bcd2seg_1000|D_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_THOUS(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_THOUS[5]~I\ : cycloneii_io
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
	datain => \u7_bcd2seg_1000|D_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_THOUS(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM_THOUS[6]~I\ : cycloneii_io
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
	datain => \u7_bcd2seg_1000|ALT_INV_D_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM_THOUS(6));
END structure;


