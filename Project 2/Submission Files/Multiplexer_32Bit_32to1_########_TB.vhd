library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_32Bit_32to1_20335015_TB is
end Multiplexer_32Bit_32to1_20335015_TB;

architecture Behavioral of Multiplexer_32Bit_32to1_20335015_TB is

    component Multiplexer_32Bit_32to1_20335015
        Port ( in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19,
 in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31 : in std_logic_vector(31 downto 0);
             S : in std_logic_vector(4 downto 0);
             Z : out std_logic_vector(31 downto 0)
            );
    end component;

    signal in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19,
 in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31, Z : std_logic_vector(31 downto 0) := (others => '0');
    signal S : std_logic_vector(4 downto 0) := (others => '0');

    constant delay : time := 25ns;

begin

    mux: Multiplexer_32Bit_32to1_20335015
        Port Map ( in0 => in0,
                 in1 => in1,
                 in2 => in2,
                 in3 => in3,
                 in4 => in4,
                 in5 => in5,
                 in6 => in6,
                 in7 => in7,
                 in8 => in8,
                 in9 => in9,
                 in10 => in10,
                 in11 => in11,
                 in12 => in12,
                 in13 => in13,
                 in14 => in14,
                 in15 => in15,
                 in16 => in16,
                 in17 => in17,
                 in18 => in18,
                 in19 => in19,
                 in20 => in20,
                 in21 => in21,
                 in22 => in22,
                 in23 => in23,
                 in24 => in24,
                 in25 => in25,
                 in26 => in26,
                 in27 => in27,
                 in28 => in28,
                 in29 => in29,
                 in30 => in30,
                 in31 => in31,
                 S => S,
                 Z => Z
                );

    stim: process
    begin

        wait for delay;
        in0 <= "00000001001101100100100110100111";
        in1 <= "00000001001101100100100110100110";
        in2 <= "00000001001101100100100110100101";
        in3 <= "00000001001101100100100110100100";
        in4 <= "00000001001101100100100110100011";
        in5 <= "00000001001101100100100110100010";
        in6 <= "00000001001101100100100110100001";
        in7 <= "00000001001101100100100110100000";
        in8 <= "00000001001101100100100110011111";
        in9 <= "00000001001101100100100110011110";
        in10 <= "00000001001101100100100110011101";
        in11 <= "00000001001101100100100110011100";
        in12 <= "00000001001101100100100110011011";
        in13 <= "00000001001101100100100110011010";
        in14 <= "00000001001101100100100110011001";
        in15 <= "00000001001101100100100110011000";
        in16 <= "00000001001101100100100110010111";
        in17 <= "00000001001101100100100110010110";
        in18 <= "00000001001101100100100110010101";
        in19 <= "00000001001101100100100110010100";
        in20 <= "00000001001101100100100110010011";
        in21 <= "00000001001101100100100110010010";
        in22 <= "00000001001101100100100110010001";
        in23 <= "00000001001101100100100110010000";
        in24 <= "00000001001101100100100110001110";
        in25 <= "00000001001101100100100110001101";
        in26 <= "00000001001101100100100110001100";
        in27 <= "00000001001101100100100110001011";
        in28 <= "00000001001101100100100110001010";
        in29 <= "00000001001101100100100110001001";
        in30 <= "00000001001101100100100110001000";
        in31 <= "00000001001101100100100110000111";

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
