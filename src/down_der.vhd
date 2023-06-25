library ieee;
use ieee.std_logic_1164.all;

entity down_der is
port (
	ENABLE	: in 	std_logic;	
	A		: in	std_logic;
	CLK		: in    std_logic;
	RST		: in    std_logic;
	Q    	: out   std_logic
);
end entity;

architecture behave of down_der is

	signal a_d1	: std_logic;

begin

	process(CLK, RST,ENABLE)
	begin
		if RST = '1' then
			a_d1 <= '0';
		elsif ENABLE = '1' then	
			if rising_edge(CLK) then
				a_d1 <= A;
			end if;
		end if;	
	end process;

	Q <= a_d1 and not A;
	
end architecture;

