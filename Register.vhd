library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Reg is
	generic (width :integer := 16);
    Port ( inp : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clk : in  STD_LOGIC;
			  en : in STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (width-1 downto 0));
end Reg;

architecture Behavioral of Reg is

begin
process(clk)
begin
	if rising_edge(Clk) then
		if en='0' then
			outp <= inp;
		end if;
	end if;

end process;
end Behavioral;

