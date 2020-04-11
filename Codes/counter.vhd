library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- 4-bit counter
entity counter_4 is 
	port(clk : in std_logic; 
		  reset : in std_logic; 
		  q : out std_logic_vector(2 downto 0)
		  );
end counter_4;


architecture behavioral of counter_4 is
signal temp: std_logic_vector(2 downto 0):="000";
begin
	process (clk, reset) begin
		if (reset = '1') then
			temp <= "000";
		elsif (clk'event and clk = '1') then
			temp <= temp + 1;
		end if;
	end process;
	q <= temp;
end behavioral;  
