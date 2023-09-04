library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Utility.all;
entity TopLevel is
    Port ( clk : in  STD_LOGIC;
           inp : in  STD_LOGIC_VECTOR (31 downto 0);
           weight : in  STD_LOGIC_VECTOR (31 downto 0);
           WRst : in  STD_LOGIC;
			  rst : in  STD_LOGIC;
			  done : out STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
end TopLevel;

architecture Behavioral of TopLevel is
component Layer1	
		generic (n : integer :=4;k: integer :=1);
			Port ( I : in  myArray(0 to k-1) ;
			  en : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst :  in  STD_LOGIC;
			  rst_weights :  in  STD_LOGIC;
			  serial_inp : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out myArray(0 to n-1));
	end component;
component Layer2	
		generic (n : integer :=5;k: integer :=4);
			Port ( I : in  myArray(0 to k-1) ;
			  en : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst :  in  STD_LOGIC;
			  rst_weights :  in  STD_LOGIC;
			  serial_inp : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out myArray(0 to n-1));
	end component;
component Layer3
		generic (n : integer :=3;k: integer :=5);
			Port ( I : in  myArray(0 to k-1) ;
			  en : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst :  in  STD_LOGIC;
			  rst_weights :  in  STD_LOGIC;
			  serial_inp : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out myArray(0 to n-1));
	end component;
component Layer4	
		generic (n : integer :=1;k: integer :=3);
			Port ( I : in  myArray(0 to k-1) ;
			  en : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst :  in  STD_LOGIC;
			  rst_weights :  in  STD_LOGIC;
			  serial_inp : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out STD_LOGIC_VECTOR (31 downto 0));
	end component;
component Controller
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
	end component;
signal Connection1: myArray (0 to 0);
signal Connection2: myArray (0 to 3);
signal Connection3: myArray (0 to 4);
signal Connection4: myArray (0 to 2);
signal en1,en2,en3,en4,RSTW,RSTW1,RSTW2,RSTW3,RSTW4: std_logic;
begin
Connection1(0) <= inp;
Lr1: Layer1 port map (Connection1,en1,clk,rst,RSTW1,weight,Connection2);
Lr2: Layer2 port map (Connection2,en2,clk,rst,RSTW2,weight,Connection3);
Lr3: Layer3 port map (Connection3,en3,clk,rst,RSTW3,weight,Connection4);
Lr4: Layer4 port map (Connection4,en4,clk,rst,RSTW4,weight,OUTP);
Cntr: Controller port map(WRST,CLK,RST,En1,En2,En3,En4,done,RSTW1,RSTW2,RSTW3,RSTW4);

end Behavioral;

