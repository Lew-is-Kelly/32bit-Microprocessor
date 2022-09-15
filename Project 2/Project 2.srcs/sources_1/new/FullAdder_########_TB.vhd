library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder_20335015_TB is
end FullAdder_20335015_TB;

architecture Behavioral of FullAdder_20335015_TB is

    component FullAdder_20335015
        Port ( A, B, C_in : in std_logic;
             Sum, C_out : out std_logic
            );
    end component;

    signal A, B, C_in, Sum, C_out : std_logic := '0';

    constant delay : time := 10ns;

begin

    adder: FullAdder_20335015
        Port Map ( A => A,
                 B => B,
                 C_in => C_in,
                 Sum => Sum,
                 C_out => C_out
                );

    stim: process
    begin

        wait for delay;
        C_in <= '0';
        A <= '0';
        B <= '0';
        
        wait for delay;
        A <= '1';
        
        wait for delay;
        B <= '1';
        
        wait for delay;
        C_in <= '1';

    end process;

end Behavioral;
