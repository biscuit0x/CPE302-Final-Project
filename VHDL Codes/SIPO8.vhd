library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--8-bit serial in parallel out shift register

entity SIPO8 is 
	port(clk : in std_logic; 
		  reset : in std_logic; 
		  en : in std_logic;
		  d : in std_logic;
		  q : out std_logic_vector(7 downto 0)
		  );
end SIPO8;


architecture rtl of SIPO8 is
signal temp : std_logic_vector(7 downto 0):="00000000";
begin
	process (clk, reset, en) begin
		if (reset = '1') then
				q <= "00000000";
				
		elsif(falling_edge(clk) and en='1') then
			temp(0) <= d;
			temp(1) <= temp(0);
			temp(2) <= temp(1);
			temp(3) <= temp(2);
			temp(4) <= temp(3);
			temp(5) <= temp(4);
			temp(6) <= temp(5);
			temp(7) <= temp(6);

		end if;
		q <= temp;
	end process;
end rtl;  
