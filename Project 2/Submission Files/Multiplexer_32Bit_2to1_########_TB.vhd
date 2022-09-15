library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_32Bit_2to1_20335015_TB is
end Multiplexer_32Bit_2to1_20335015_TB;

architecture Behavioral of Multiplexer_32Bit_2to1_20335015_TB is

    component Multiplexer_32Bit_2to1_20335015
        Port ( A, B : in std_logic_vector(31 downto 0);
             S : in std_logic;
             Z : out std_logic_vector(31 downto 0)
            );
    end component;

    signal A, B, Z : std_logic_vector(31 downto 0) := (others => '0');
    signal S : std_logic := '0';
    
    constant delay : time := 10ns;

begin

    mux: Multiplexer_32Bit_2to1_20335015
        Port Map ( A => A,
                 B => B,
                 S => S,
                 Z => Z
                );

    stim: process
    begin

        wait for delay;
        A <= x"013649A7";
        B <= x"013649A6";
        
        wait for delay;
        S <= '0';
        
        wait for delay;
        S <= '1';
        

    end process;

end Behavioral;

