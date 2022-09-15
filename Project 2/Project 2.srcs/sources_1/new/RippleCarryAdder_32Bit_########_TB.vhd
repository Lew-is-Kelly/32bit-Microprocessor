library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RippleCarryAdder_32Bit_20335015_TB is
end RippleCarryAdder_32Bit_20335015_TB;

architecture Behavioral of RippleCarryAdder_32Bit_20335015_TB is

    component RippleCarryAdder_32Bit_20335015
        Port ( A, B : in std_logic_vector(31 downto 0);
             C_in : in std_logic;
             Sum : out std_logic_vector(31 downto 0);
             C_out, V : out std_logic
            );
    end component;

    signal A, B, Sum : std_logic_vector(31 downto 0) := (others => '0');
    signal C_in, C_out : std_logic := '0';
    
    constant delay : time := 10ns;

begin

    adder: RippleCarryAdder_32Bit_20335015
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
        A <= x"013649A7"; --Student ID in hex (20335015)
        B <= "00000000000000000000000000000001";

        wait for delay;
        B <= "11111111111111111111111111111111";

        wait for delay;
        A <= x"FEC9B659"; --Student ID in hex signed 2's compliment (-20335015)

        wait for delay;
        A <= "00000000000000000000000000000001";

        wait for delay;     --Worst Case input. 
        A <= "11111111111111111111111111111111";
        B <= "00000000000000000000000000000000";
        wait for 110ns;     --Gives 62ns delay.

        wait for delay;     --Setting the V flag.
        A <= x"013649A7";
        B <= x"7EC9B659";
        wait for 50ns;

        wait for delay;     --Setting the C flag.
        A <= x"013649A7";
        B <= "11111111111111111111111111111111";
        wait for 50ns;

    end process;

end Behavioral;
