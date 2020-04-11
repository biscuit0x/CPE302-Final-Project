library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- clock multiplier 2 (d_ff 2)
entity clk_mult3 is 
	port(clk : in std_logic; 
		  q : out std_logic
		  );
end clk_mult3;


architecture behav of clk_mult3 is
signal temp: integer range 0 to 2000 := 0;
signal clk_out : std_logic := '0';
begin
	process (clk) begin
		if (rising_edge(clk)) then
			temp <= temp + 1;
			if (temp = 2000) then
			clk_out <= not clk_out;
			temp <= 0;
			end if;
		end if;
	end process;
	q <= clk_out;
end behav;  