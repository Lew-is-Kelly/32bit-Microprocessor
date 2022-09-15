library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_1Bit_8to1_20335015 is
    Port ( in0, in1, in2, in3, in4, in5, in6, in7 : in std_logic;
         S : in std_logic_vector (2 downto 0);
         Z : out std_logic
        );
end Multiplexer_1Bit_8to1_20335015;

architecture Behavioral of Multiplexer_1Bit_8to1_20335015 is

    constant gate_delay : time := 2ns;

begin

    Z <= in0 after gate_delay when S = "000" else
 in1 after gate_delay when S = "001" else
 in2 after gate_delay when S = "010" else
 in3 after gate_delay when S = "011" else
 in4 after gate_delay when S = "100" else
 in5 after gate_delay when S = "101" else
 in6 after gate_delay when S = "110" else
 in7 after gate_delay when S = "111" else
 '0' after gate_delay;

end Behavioral;