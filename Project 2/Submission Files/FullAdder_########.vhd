library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder_20335015 is
    Port ( A, B, C_in : in std_logic;
         Sum, C_out : out std_logic
        );
end ;

architecture Behavioral of FullAdder_20335015 is

    constant gate_delay : time := 2ns;

begin

    sum <= A xor B xor C_in after gate_delay;
    c_out <= (A and B) or (A and C_in) or (B and C_in) after gate_delay;

end Behavioral;