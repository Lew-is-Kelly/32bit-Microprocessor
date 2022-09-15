library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_1Bit_4to1_20335015_TB is
end Multiplexer_1Bit_4to1_20335015_TB;

architecture Behavioral of Multiplexer_1Bit_4to1_20335015_TB is

    component Multiplexer_1Bit_4to1_20335015
        Port ( in0, in1, in2, in3 : in std_logic;
             S : in std_logic_vector (1 downto 0);
             Z : out std_logic
            );
    end component;

    signal in0, in1, in2, in3, Z : std_logic;
    signal S : std_logic_vector (1 downto 0);

    constant delay : time := 20ns;

begin

    mux: Multiplexer_1Bit_4to1_20335015 Port Map (in0 => in0, in1 => in1, in2 => in2, in3 => in3, S => S, Z => Z);

    stim: process
    begin

        wait for delay;
        in0 <= '0';
        in1 <= '1';
        in2 <= '0';
        in3 <= '1';
        S <= "00";

        wait for delay;
        S <= "01";

        wait for delay;
        S <= "10";

        wait for delay;
        S <= "11";

    end process;

end Behavioral;
