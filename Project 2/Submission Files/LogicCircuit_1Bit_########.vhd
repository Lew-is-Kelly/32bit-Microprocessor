library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicCircuit_1Bit_20335015 is
    Port ( A, B : in std_logic;
         S : in std_logic_vector (1 downto 0);
         Z : out std_logic
        );
end ;

architecture Behavioral of LogicCircuit_1Bit_20335015 is

    component Multiplexer_1Bit_4to1_20335015
        Port ( in0, in1, in2, in3 : in std_logic;
             S : in std_logic_vector (1 downto 0);
             Z : out std_logic
            );
    end component;

    constant gate_delay : time := 2ns;

begin

    mux: Multiplexer_1Bit_4to1_20335015 Port Map (A and B, A or B, A xor B, not A, S, Z);

end Behavioral;