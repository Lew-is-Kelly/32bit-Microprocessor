library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BInputLogic_20335015 is
    Port ( B : in std_logic_vector(31 downto 0);
         S : in std_logic_vector(1 downto 0);
         Z : out std_logic_vector(31 downto 0)
        );
end ;

architecture Behavioral of BInputLogic_20335015 is

    constant gate_delay : time := 2ns;

begin

Z <= "00000000000000000000000000000000" after gate_delay when S = "00" else
 B after gate_delay when S = "01" else
 not B after gate_delay when S = "10" else
 "11111111111111111111111111111111" after gate_delay when S = "11";

end Behavioral;