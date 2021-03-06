library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
	port (clk, reset: in std_logic;
		  d, q :inout std_logic_vector(7 downto 0)
		  );
end d_ff;

architecture behavioral of d_ff is
begin		  
	process(clk, reset)
	begin
		if (reset = '1') then
			q <= "00000000";
		elsif (clk'event and clk = '1') then
			q <= d;
		end if;
	end process;
end;
	
	