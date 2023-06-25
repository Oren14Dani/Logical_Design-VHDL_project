library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity sim_sram is
port (
	SRAM_ADDR		: in    std_logic_vector(17 downto 0);	-- sram address
	SRAM_DQ			: inout std_logic_vector(15 downto 0);	-- sram data
	SRAM_WE_N		: in    std_logic;						-- sram write enable 
	SRAM_OE_N       : in    std_logic;						-- sram output enable
	SRAM_UB_N       : in    std_logic;						-- sram upper byte enable 
	SRAM_LB_N       : in    std_logic;						-- sram lower byte enable
	SRAM_CE_N       : in    std_logic						-- sram chip enable
);
end entity;

architecture sim of sim_sram is


	constant Tpd1			: time := 2 ns;
	constant Tpd2			: time := 2 ns;
	constant MEM_SIZE		: integer := 2**8;

	type mem_array_type is array(0 to MEM_SIZE-1) of std_logic_vector(15 downto 0);

	signal mem_addr_i		: integer;
	signal sram_dq_in		: std_logic_vector(15 downto 0);
	
	
	shared variable mem_array	: mem_array_type;

begin

	mem_addr_i <= conv_integer(SRAM_ADDR);
	sram_dq_in <= transport SRAM_DQ after Tpd1;

	mem_write: process(SRAM_CE_N, SRAM_UB_N, SRAM_LB_N, SRAM_WE_N, mem_addr_i, sram_dq_in)
	begin
		if mem_addr_i < MEM_SIZE then
			if SRAM_CE_N = '0' and SRAM_WE_N = '0' then
				if SRAM_LB_N = '0' then
					mem_array(mem_addr_i)(7 downto 0) := sram_dq_in(7 downto 0);
				end if;
			
				if SRAM_UB_N = '0' then
					mem_array(mem_addr_i)(15 downto 8) := sram_dq_in(15 downto 8);
				end if;
			end if;
		end if;
	end process;
	
	
	SRAM_DQ(7 downto 0) <= transport mem_array(mem_addr_i)(7 downto 0) after Tpd2 when (SRAM_CE_N = '0' and SRAM_OE_N = '0' and SRAM_LB_N = '0') else (others=>'Z') after Tpd2;
	SRAM_DQ(15 downto 8) <= transport mem_array(mem_addr_i)(15 downto 8) after Tpd2 when (SRAM_CE_N = '0' and SRAM_OE_N = '0' and SRAM_LB_N = '0') else (others=>'Z') after Tpd2;
			
end architecture;
