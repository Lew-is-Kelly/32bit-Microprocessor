library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_32Bit_20335015_TB is
end Register_32Bit_20335015_TB;

architecture Behavioral of Register_32Bit_20335015_TB is

    component Register_32Bit_20335015
        Port ( Data : in std_logic_vector(31 downto 0);
             load, Clock : in std_logic;
             Z : out std_logic_vector(31 downto 0)
            );
    end component;
    
    signal Data, Z : std_logic_vector(31 downto 0) := (others => '0');
    signal load, Clock : std_logic := '0';
    
    constant Clock_Period : time := 20ns;

begin

    reg: Register_32Bit_20335015
        Port Map( Data => Data,
                 load => load,
                 Clock => Clock,
                 Z => Z
                );

    Clock <= not Clock after Clock_Period/2;

    stim: process
    begin

        wait for Clock_Period;
        load <= '0';

        wait for Clock_Period;
        Data <= "00000000000000000000000000000000";

        wait for Clock_Period;
        load <= '1';

        wait for Clock_Period;
        load <= '0';

        wait for Clock_Period;
        Data <= x"013649A7";

        wait for Clock_Period;
        load <= '1';

        wait for Clock_Period;
        load <= '0';

        wait for Clock_Period;
        Data <= "00000000000000000000000000000000";

        wait for Clock_Period;
        load <= '1';

        wait for Clock_Period;
        load <= '0';

        wait for Clock_Period;
        Data <= x"013649A7";

        wait for Clock_Period;
        load <= '1';

        wait for Clock_Period;
        load <= '0';

    end process;

end Behavioral;
