library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC_32Bit_20335015_TB is
end PC_32Bit_20335015_TB;

architecture Behavioral of PC_32Bit_20335015_TB is

    component PC_32Bit_20335015
        Port ( PC_In : std_logic_vector (31 downto 0);
             PL, PI, Reset, Clock : in std_logic;
             PC_Out : out std_logic_vector (31 downto 0)
            );
    end component;

    signal PC_In, PC_Out : std_logic_vector (31 downto 0) := (others => '0');
    signal PL, PI, Reset, Clock : std_logic := '0';

    constant delay : time := 100ns;
    constant Clock_Period : time := 20ns;

begin

    Clock_Process: process
    begin

        Clock <= '0';
        wait for Clock_Period / 2;
        Clock <= '1';
        wait for Clock_Period / 2;

    end process;

    Program_Counter: PC_32Bit_20335015 Port Map (PC_In => PC_In, PL => PL, PI => PI, Reset => Reset, Clock => Clock, PC_Out => PC_Out);

    stim: process
    begin

        wait for delay;
        Reset <= '1';
        PC_In <= x"00000000";

        wait for delay;
        Reset <= '0';

        wait for delay;
        PC_In <= x"00000005";
        PL <= '1';
        
        wait for 20ns;
        PL <= '0';
        
        wait for delay;
        PI <= '1';
        
        wait for delay;
        PI <= '0';
        
        wait for delay;
        PC_In <= x"0000000F";
        PL <= '1';
        
        wait for 20ns;
        PL <= '0';
        
        wait for delay;
        PI <= '1';
        
        wait for delay;
        PI <= '0';

    end process;

end Behavioral;