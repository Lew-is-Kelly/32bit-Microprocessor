library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_32Bit_20335015_TB is
end ALU_32Bit_20335015_TB;

architecture Behavioral of ALU_32Bit_20335015_TB is

    component ALU_32Bit_20335015
        Port ( A, B : in std_logic_vector (31 downto 0);
             S : in std_logic_vector (3 downto 0);
             Z : out std_logic_vector (31 downto 0);
             C_out, V : out std_logic
            );
    end component;

    signal A, B, Z : std_logic_vector (31 downto 0) := (others => '0');
    signal S : std_logic_vector (3 downto 0) := (others => '0');
    signal C_out, V : std_logic := '0';

    constant delay : time := 30ns;
    
begin

    ALU: ALU_32Bit_20335015 Port Map (A => A, B => B, S => S, Z => Z, C_out => C_out, V => V);

    stim: process
    begin

        wait for delay;
        A <= x"013649A7";
        B <= x"00000005";
        S <= "0000";     --A
        
        wait for delay;
        S <= "0100";     --A+1
        
        wait for delay;
        S <= "0001";     --A+B
        
        wait for delay;
        S <= "0101";     --A+B+1
        
        wait for delay;
        S <= "0010";     --A+B'
        
        wait for delay;
        S <= "0110";     --A+B'+1
        
        wait for delay;
        S <= "0011";     --A-1
        
        wait for delay;
        S <= "0111";     --A
        
        wait for delay;
        S <= "1000";     --A and B
        
        wait for delay;
        S <= "1001";     --A or B
        
        wait for delay;
        S <= "1010";     --A xor B
        
        wait for delay;
        S <= "1011";     --not A
        
    end process;

end Behavioral;
