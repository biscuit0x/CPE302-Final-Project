library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
	port (clk, reset: in std_logic;
			d:in std_logic_vector(7 downto 0);
			q :inout std_logic_vector(7 downto 0)
		  );
end d_ff;

architecture behavioral of d_ff is
signal temp : std_logic_vector(7 downto 0) := "00000000";
begin		  
	process(clk, reset)
	begin
		if(rising_edge(clk)) then
			if (reset='1') then 
				q <= "00000000";
			else
				q <= d;
			end if;
		else 
		 q <= q;
		end if;
	end process;
end;
	