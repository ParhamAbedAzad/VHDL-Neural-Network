library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ActivationFunc2 is
    Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
end ActivationFunc2;

architecture Behavioral of ActivationFunc2 is
constant zero : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
begin
outp <= zero when inp(31)='1' else
inp when inp<"00000000000000010000000000000000" else
"00000000000000010000000000000000";
end Behavioral;

