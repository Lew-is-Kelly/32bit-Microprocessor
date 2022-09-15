library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FunctionalUnit_32Bit_20335015 is
    Port ( A, B : in std_logic_vector (31 downto 0);
         S : in std_logic_vector (4 downto 0);
         Sum : out std_logic_vector (31 downto 0);
         C_out, V, Z, N : out std_logic
        );
end FunctionalUnit_32Bit_20335015;

architecture Behavioral of FunctionalUnit_32Bit_20335015 is

    component ALU_32Bit_20335015
        Port ( A, B : in std_logic_vector (31 downto 0);
             S : in std_logic_vector (3 downto 0);
             Z : out std_logic_vector (31 downto 0);
             C_out, V : out std_logic
            );
    end component;

    component SR_SL_ShiftUnit_20335015
        Port ( A : in std_logic_vector (31 downto 0);
             S : in std_logic_vector (1 downto 0);
             Z :out std_logic_vector (31 downto 0)
            );
    end component;

    component Multiplexer_32Bit_2to1_20335015
        Port ( A, B : in std_logic_vector(31 downto 0);
             S : in std_logic;
             Z : out std_logic_vector(31 downto 0)
            );
    end component;

    component Negative_Detect_Logic_20335015
        Port ( A : in std_logic_vector (31 downto 0);
             Z : out std_logic
            );
    end component;

    component Zero_Detect_Logic_20335015
        Port ( A : in std_logic_vector (31 downto 0);
             Z : out std_logic
            );
    end component;

    signal w0, w1, w2 : std_logic_vector (31 downto 0);

    constant gate_delay : time := 2ns;

begin

    ALU: ALU_32Bit_20335015 Port Map (A, B, S(3 downto 0), w0, C_out, V);

    Shifter: SR_SL_ShiftUnit_20335015 Port Map (B, S(3 downto 2), w1);

    Mux: Multiplexer_32Bit_2to1_20335015 Port Map (w0, w1, S(4), w2);

    NDetect: Negative_Detect_Logic_20335015 Port Map (w2, N);

    ZDetect: Zero_Detect_Logic_20335015 Port Map (w2, Z);
    
    Sum <= w2;

end Behavioral;