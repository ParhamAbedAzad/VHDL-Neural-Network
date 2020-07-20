library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Utility.all;
 
entity Neuron is
generic (Ks: integer :=10
				);
    Port ( I : in  myArray(0 to Ks-1);
           W : in  myArray(0 to Ks-1);
			  BiasIn : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
			  Rst :  in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
end Neuron;
architecture Behavioral of Neuron is
component ActivationFunc
			port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
			  end component; 
component Adder 
			generic (width :integer := 32);
			port ( inp1 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           inp2 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           outp : out  STD_LOGIC_VECTOR (width-1 downto 0));
			  end component; 
component Multiplier 
			generic (width : integer := 32;
				point: integer :=16);
    Port ( inp1 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           inp2 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           outp : out  STD_LOGIC_VECTOR (width-1 downto 0));
			  end component; 
component Reg
			generic (width :integer := 32);
			Port ( inp : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clk : in  STD_LOGIC;
			  en : in STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (width-1 downto 0));
			  end component; 
component Selector 
			generic (n: integer :=Ks
				);
			port (I : in  myArray(0 to n-1);
           W : in  myArray(0 to n-1);
			  selector : in integer range 0 to n;
           OutI : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
           OutW : out  STD_LOGIC_VECTOR(31 DOWNTO 0)
			  );
			  end component; 
constant bias : STD_LOGIC_VECTOR(31 downto 0) := BiasIn;
signal W1,I1: STD_LOGIC_VECTOR(31 downto 0);
signal Acc: STD_LOGIC_VECTOR(31 downto 0) := BiasIn;
signal AccTemp: STD_LOGIC_VECTOR(31 downto 0);
signal MultOut: STD_LOGIC_VECTOR(31 downto 0);
signal OutTemp: STD_LOGIC_VECTOR(31 downto 0);
signal ActiveEn: STD_LOGIC := '0';
signal RegEn: STD_LOGIC := '1';
signal SelectSig: integer range 0 to Ks := Ks;
begin
Cs: Selector port map(I,W,SelectSig , I1,W1);
Cr: Reg port map (Acc,clk,RegEn,AccTemp);
Cm: Multiplier port map (W1,I1,MultOut);
Ca: Adder port map (MultOut,Acc,AccTemp);
Caf: ActivationFunc port map (Acc,OutTemp);
outp <= OutTemp when ActiveEn='1';
process(clk)
variable Counter : integer range 0 to Ks+1 := 0;
begin
	if rising_edge(Clk) then
	if(rst='1') then
		Counter := 0;
		ActiveEn <= '0';
		RegEn <= '1';
		Acc <= BiasIn;
		selectSig <= Ks;
	else
	if Counter<Ks then
		SelectSig <= Counter;
		Counter := Counter+1;
	elsif Counter = Ks then
		ActiveEn <= '1';
		RegEn <= '0';
		SelectSig <= Counter;
		Counter := Counter+1;
	end if;
	end if;
	end if;
	
end process;

end Behavioral;

