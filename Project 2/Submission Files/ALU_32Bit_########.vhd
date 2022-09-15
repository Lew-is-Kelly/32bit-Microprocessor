library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_32Bit_20335015 is
    Port ( A, B : in std_logic_vector (31 downto 0);
         S : in std_logic_vector (3 downto 0);
         Z : out std_logic_vector (31 downto 0);
         C_out, V : out std_logic
        );
end ALU_32Bit_20335015;

architecture Behavioral of ALU_32Bit_20335015 is

    component RippleCarryAdderSubtractor_32Bit_20335015
        Port ( A, B : in std_logic_vector (31 downto 0);
             S : in std_logic_vector (2 downto 0);
             Sum : out std_logic_vector (31 downto 0);
             C_out, V : out std_logic
            );
    end component;

    component LogicCircuit_32Bit_20335015
        Port ( A, B : in std_logic_vector (31 downto 0);
             S : in std_logic_vector (1 downto 0);
             Z : out std_logic_vector (31 downto 0)
            );
    end component;

    component Multiplexer_32Bit_2to1_20335015
        Port ( A, B : in std_logic_vector(31 downto 0);
             S : in std_logic;
             Z : out std_logic_vector(31 downto 0)
            );
    end component;

    signal w0, w1 : std_logic_vector (31 downto 0) := (others => '0');

    constant gate_delay : time := 2ns;

begin

    RCAS: RippleCarryAdderSubtractor_32Bit_20335015 Port Map (A, B, S (2 downto 0), w0, C_out, V);
    
    LC: LogicCircuit_32Bit_20335015 Port Map (A, B, S (2 downto 1), w1);

    Mux: Multiplexer_32Bit_2to1_20335015 Port Map (w0, w1, S (3), Z);

end Behavioral;