library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Datapath_32Bit_20335015 is
    Port ( Data_In, Const_In : in std_logic_vector (31 downto 0);
         DR, SA, SB, FS : in std_logic_vector (4 downto 0);
         Clock, TA, TB, TD, RW, MD, MB : in std_logic;
         C, V, Z, N : out std_logic;
         Data_Out, Addr_Out : out std_logic_vector (31 downto 0)
        );
end Datapath_32Bit_20335015;

architecture Behavioral of Datapath_32Bit_20335015 is

    component RegisterFile_32Bit_32Plus1_20335015
        Port ( DR, AA, BA : in std_logic_vector (4 downto 0);
             RW,  Clock, TA, TB, TD : in std_logic;
             Data : in std_logic_vector (31 downto 0);
             A, B : out std_logic_vector (31 downto 0)
            );
    end component;

    component FunctionalUnit_32Bit_20335015
        Port ( A, B : in std_logic_vector (31 downto 0);
             S : in std_logic_vector (4 downto 0);
             Sum : out std_logic_vector (31 downto 0);
             C_out, V, Z, N : out std_logic
            );
    end component;

    component Multiplexer_32Bit_2to1_20335015
        Port ( A, B : in std_logic_vector (31 downto 0);
             S : in std_logic;
             Z : out std_logic_vector (31 downto 0)
            );
    end component;

    signal w0, w1, w2, w3, w4 : std_logic_vector (31 downto 0) := (others => '0');

begin

    MuxD: Multiplexer_32Bit_2to1_20335015 Port Map (w0, Data_In, MD, w1);
    
    FunUnit: FunctionalUnit_32Bit_20335015 Port Map (w4, w2, FS, w0, C, V, Z, N);
    
    RegFile: RegisterFile_32Bit_32Plus1_20335015 Port Map (DR, SA, SB, RW, Clock, TA, TB, TD, w1, w4, w3);
    
    MuxB: Multiplexer_32Bit_2to1_20335015 Port Map (w3, Const_In, MB, w2);

    Data_Out <= w2;
    Addr_Out <= w4;

end Behavioral;