library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ExtendLogic_20335015 is
    Port ( DRSB : in std_logic_vector (9 downto 0);
         Extend_Out : out std_logic_vector (31 downto 0)
        );
end ExtendLogic_20335015;

architecture Behavioral of ExtendLogic_20335015 is

    constant gate_delay : time := 2ns;

begin

    Extend_Out (9 downto 0) <= DRSB;
    Extend_Out (31 downto 10) <= "0000000000000000000000" when DRSB(9) = '0' else "1111111111111111111111";

end Behavioral;