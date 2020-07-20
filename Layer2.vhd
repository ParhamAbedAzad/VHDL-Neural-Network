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
	component Neuron
	generic (Ks: integer :=k);
			Port (I : in  myArray(0 to Ks-1);
					W : in  myArray(0 to Ks-1);
					BiasIn : in  STD_LOGIC_VECTOR (31 downto 0);
					clk : in  STD_LOGIC;
					Rst :  in  STD_LOGIC;
					outp : out  STD_LOGIC_VECTOR (31 downto 0));
	end component; 

weights1 <= ("00000000000000001010101101110001");
weights2 <= ("00000000000000001001110111110011");
weights3 <= ("11111111111111100110011000001011");
weights4 <= ("11111111111111100110011000001011");
weights5 <= ("11111111111111100110011000001011");
signal biases: myArray (0 to n-1);

begin
Nr1: Neuron port map (I,weights1,biases(0),clk,rst,O(0));
Nr2: Neuron port map (I,weights2,biases(1),clk,rst,O(1));
Nr3: Neuron port map (I,weights3,biases(2),clk,rst,O(2));
Nr4: Neuron port map (I,weights4,biases(3),clk,rst,O(3));
Nr5: Neuron port map (I,weights5,biases(4),clk,rst,O(4));
process(clk)
variable Counter_X : integer range 0 to 255 := 0;
variable Counter_Y : integer range 0 to 255 := 0;
variable Counter_B : integer range 0 to 255 := 0;
variable rst_weight_en : STD_LOGIC;
begin

weights1 <= ("00000000000000001100111001111101","11111111111111111101111101101010","00000000000000000101111010111000","00000000000000001011001111110001");
weights2 <= ("00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101");
weights3 <= ("00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101");
weights4 <= ("00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101");
weights5 <= ("00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101","00000000000000001100111001111101");

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