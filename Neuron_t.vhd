LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.Utility.all;
 
ENTITY Neuron_t IS
END Neuron_t;
 
ARCHITECTURE behavior OF Neuron_t IS 
 
 
    COMPONENT Neuron2
	 generic (Ks: integer :=3
				);
    PORT(
         I : IN  myArray(0 to 2);
         W : IN  myArray(0 to 2);
         BiasIn : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         Rst : IN  std_logic;
         outp : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I : myArray(0 to 2) := ("00000000000000000101000001001110","00000000000000000101000001001110","00000000000000000101000001001110"); -- 15 & 1.6 
   signal W : myArray(0 to 2) := ("00000000000000000101000001001110","00000000000000000101000001001110","00000000000000000101000001001110"); -- 4 & 6.4 
   signal BiasIn : std_logic_vector(31 downto 0) := "11111111111111111110001111011000"; -- -0.11
	--  FULL ANSWER MUST BE 0.25+60+10.24 = 70.48
   signal clk : std_logic := '0';
   signal Rst : std_logic := '0';

 	--Outputs
   signal outp : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Neuron2 PORT MAP (
          I => I,
          W => W,
          BiasIn => BiasIn,
          clk => clk,
          Rst => Rst,
          outp => outp
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

      wait for clk_period*10;

   end process;
END;
