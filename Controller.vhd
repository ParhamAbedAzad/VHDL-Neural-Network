library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Controller is
    Port ( WRST : in STD_LOGIC;
			  clk : in  STD_LOGIC;
			  rst : in STD_LOGIC;
           en1 : out  STD_LOGIC;
           en2 : out  STD_LOGIC;
           en3 : out  STD_LOGIC;
           en4 : out  STD_LOGIC;
			  done : out STD_LOGIC := '1';
			  WRST1 : out STD_LOGIC := '0';
			  WRST2 : out STD_LOGIC := '0';
			  WRST3 : out STD_LOGIC := '0';
			  WRST4 : out STD_LOGIC := '0'
			  );
end Controller;

architecture Behavioral of Controller is
constant clkNum1 : integer := 8;
constant clkNum2 : integer := 8;
constant clkNum3 : integer := 8;
constant clkNum4 : integer := 8;
constant CalClkNum1 : integer := 2;
constant CalClkNum2 : integer := 8;
constant CalClkNum3 : integer := 8;
constant CalClkNum4 : integer := 8;
signal reseting : std_logic := '0';
begin
process(clk)
variable Counter : integer range 0 to 15 := 0;--4+5+3+1
variable Counter2 : integer range 0 to 255 := 0;--4+5+3+1
begin
if rising_edge(Clk) then
	if reseting='1' then
		if(Counter2 < clkNum1) then
			WRST1 <= '1';
		elsif(Counter2 < clkNum2) then
			WRST1 <= '0';
			WRST2 <= '1';
		elsif(Counter2 < clkNum3) then
			WRST2 <= '0';
			WRST3 <= '1';
		elsif(Counter2 < clkNum4) then
			WRST3 <= '0';
			WRST4 <= '1';
		else
			WRST4 <= '0';
			reseting <= '1';
			Counter2 := 0;
		counter2 := counter2 + 1;
		end if;
	elsif rst='1' or WRST='1' then
		DONE <= '0';
		Counter := 0;
		en1 <= '0';
		en2 <= '0';
		en3 <= '0';
		if(WRST='1') then
			reseting <= '1';
		end if;
	elsif Counter < 15 then
		if Counter = 1 then
			en1 <= '0';
			en2 <= '1';
		elsif Counter = 5 then
			en2 <= '0';
			en3 <= '1';
		elsif Counter = 10 then
			en3 <= '0';
			en4 <= '1';
		elsif Counter = 13 then
			en4 <= '0';
			done <= '1';
		end if;
	Counter := Counter+1;
	end if;
end if;
end process;
end Behavioral;

