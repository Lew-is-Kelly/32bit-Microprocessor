library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_1Bit_2to1_20335015_TB is
end Multiplexer_1Bit_2to1_20335015_TB;

architecture Behavioral of Multiplexer_1Bit_2to1_20335015_TB is

    component Multiplexer_1Bit_2to1_20335015
        Port ( A, B, S : in std_logic;
             Z : out std_logic
            );
    end component;

    signal A, B, S, Z : std_logic := '0';
    
    constant delay : time := 10ns;

begin

    mux: Multiplexer_1Bit_2to1_20335015
        Port Map ( A => A,
                 B => B,
                 S => S,
                 Z => Z
                );

    stim: process
    begin
    
    wait for delay;
    A <= '1';
    B <= '0';
    S <= '0';
    
    wait for delay;
    S <= '1';
    
    end process;

end Behavioral;
