library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ActivationFunc is
    Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
end ActivationFunc;

architecture Behavioral of ActivationFunc is
constant zero : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
begin
outp <= inp;

end Behavioral;

