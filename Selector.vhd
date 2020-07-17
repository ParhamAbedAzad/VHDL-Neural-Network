library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use work.Utility.all;
entity Selector is
	generic (n: integer :=10
				);
    Port ( I : in  myArray(0 to n-1);
           W : in  myArray(0 to n-1);
			  selector : in integer range 0 to n;
           OutI : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
           OutW : out  STD_LOGIC_VECTOR(31 DOWNTO 0)
			  );
end Selector;
architecture Behavioral of Selector is
begin
		OutI <= I(selector) when selector<n else (others => '0');
		OutW <= W(selector) when selector<n else (others => '0');
end Behavioral;
 
 