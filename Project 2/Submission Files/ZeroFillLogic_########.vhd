library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ZeroFillLogic_20335015 is
    Port ( SB : in std_logic_vector (4 downto 0);
         ZeroFill_Out : out std_logic_vector (31 downto 0)
        );
end ZeroFillLogic_20335015;

architecture Behavioral of ZeroFillLogic_20335015 is

    constant gate_delay : time := 2ns;

begin

    ZeroFill_Out(4 downto 0) <= SB;
    ZeroFill_Out(31 downto 5) <= "000000000000000000000000000";

end Behavioral;