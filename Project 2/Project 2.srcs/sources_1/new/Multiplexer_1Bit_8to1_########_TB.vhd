library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_1Bit_8to1_20335015_TB is
end Multiplexer_1Bit_8to1_20335015_TB;

architecture Behavioral of Multiplexer_1Bit_8to1_20335015_TB is

    component Multiplexer_1Bit_8to1_20335015
        Port ( in0, in1, in2, in3, in4, in5, in6, in7 : in std_logic;
             S : in std_logic_vector (2 downto 0);
             Z : out std_logic
            );
    end component;

    signal in0, in1, in2, in3, in4, in5, in6, in7, Z : std_logic := '0';
    signal S : std_logic_vector (2 downto 0) := (others => '0');

    constant delay : time := 20ns;

begin

    Mux: Multiplexer_1Bit_8to1_20335015 Port Map (in0 => in0, in1 => in1, in2 => in2, in3 => in3, in4 => in4, in5 => in5, in6 => in6, in7 => in7, S => S, Z => Z);

    stim: process
    begin
    
        wait for delay;
        in0 <= '1';
        in1 <= '0';
        in2 <= '1';
        in3 <= '0';
        in4 <= '1';
        in5 <= '0';
        in6 <= '1';
        in7 <= '0';
    
        wait for delay;
        S <= "000";

        wait for delay;
        S <= "001";

        wait for delay;
        S <= "010";

        wait for delay;
        S <= "011";

        wait for delay;
        S <= "100";

        wait for delay;
        S <= "101";

        wait for delay;
        S <= "110";

        wait for delay;
        S <= "111";

    end process;

end Behavioral;
