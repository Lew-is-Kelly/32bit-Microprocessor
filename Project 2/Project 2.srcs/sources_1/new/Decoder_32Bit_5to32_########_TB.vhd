library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_32Bit_5to32_20335015_TB is
end Decoder_32Bit_5to32_20335015_TB;

architecture Behavioral of Decoder_32Bit_5to32_20335015_TB is

    component Decoder_32Bit_5to32_20335015
        Port ( S : in std_logic_vector(4 downto 0);
             Z : out std_logic_vector(31 downto 0)
            );
    end component;

    signal S : std_logic_vector(4 downto 0) := (others => '0');
    signal Z : std_logic_vector(31 downto 0) := (others => '0');

    constant delay : time := 30ns;

begin

    dec: Decoder_32Bit_5to32_20335015
        Port Map ( S => S,
                 Z => Z
                );

    stim: process
    begin
        wait for delay;
        S <= "00000";

        wait for delay;
        S <= "00001";

        wait for delay;
        S <= "00010";

        wait for delay;
        S <= "00011";

        wait for delay;
        S <= "00100";

        wait for delay;
        S <= "00101";

        wait for delay;
        S <= "00110";

        wait for delay;
        S <= "00111";

        wait for delay;
        S <= "01000";

        wait for delay;
        S <= "01001";

        wait for delay;
        S <= "01010";

        wait for delay;
        S <= "01011";

        wait for delay;
        S <= "01100";

        wait for delay;
        S <= "01101";

        wait for delay;
        S <= "01110";

        wait for delay;
        S <= "01111";

        wait for delay;
        S <= "10000";

        wait for delay;
        S <= "10001";

        wait for delay;
        S <= "10010";

        wait for delay;
        S <= "10011";

        wait for delay;
        S <= "10100";

        wait for delay;
        S <= "10101";

        wait for delay;
        S <= "10110";

        wait for delay;
        S <= "10111";

        wait for delay;
        S <= "11000";

        wait for delay;
        S <= "11001";

        wait for delay;
        S <= "11010";

        wait for delay;
        S <= "11011";

        wait for delay;
        S <= "11100";

        wait for delay;
        S <= "11101";

        wait for delay;
        S <= "11110";

        wait for delay;
        S <= "11111";

    end process;

end Behavioral;
