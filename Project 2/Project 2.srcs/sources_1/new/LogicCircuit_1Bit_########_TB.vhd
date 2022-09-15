library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicCircuit_1Bit_20335015_TB is
end LogicCircuit_1Bit_20335015_TB;

architecture Behavioral of LogicCircuit_1Bit_20335015_TB is

    component LogicCircuit_1Bit_20335015
        Port ( A, B : in std_logic;
             S : in std_logic_vector (1 downto 0);
             Z : out std_logic
            );
    end component;

    signal A, B, Z : std_logic := '0';
    signal S : std_logic_vector (1 downto 0) := (others => '0');

    constant delay : time := 20ns;

begin

    LC: LogicCircuit_1Bit_20335015 Port Map (A => A, B => B, S => S, Z => Z);

    stim: process
    begin

        wait for delay;
        A <= '1';
        B <= '0';
        S <= "00";      --A and B

        wait for delay;
        S <= "01";      --A or B

        wait for delay;
        S <= "10";      --A xor B

        wait for delay;
        S <= "11";      --A'

    end process;

end Behavioral;
