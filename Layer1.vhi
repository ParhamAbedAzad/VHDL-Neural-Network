
-- VHDL Instantiation Created from source file Layer1.vhd -- 23:48:31 07/16/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Layer1
	PORT(
		I : IN std_logic_vector(0 to 3);
		en : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic;
		rst_weights : IN std_logic;
		serial_inp : IN std_logic_vector(15 downto 0);
		O : IN std_logic_vector(0 to 3);       
		);
	END COMPONENT;

	Inst_Layer1: Layer1 PORT MAP(
		I => ,
		en => ,
		clk => ,
		rst => ,
		rst_weights => ,
		serial_inp => ,
		O => 
	);


