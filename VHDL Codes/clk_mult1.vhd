library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- clock multiplier1 (GPIO)
entity clk_mult1 is 
	port(clk : in std_logic; 
		  q : out std_logic
		  );
end clk_mult1;


architecture behav of clk_mult1 is
signal temp: integer range 0 to 3000 := 0;
signal clk_out : std_logic := '0';
begin
	process (clk) begin
		if (rising_edge(clk)) then
			temp <= temp + 1;
			if (temp = 3000) then
			clk_out <= not clk_out;
			temp <= 0;
			end if;
		end if;
	end process;
	q <= clk_out;
end behav;  