library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Utility.all;

entity Layer4 is
generic (n : integer :=1;k: integer :=3);

    Port ( I : in  myArray(0 to k-1) ;
			  en : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst :  in  STD_LOGIC;
			  rst_weights :  in  STD_LOGIC;
			  serial_inp : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out myArray(0 to n-1));
end Layer4;




architecture Behavioral of Layer4 is
	component Neuron
	generic (Ks: integer :=k);
			Port (I : in  myArray(0 to Ks-1);
					W : in  myArray(0 to Ks-1);
					inp : in  myArray(0 to Ks-1);
					clk : in  STD_LOGIC;
					Rst :  in  STD_LOGIC;
					outp : out  STD_LOGIC_VECTOR (31 downto 0));
	end component; 

signal weights1: myArray (0 to k-1);
signal biases: myArray (0 to n-1);

begin
Nr1: Neuron port map (I,weights1,biases,clk,rst,O(0));


process(clk)
variable Counter_X : integer range 0 to 255 := 0;
variable Counter_Y : integer range 0 to 255 := 0;
variable rst_weight_en : STD_LOGIC;
begin

--weights1 <= (("00000000.00000000", "00000000000000"),("000000000000000", "0011111110000000"));

if rising_edge(clk) then
	if(rst_weights='1') then
		rst_weight_en:='1';
	end if;
		if(rst_weight_en = '1') then
		--fill arr
		
			if(Counter_Y=0)then
			weights1(Counter_X)<=serial_inp;
			end if;
			Counter_X:=Counter_X+1;
			
		if(Counter_Y=n)then
			Counter_Y:=0;
			Counter_X:=0;
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