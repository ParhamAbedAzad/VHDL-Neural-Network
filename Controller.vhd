library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Controller is
    Port ( clk : in  STD_LOGIC;
			  rst : in STD_LOGIC;
           en1 : out  STD_LOGIC;
           en2 : out  STD_LOGIC;
           en3 : out  STD_LOGIC);
end Controller;

architecture Behavioral of Controller is
begin
process(clk)
variable Counter : integer range 0 to 15 := 0;--4+5+3+1
begin
if rising_edge(Clk) then
	if rst=1 and Counter >  12 then
		Counter := 0;
	else
	Counter <= Counter+1;
		if Counter = 4 then
			en1 <= '0';
			en2 <= '1';
		elsif Counter = 9 then
			en2 <= '0';
			en3 <= '1';
		elsif Counter = 12 then
			en3 <= '0';
		end if;
	end if;
end if;
end process;
end Behavioral;

