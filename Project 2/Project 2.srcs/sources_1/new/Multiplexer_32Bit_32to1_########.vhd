library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_32Bit_32to1_20335015 is
    Port ( in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19,
 in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31 : in std_logic_vector(31 downto 0);
         S : in std_logic_vector(4 downto 0);
         Z : out std_logic_vector(31 downto 0)
        );
end Multiplexer_32Bit_32to1_20335015;

architecture Behavioral of Multiplexer_32Bit_32to1_20335015 is

    constant gate_delay : time := 2ns;

begin

    Z <= in0 after gate_delay when S = "00000" else
 in1 after gate_delay when S = "00001" else
 in2 after gate_delay when S = "00010" else
 in3 after gate_delay when S = "00011" else
 in4 after gate_delay when S = "00100" else
 in5 after gate_delay when S = "00101" else
 in6 after gate_delay when S = "00110" else
 in7 after gate_delay when S = "00111" else
 in8 after gate_delay when S = "01000" else
 in9 after gate_delay when S = "01001" else
 in10 after gate_delay when S = "01010" else
 in11 after gate_delay when S = "01011" else
 in12 after gate_delay when S = "01100" else
 in13 after gate_delay when S = "01101" else
 in14 after gate_delay when S = "01110" else
 in15 after gate_delay when S = "01111" else
 in16 after gate_delay when S = "10000" else
 in17 after gate_delay when S = "10001" else
 in18 after gate_delay when S = "10010" else
 in19 after gate_delay when S = "10011" else
 in20 after gate_delay when S = "10100" else
 in21 after gate_delay when S = "10101" else
 in22 after gate_delay when S = "10110" else
 in23 after gate_delay when S = "10111" else
 in24 after gate_delay when S = "11000" else
 in25 after gate_delay when S = "11001" else
 in26 after gate_delay when S = "11010" else
 in27 after gate_delay when S = "11011" else
 in28 after gate_delay when S = "11100" else
 in29 after gate_delay when S = "11101" else
 in30 after gate_delay when S = "11110" else
 in31 after gate_delay when S = "11111" else
 "00000000000000000000000000000000" after gate_delay;

end Behavioral;
