library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Zero_Detect_Logic_20335015_TB is
end Zero_Detect_Logic_20335015_TB;

architecture Behavioral of Zero_Detect_Logic_20335015_TB is

    component Zero_Detect_Logic_20335015
        Port ( A : in std_logic_vector (31 downto 0);
             Z : out std_logic
            );
    end component;

    signal A : std_logic_vector (31 downto 0) := (others => '0');
    signal Z : std_logic := '0';

    constant delay : time := 450ns;

begin

    Detect: Zero_Detect_Logic_20335015 Port Map (A => A, Z => Z);

    stim: process
    begin

        wait for delay;
        A <= x"00000001";

        wait for delay;
        A <= x"00000000";

    end process;

end Behavioral;
