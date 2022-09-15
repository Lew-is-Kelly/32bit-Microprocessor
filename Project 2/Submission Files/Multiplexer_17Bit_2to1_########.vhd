library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_17Bit_2to1_20335015 is
    Port ( A, B : in std_logic_vector (16 downto 0);
         S : in std_logic;
         Z : out std_logic_vector (16 downto 0)
        );
end Multiplexer_17Bit_2to1_20335015;

architecture Behavioral of Multiplexer_17Bit_2to1_20335015 is

    constant gate_delay : time := 20ns;

begin

    Z <= A after gate_delay when S = '0' else
 B after gate_delay when S = '1' else
 "00000000000000000";

end Behavioral;
