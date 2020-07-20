library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Controller is
    Port ( WRST : in STD_LOGIC;
			  clk : in  STD_LOGIC;
			  rst : in STD_LOGIC;
           en1 : out  STD_LOGIC;
           en2 : out  STD_LOGIC;
           en3 : out  STD_LOGIC;
			  done : out STD_LOGIC := '1');
end Controller;

architecture Behavioral of Controller is
constant clkNum1 : integer := 8;
constant clkNum2 : integer := 8;
constant clkNum3 : integer := 8;
constant clkNum4 : integer := 8;
signal reseting : std_logic;
begin
process(clk)
variable Counter : integer range 0 to 15 := 0;--4+5+3+1
variable Counter2 : integer range 0 to 255 := 0;--4+5+3+1
begin
if rising_edge(Clk) then
	if reseting='1' then
		
		counter2 <= counter2 + 1;
	elsif rst='1' or WRST='1' then
		DONE <= '0';
		Counter := 0;
		en1 <= '0';
		en2 <= '0';
		en3 <= '0';
		reseting := '1';
	elsif Counter < 12 then
	Counter <= Counter+1;
		if Counter = 4 then
			en1 <= '0';
			en2 <= '1';
		elsif Counter = 9 then
			en2 <= '0';
			en3 <= '1';
		elsif Counter = 12 then
			en3 <= '0';
			DONE <= '1';
		end if;
	end if;
end if;
end process;
end Behavioral;

