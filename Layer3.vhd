library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Utility.all;

entity Layer3 is
generic (n : integer :=3;k: integer :=5);

    Port ( I : in  myArray(0 to k-1) ;
			  en : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst :  in  STD_LOGIC;
			  rst_weights :  in  STD_LOGIC;
			  serial_inp : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out myArray(0 to n-1));
end Layer3;




architecture Behavioral of Layer3 is
	component Neuron
	generic (Ks: integer :=k);
			Port (I : in  myArray(0 to Ks-1);
					W : in  myArray(0 to Ks-1);
					BiasIn : in  STD_LOGIC_VECTOR (31 downto 0);
					clk : in  STD_LOGIC;
					Rst :  in  STD_LOGIC;
					outp : out  STD_LOGIC_VECTOR (31 downto 0));
	end component; 

signal weights1: myArray (0 to k-1):= ("00000000000000001100111001111101","11111111111111111101111101101010","00000000000000000101111010111000","00000000000000001011001111110001","00000000000000001100111001111101");
signal weights2: myArray (0 to k-1):= ("00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101");
signal weights3: myArray (0 to k-1):= ("00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101");
signal biases: myArray (0 to n-1)  :=("00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101");

begin
Nr1: Neuron port map (I,weights1,biases(0),clk,rst,O(0));
Nr2: Neuron port map (I,weights2,biases(1),clk,rst,O(1));
Nr3: Neuron port map (I,weights3,biases(2),clk,rst,O(2));
                                       

process(clk)
variable Counter_X : integer range 0 to 255 := 0;
variable Counter_Y : integer range 0 to 255 := 0;
variable Counter_B : integer range 0 to 255 := 0;

variable rst_weight_en : STD_LOGIC;
begin

if rising_edge(clk) then
	if(rst_weights='1') then
		rst_weight_en:='1';
	end if;
	if(rst_weight_en = '1') then
			if(Counter_B <= n ) then
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