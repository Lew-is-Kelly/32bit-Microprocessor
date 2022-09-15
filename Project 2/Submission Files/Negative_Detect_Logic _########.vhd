library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Negative_Detect_Logic_20335015 is
    Port ( A : in std_logic_vector (31 downto 0);
         Z : out std_logic
        );
end ;

architecture Behavioral of Negative_Detect_Logic_20335015 is

    constant gate_delay : time := 2ns;

begin

    Z <= '0' after gate_delay when A(31) = '0' else
 '1' after gate_delay when A(31) = '1';

end Behavioral;