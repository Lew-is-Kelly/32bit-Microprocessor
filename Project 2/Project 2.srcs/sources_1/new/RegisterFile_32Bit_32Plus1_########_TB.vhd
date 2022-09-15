library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RegisterFile_32Bit_32Plus1_20335015_TB is
end RegisterFile_32Bit_32Plus1_20335015_TB;

architecture Behavioral of RegisterFile_32Bit_32Plus1_20335015_TB is

    component RegisterFile_32Bit_32Plus1_20335015
        Port ( DR, AA, BA : in std_logic_vector(4 downto 0);
             RW, Clock, TA, TB, TD : in std_logic;
             Data : in std_logic_Vector(31 downto 0);
             A, B : out std_logic_vector(31 downto 0)
            );
    end component;

    signal DR, AA, BA : std_logic_vector(4 downto 0) := (others => '0');
    signal Data, A, B : std_logic_vector(31 downto 0) := (others => '0');
    signal RW, Clock, TA, TB, TD : std_logic := '0';

    constant Clock_Period : time := 20ns;
    constant delay : time := 20ns;

begin

Clock_Process: process
    begin

        Clock <='0';
        wait for Clock_period/2;
        Clock <= '1';
        wait for Clock_period/2;

    end process;

    regFile: RegisterFile_32Bit_32Plus1_20335015
        Port Map ( DR => DR,
                 AA => AA,
                 BA => BA,
                 RW => RW,
                 Clock => Clock,
                 TA => TA,
                 TB => TB,
                 TD => TD,
                 Data => Data,
                 A => A,
                 B => B
                );

    stim: process
    begin

        wait for 1ns;
        RW <= '1';
        Data <= x"013649a7";
        DR <= "00000";
        AA <= "00000";
        BA <= "00000";

        for i in 0 to 31 loop
            wait for delay;
            data <= std_logic_vector(data - 1);
            DR <= std_logic_vector(DR + 1);
        end loop;

        wait for 1ns;
        RW <= '0';

        for i in 0 to 31 loop
            wait for delay;
            AA <= std_logic_vector(AA + 1);
        end loop;

        wait for 1ns;
        Data <= "00000000000000000000000001000101";
        DR <= "00001";
        AA <= "00001";
        wait for delay;

    end process;

end Behavioral;
