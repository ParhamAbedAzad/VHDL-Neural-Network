library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
entity Adder is
	generic (width :integer := 32);
    Port ( inp1 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           inp2 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           outp : out  STD_LOGIC_VECTOR (width-1 downto 0));
end Adder;

architecture Behavioral of Adder is

begin
outp <= inp1 + inp2;

end Behavioral;

