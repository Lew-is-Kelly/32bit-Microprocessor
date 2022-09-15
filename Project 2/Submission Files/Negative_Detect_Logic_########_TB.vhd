library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Negative_Detect_Logic_20335015_TB is
end Negative_Detect_Logic_20335015_TB;

architecture Behavioral of Negative_Detect_Logic_20335015_TB is

    component Negative_Detect_Logic_20335015
        Port ( A : in std_logic_vector (31 downto 0);
             Z : out std_logic
            );
    end component;

    signal A : std_logic_vector (31 downto 0) := (others => '0');
    signal Z : std_logic := '0';

    constant delay : time := 20ns;

begin

    Detect: Negative_Detect_Logic_20335015 Port Map (A => A, Z => Z);

    stim: process
    begin

        wait for delay;
        A <= x"013649A7";

        wait for delay;
        A <= x"FFFFFFFF";

    end process;

end Behavioral;
