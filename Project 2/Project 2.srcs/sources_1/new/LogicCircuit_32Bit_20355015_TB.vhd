library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicCircuit_32Bit_20355015_TB is
end LogicCircuit_32Bit_20355015_TB;

architecture Behavioral of LogicCircuit_32Bit_20355015_TB is

    component LogicCircuit_32Bit_20335015
        Port ( A, B : in std_logic_vector (31 downto 0);
             S : in std_logic_vector (1 downto 0);
             Z : out std_logic_vector (31 downto 0)
            );
    end component;

    signal A, B, Z : std_logic_vector (31 downto 0) := (others => '0');
    signal S : std_logic_vector (1 downto 0) := (others => '0');

    constant delay : time := 20ns;

begin

    LC: LogicCircuit_32Bit_20335015 Port Map (A => A, B => B, S => S, Z => Z);

    stim: process
    begin

        wait for delay;
        A <= x"013649A7";
        B <= x"00000005";
        S <= "00";

        wait for delay;
        S <= "01";

        wait for delay;
        S <= "10";

        wait for delay;
        S <= "11";

    end process;

end Behavioral;
