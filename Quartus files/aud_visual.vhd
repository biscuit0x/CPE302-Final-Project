library ieee;
use ieee.std_logic_1164.all;

entity aud_visual is
	port (
		  d:in std_logic_vector(7 downto 0);
		q :inout std_logic_vector(7 downto 0)
		  );
end aud_visual;

architecture behavioral of aud_visual is
signal temp : std_logic_vector(7 downto 0) := "00000000";
begin		  
process(d)
	begin
		case d is 
		 when "10000000" => q <= "01000000";
		 when "01000000" => q <= "00100000";
		 when "00100000" => q <= "00010000";
		 when "00010000" => q <= "00001000";
		 when "00001000" => q <= "00000100";
		 when "00000100" => q <= "00000010";
		 when "00000010" => q <= "00000010";
		 when others => q <= "00000001";
		 end case;
		 end process;
		 end behavioral;


	