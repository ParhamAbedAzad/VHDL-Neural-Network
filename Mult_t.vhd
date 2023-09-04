
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY Mult_t IS
END Mult_t;
 
ARCHITECTURE behavior OF Mult_t IS 
 
 
    COMPONENT Multiplier
    PORT(
         inp1 : IN  std_logic_vector(31 downto 0);
         inp2 : IN  std_logic_vector(31 downto 0);
         outp : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inp1 : std_logic_vector(31 downto 0) := "11111111111111111110001111011000";
   signal inp2 : std_logic_vector(31 downto 0) := "11111111111111111110001111011000";

 	--Outputs
   signal outp : std_logic_vector(31 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplier PORT MAP (
          inp1 => inp1,
          inp2 => inp2,
          outp => outp
        );


END;
