library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Utility.all;

entity Layer1 is
generic (n : integer :=4;k: integer :=1);

    Port ( I : in  myArray(0 to k-1) ;
			  en : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst :  in  STD_LOGIC;
			  rst_weights :  in  STD_LOGIC;
			  serial_inp : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out myArray(0 to n-1));
end Layer1;


 
 
architecture Behavioral of Layer1 is
	component Neuron2
	generic (Ks: integer :=k);
			Port (I : in  myArray(0 to Ks-1);
					W : in  myArray(0 to Ks-1);
					BiasIn : in  STD_LOGIC_VECTOR (31 downto 0);
					clk : in  STD_LOGIC;
					Rst :  in  STD_LOGIC;
					outp : out  STD_LOGIC_VECTOR (31 downto 0));
	end component; 
 
signal weights1: myArray (0 to k-1):= (others => "11111111111111101011000010000100");
signal weights2: myArray (0 to k-1):= (others => "11111111111111110000010110110110");
signal weights3: myArray (0 to k-1):= (others => "11111111111111101111111100010101");
signal weights4: myArray (0 to k-1):= (others => "00000000000000010101100111001110");
signal biases: myArray (0 to n-1) := ("00000000000000011101010100011110","00000000000000010010001110001000","00000000000000000111011011100010","00000000000000011011001011100100");
signal clk2: STD_LOGIC ;

begin
clk2 <= clk and en;
Nr1: Neuron2 port map (I,weights1,biases(0),clk2,rst,O(0));
Nr2: Neuron2 port map (I,weights2,biases(1),clk2,rst,O(1));
Nr3: Neuron2 port map (I,weights3,biases(2),clk2,rst,O(2));
Nr4: Neuron2 port map (I,weights4,biases(3),clk2,rst,O(3));

process(clk) 
variable Counter_X : integer range 0 to 255 := 0;
variable Counter_Y : integer range 0 to 255 := 0;
variable Counter_B : integer range 0 to 255 := 0;
variable rst_weight_en : STD_LOGIC := '0';
begin

if rising_edge(clk) then
	if(rst_weights='1') then
		rst_weight_en:='1';
	end if;
		if(rst_weight_en = '1') then
			
			--fill biases first
			if(Counter_B < n  ) then
				biases(Counter_B)<=serial_inp;
				Counter_B:=Counter_B+1;
			end if;
				
		

			--fill weights
		
			if(Counter_Y=0)then
			weights1(Counter_X)<=serial_inp;
			elsif(Counter_Y=1)then
			weights2(Counter_X)<=serial_inp;
			elsif(Counter_Y=2)then
			weights3(Counter_X)<=serial_inp;
			elsif(Counter_Y=3)then
			weights4(Counter_X)<=serial_inp;
			end if;
			Counter_X:=Counter_X+1;
			if(Counter_Y=n)then
				Counter_Y:=0;
				Counter_X:=0;
				Counter_B:=0;
				rst_weight_en:='0';
			end if;
			if(Counter_X=k)then
				Counter_Y:=Counter_Y+1;
				Counter_X:=0;
			end if;
		end if;
	
end if;
end process;

end Behavioral;