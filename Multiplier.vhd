library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
entity Multiplier is
	generic (width : integer := 16;
				point: integer :=8);
    Port ( inp1 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           inp2 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           outp : out  STD_LOGIC_VECTOR (width-1 downto 0));
end Multiplier;

architecture Behavioral of Multiplier is
signal temp: STD_LOGIC_VECTOR (2*width-1 downto 0);
begin
temp <= inp1*inp2;
outp <= temp((width + point)-1 downto point);
end Behavioral;
