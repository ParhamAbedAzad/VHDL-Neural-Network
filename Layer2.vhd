library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Utility.all;

entity Layer2 is
generic (n : integer :=5;k: integer :=4);

    Port ( I : in  myArray(0 to k-1) ;
			  en : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst :  in  STD_LOGIC;
			  rst_weights :  in  STD_LOGIC;
			  serial_inp : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out myArray(0 to n-1));
end Layer2;




architecture Behavioral of Layer2 is
	component neuron2
	generic (Ks: integer :=k);
			Port (I : in  myArray(0 to Ks-1);
					W : in  myArray(0 to Ks-1);
					BiasIn : in  STD_LOGIC_VECTOR (31 downto 0);
					clk : in  STD_LOGIC;
					Rst :  in  STD_LOGIC;
					outp : out  STD_LOGIC_VECTOR (31 downto 0));
	end component; 
signal weights1: myArray (0 to k-1):= ("11111111111111110000010011111000","11111111111111111100010101000111","11111111111111110010111011101101","11111111111111110100000001011100");
signal weights2: myArray (0 to k-1):= ("00000000000000000101001001011010","00000000000000010010100000101010","11111111111111111001001001001110","00000000000000000100011011110000");
signal weights3: myArray (0 to k-1):= ("00000000000000000001100110111010","11111111111111111001001001001000","11111111111111110011111100111100","11111111111111111000001100100000");
signal weights4: myArray (0 to k-1):= ("00000000000000000001001110010101","11111111111111111100000110111110","11111111111111101111100101011111","11111111111111110111111100001110");
signal weights5: myArray (0 to k-1):= ("00000000000000000000010010010101","11111111111111111110111111101101","00000000000000001010110110000100","00000000000000001100101110000101");
signal biases: myArray (0 to n-1) :=  ("00000000000000011001001101000000","11111111111111110111111011100000","00000000000000010101011001000101","00000000000000011000110101111101","00000000000000000100111100110100");
signal clk2: STD_LOGIC ;

begin
clk2 <= clk and en;
Nr1: neuron2 port map (I,weights1,biases(0),clk2,rst,O(0));
Nr2: neuron2 port map (I,weights2,biases(1),clk2,rst,O(1));
Nr3: neuron2 port map (I,weights3,biases(2),clk2,rst,O(2));
Nr4: neuron2 port map (I,weights4,biases(3),clk2,rst,O(3));
Nr5: neuron2 port map (I,weights5,biases(4),clk2,rst,O(4));
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
			if(Counter_B < n ) then
				biases(Counter_B)<=serial_inp;
				Counter_B:=Counter_B+1;
			end if;
		
		
		--fill arr
			
			
		if(Counter_Y=0)then
		weights1(Counter_X)<=serial_inp;
		elsif(Counter_Y=1)then
		weights2(Counter_X)<=serial_inp;
		elsif(Counter_Y=2)then
		weights3(Counter_X)<=serial_inp;
		elsif(Counter_Y=3)then
		weights4(Counter_X)<=serial_inp;
		elsif(Counter_Y=4)then
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
	--F
	end if;
end if;
end process;

end Behavioral;