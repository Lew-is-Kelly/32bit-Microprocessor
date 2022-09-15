library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Zero_Detect_Logic_20335015 is
    Port ( A : in std_logic_vector (31 downto 0);
    Z : out std_logic
    );
end ;

architecture Behavioral of Zero_Detect_Logic_20335015 is

    constant gate_delay : time := 2ns;

begin

Z <= '1' after gate_delay when A = x"00000000" else '0' after gate_delay;

end Behavioral;