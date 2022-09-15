library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RippleCarryAdderSubtractor_32Bit_20335015_TB is
end RippleCarryAdderSubtractor_32Bit_20335015_TB;

architecture Behavioral of RippleCarryAdderSubtractor_32Bit_20335015_TB is

    component RippleCarryAdderSubtractor_32Bit_20335015
        Port ( A, B : in std_logic_vector (31 downto 0);
             S : in std_logic_vector (2 downto 0);
             Sum : out std_logic_vector (31 downto 0);
             C_out, V : out std_logic
            );
    end component;

    signal A, B, Sum : std_logic_vector (31 downto 0) := (others => '0');
    signal S : std_logic_vector (2 downto 0) := (others => '0');
    signal C_out, V : std_logic := '0';
    
    constant delay : time := 20ns;

begin

    RCAS: RippleCarryAdderSubtractor_32Bit_20335015 Port Map (A => A, B => B, S => S, Sum => Sum, C_out => C_out, V => V);
    
    stim: process
    begin
    
    wait for delay;
    A <= x"013649A7";
    B <= x"00000005";
    S <= "000";      --A
    
    wait for delay;        
    S <= "100";      --A+1
    
    wait for delay;
    S <= "001";      --A+B
    
    wait for delay;
    S <= "101";      --A+B+1
    
    wait for delay;
    S <= "010";      --A+B'
    
    wait for delay;
    S <= "110";      --A+B'+1
    
    wait for delay;
    S <= "011";      --A-1
    
    wait for delay;
    S <= "111";      --A
    
    end process;

end Behavioral;
