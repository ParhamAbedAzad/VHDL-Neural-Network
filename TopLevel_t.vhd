LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY TopLevel_t IS
END TopLevel_t;
 
ARCHITECTURE behavior OF TopLevel_t IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TopLevel
    PORT( clk : in  STD_LOGIC;
           inp : in  STD_LOGIC_VECTOR (31 downto 0);
           weight : in  STD_LOGIC_VECTOR (31 downto 0);
           WRst : in  STD_LOGIC;
			  done : out STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal inp : STD_LOGIC_VECTOR (31 downto 0) := to_signed(2, inp'length);
   signal weight : STD_LOGIC_VECTOR (31 downto 0);
   signal WRst : std_logic := '0';

 	--Outputs
   signal outp : std_logic_vector(31 downto 0);
   signal done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1000 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TopLevel PORT MAP (
          clk => clk,
          inp => inp,
          weight => weight,
          WRst => WRst,
          done => done,
          outp => outp
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
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

	control <= '1' after 30000 ms;
END;
