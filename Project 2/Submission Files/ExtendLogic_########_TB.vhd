library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ExtendLogic_20335015_TB is
end ExtendLogic_20335015_TB;

architecture Behavioral of ExtendLogic_20335015_TB is

    component ExtendLogic_20335015
        Port ( DRSB : in std_logic_vector (9 downto 0);
             Extend_Out : out std_logic_vector (31 downto 0)
            );
    end component;

    signal DRSB : std_logic_vector (9 downto 0) := (others => '0');
    signal Extend_Out : std_logic_vector (31 downto 0) := (others => '0');

    constant delay : time := 20ns;

begin

    Extend: ExtendLogic_20335015 Port Map (DRSB => DRSB, Extend_Out => Extend_Out);

    stim: process
    begin

        wait for delay;
        DRSB <= "0000000000";

        wait for delay;
        DRSB <= "1000000000";

    end process;

end Behavioral;
