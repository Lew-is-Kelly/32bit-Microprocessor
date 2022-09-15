library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_32Bit_5to32_20335015 is
    Port ( S : in std_logic_vector(4 downto 0);
         Z : out std_logic_vector(31 downto 0)
        );
end ;

architecture Behavioral of Decoder_32Bit_5to32_20335015 is

    constant gate_delay : time := 2ns;

begin

    process
    begin
    
    wait for 2ns;
    
        case S is
            when "00000" => Z <= "00000000000000000000000000000001" after gate_delay;
            when "00001" => Z <= "00000000000000000000000000000010" after gate_delay;
            when "00010" => Z <= "00000000000000000000000000000100" after gate_delay;
            when "00011" => Z <= "00000000000000000000000000001000" after gate_delay;
            when "00100" => Z <= "00000000000000000000000000010000" after gate_delay;
            when "00101" => Z <= "00000000000000000000000000100000" after gate_delay;
            when "00110" => Z <= "00000000000000000000000001000000" after gate_delay;
            when "00111" => Z <= "00000000000000000000000010000000" after gate_delay;
            when "01000" => Z <= "00000000000000000000000100000000" after gate_delay;
            when "01001" => Z <= "00000000000000000000001000000000" after gate_delay;
            when "01010" => Z <= "00000000000000000000010000000000" after gate_delay;
            when "01011" => Z <= "00000000000000000000100000000000" after gate_delay;
            when "01100" => Z <= "00000000000000000001000000000000" after gate_delay;
            when "01101" => Z <= "00000000000000000010000000000000" after gate_delay;
            when "01110" => Z <= "00000000000000000100000000000000" after gate_delay;
            when "01111" => Z <= "00000000000000001000000000000000" after gate_delay;
            when "10000" => Z <= "00000000000000010000000000000000" after gate_delay;
            when "10001" => Z <= "00000000000000100000000000000000" after gate_delay;
            when "10010" => Z <= "00000000000001000000000000000000" after gate_delay;
            when "10011" => Z <= "00000000000010000000000000000000" after gate_delay;
            when "10100" => Z <= "00000000000100000000000000000000" after gate_delay;
            when "10101" => Z <= "00000000001000000000000000000000" after gate_delay;
            when "10110" => Z <= "00000000010000000000000000000000" after gate_delay;
            when "10111" => Z <= "00000000100000000000000000000000" after gate_delay;
            when "11000" => Z <= "00000001000000000000000000000000" after gate_delay;
            when "11001" => Z <= "00000010000000000000000000000000" after gate_delay;
            when "11010" => Z <= "00000100000000000000000000000000" after gate_delay;
            when "11011" => Z <= "00001000000000000000000000000000" after gate_delay;
            when "11100" => Z <= "00010000000000000000000000000000" after gate_delay;
            when "11101" => Z <= "00100000000000000000000000000000" after gate_delay;
            when "11110" => Z <= "01000000000000000000000000000000" after gate_delay;
            when "11111" => Z <= "10000000000000000000000000000000" after gate_delay;
            when others => Z <= "00000000000000000000000000000000" after gate_delay;
        end case;
    end process;

end Behavioral;