LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.Utility.all;

 
ENTITY Layer1_t IS
END Layer1_t;
 
ARCHITECTURE behavior OF Layer1_t IS 
 
 
    COMPONENT Layer1
    PORT(
         I : IN  MYARRAY(0 downto 0);
         en : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         rst_weights : IN  std_logic;
         serial_inp : IN  std_logic_vector(31 downto 0);
         O : OUT  MYARRAY(0 to 3)
        );
    END COMPONENT;
    

   --Inputs
   signal I : MYARRAY(0 downto 0) := (others => "00000000000000000101000001001110");
   signal en : std_logic := '1';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal rst_weights : std_logic := '0';
   signal serial_inp : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O : MYARRAY(0 to 3);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Layer1 PORT MAP (
          I => I,
          en => en,
          clk => clk,
          rst => rst,
          rst_weights => rst_weights,
          serial_inp => serial_inp,
          O => O
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
