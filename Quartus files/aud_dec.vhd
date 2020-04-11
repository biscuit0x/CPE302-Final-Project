library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

--audio data decoder
entity aud_dec is 
	port(clk : in std_logic;
		  ave : in std_logic_vector(15 downto 0);
		  sig : out std_logic_vector(7 downto 0)
		  );
end aud_dec;

architecture rtl of aud_dec is
signal num : unsigned(15 downto 0) := (others=>'0');
	begin
	process (ave) begin
		num <= unsigned(ave); 						
		if ((32767 = num) or (num = 32768) or (num = 16384) or (num=49151)) then 
			sig <= "10000000";

		--elsif (((32400 < num) and (36800 > num) )or (50 > num)) then
		--	sig <= "00100000";	
	--	elsif (32200 < num)    then 
		--sig <= "10000000";
	--	else
	--	sig <= "01000000";
--	end if;


	elsif(32400 < num) then
		sig <= "00100000";
	elsif(31900 < num) then 
		sig <= "01000000";
	else 
		sig <= "10000000";
	end if;
		
	end process; 
end rtl;
			