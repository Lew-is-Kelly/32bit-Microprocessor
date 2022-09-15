library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_1Bit_2to1_20335015 is
    Port ( A, B, S : in std_logic;
         Z : out std_logic
        );
end ;

architecture Behavioral of Multiplexer_1Bit_2to1_20335015 is

    constant gate_delay : time := 2ns;

begin

    Z <= A after gate_delay when S = '0' else
 B after gate_delay when S = '1' else
 '0' after gate_delay;

end Behavioral;