library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CAR_17Bit_20335015_TB is
end CAR_17Bit_20335015_TB;

architecture Behavioral of CAR_17Bit_20335015_TB is

    component CAR_17Bit_20335015
        Port ( MuxC_In : in std_logic_vector (16 downto 0);
             MuxS_In, Clock, Reset : in std_logic;
             CAR_Out : out std_logic_vector (16 downto 0)
            );
    end component;

    signal MuxC_In, CAR_Out : std_logic_vector (16 downto 0) := (others => '0');
    signal MuxS_In, Clock, Reset : std_logic := '0';

    constant delay : time := 20ns;
    constant Clock_Period : time := 20ns;

begin

    CAR: CAR_17Bit_20335015 Port Map (MuxC_In => MuxC_In, MuxS_In => MuxS_In, Clock => Clock, Reset => Reset, CAR_Out => CAR_Out);

    Clock_Process: process
    begin

        Clock <= '0';
        wait for Clock_Period / 2;
        Clock <= '1';
        wait for Clock_Period / 2;

    end process;

    stim: process
    begin
    
        Reset <= '1';

        wait for delay;
        Reset <= '0';
        MuxC_In <= "00000000000001000";
        MuxS_In <= '1';
        
        wait for delay;
        MuxC_In <= "00000000000010000";
        MuxS_In <= '0';

        wait for delay;
        wait for delay;
        wait for delay;
        wait for delay;
        
    end process;

end Behavioral;
