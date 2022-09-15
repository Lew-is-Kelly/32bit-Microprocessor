library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_17Bit_2to1_20335015_TB is
end Multiplexer_17Bit_2to1_20335015_TB;

architecture Behavioral of Multiplexer_17Bit_2to1_20335015_TB is

    component Multiplexer_17Bit_2to1_20335015
        Port ( A, B : in std_logic_vector (16 downto 0);
             S : in std_logic;
             Z : out std_logic_vector (16 downto 0)
            );
    end component;

    signal A, B, Z : std_logic_vector (16 downto 0) := (others => '0');
    signal S : std_logic := '0';

    constant delay : time := 20ns;

begin

    Mux: Multiplexer_17Bit_2to1_20335015 Port Map (A => A, B => B, S => S, Z => Z);

    stim: process
    begin

        wait for delay;
        A <= "00000000000000010";
        B <= "00000000000000001";
        S <= '0';

        wait for delay;
        S <= '1';

    end process;

end Behavioral;
