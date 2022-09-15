library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_1Bit_4to1_20335015 is
    Port ( in0, in1, in2, in3 : in std_logic;
         S : in std_logic_vector(1 downto 0);
         Z : out std_logic
        );
end ;

architecture Behavioral of Multiplexer_1Bit_4to1_20335015 is

    constant gate_delay : time := 2ns;

begin

    Z <= in0 after gate_delay when S = "00" else
 in1 after gate_delay when S = "01" else
 in2 after gate_delay when S = "10" else
 in3 after gate_delay when S = "11" else
 '0' after gate_delay;

end Behavioral;