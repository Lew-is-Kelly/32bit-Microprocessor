library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Microprocessor_32Bit_20335015_TB is
end Microprocessor_32Bit_20335015_TB;

architecture Behavioral of Microprocessor_32Bit_20335015_TB is

    component Microprocessor_32Bit_20335015
        Port ( Clock, Reset : in std_logic
            );
    end component;

    signal Clock, Reset: std_logic := '0';

    constant Clock_Period : time := 20ns;
    constant delay : time := 20ns;

begin

    Clock_Process: process
    begin

        Clock <='0';
        wait for Clock_Period / 2;
        clock <= '1';
        wait for Clock_Period / 2;

    end process;

    Microprocessor: Microprocessor_32Bit_20335015 Port Map (Clock => Clock, Reset => Reset);

    stim : process
    begin
    
        wait for delay;
        Reset <= '1';
        
        wait for delay;
        Reset <= '0';
        
        wait;

    end process;

end Behavioral;