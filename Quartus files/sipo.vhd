library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--16-bit serial in parallel out shift register

entity SIPO is 
	port(clk : in std_logic; 
		  reset : in std_logic; 
		  en : in std_logic;
		  d : in std_logic;
		  q : out std_logic_vector(15 downto 0)
		  );
end SIPO;


architecture rtl of SIPO is

signal temp: std_logic_vector(31 downto 0):="00000000000000000000000000000000";

begin
	process (clk, reset, en) begin
		if (reset = '1') then
				q <= "0000000000000000";
				
		elsif(falling_edge(clk) and en='1') then
			if (en = '1') then
			temp(0) <= d;
			temp(1) <= temp(0);
			temp(2) <= temp(1);
			temp(3) <= temp(2);
			temp(4) <= temp(3);
			temp(5) <= temp(4);
			temp(6) <= temp(5);
			temp(7) <= temp(6);
			temp(8) <= temp(7);
			temp(9) <= temp(8);
			temp(10) <= temp(9);
			temp(11) <= temp(10);
			temp(12) <= temp(11);
			temp(13) <= temp(12);
			temp(14) <= temp(13);
			temp(15) <= temp(14);
			temp(16) <= temp(15);
			temp(17) <= temp(16);
			temp(18) <= temp(17);
			temp(19) <= temp(18);
			temp(20) <= temp(19);
			temp(21) <= temp(20);
			temp(22) <= temp(21);
			temp(23) <= temp(22);
			temp(24) <= temp(23);
			temp(25) <= temp(24);
			temp(26) <= temp(25);
			temp(27) <= temp(26);
			temp(28) <= temp(27);
			temp(29) <= temp(28);
			temp(30) <= temp(29);
			temp(31) <= temp(30);	
			end if;
		end if;
	q <= temp(31 downto 16);	
	end process;
end rtl;  
