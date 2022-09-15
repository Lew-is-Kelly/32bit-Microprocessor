library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FunctionalUnit_32Bit_20335015_TB is
end FunctionalUnit_32Bit_20335015_TB;

architecture Behavioral of FunctionalUnit_32Bit_20335015_TB is

    component FunctionalUnit_32Bit_20335015
        Port ( A, B : in std_logic_vector (31 downto 0);
             S : in std_logic_vector (4 downto 0);
             Sum : out std_logic_vector (31 downto 0);
             C_out, V, Z, N : out std_logic
            );
    end component;

    signal A, B, Sum : std_logic_vector (31 downto 0) := (others => '0');
    signal S : std_logic_vector (4 downto 0) := (others => '0');
    signal C_out, V, Z, N : std_logic := '0';

    constant delay : time := 80ns;

begin

    FunUnit: FunctionalUnit_32Bit_20335015 Port Map (A => A, B => B, S => S, Sum => Sum, C_out => C_out, V => V, Z => Z, N => N);

    stim: process
    begin

        wait for delay;
        A <= x"013649A7";
        B <= x"013649AC";
        S <= "00110";       --A-1

        wait for delay;
        S <= "00111";       --A

        wait for delay;
        S <= "00101";       --A+B'+1

        wait for delay;
        S <= "01100";       --A xor B

        wait for delay;
        S <= "00100";       --A+B'

        wait for delay;
        S <= "10000";       --B

        wait for delay;
        S <= "00011";       --A+B+1

        wait for delay;
        S <= "10100";       --srB

        wait for delay;
        S <= "00010";       --A+B

        wait for delay;
        S <= "01110";       --A'

        wait for delay;
        S <= "00000";       --A

        wait for delay;
        S <= "11000";       --slB

        wait for delay;
        S <= "00001";       --A+1

        wait for delay;
        S <= "01000";       --A and B

        wait for delay;
        S <= "01010";       --A or B

    end process;

end Behavioral;
