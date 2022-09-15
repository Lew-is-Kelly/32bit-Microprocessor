library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR_SL_ShiftUnit_20335015_TB is
end SR_SL_ShiftUnit_20335015_TB;

architecture Behavioral of SR_SL_ShiftUnit_20335015_TB is

    component SR_SL_ShiftUnit_20335015
        Port ( A : in std_logic_vector (31 downto 0);
             S : in std_logic_vector (1 downto 0);
             Z :out std_logic_vector (31 downto 0)
            );
    end component;
    
    signal A, Z : std_logic_vector (31 downto 0) := (others => '0');
    signal S : std_logic_vector (1 downto 0) := (others => '0');
    
    constant delay : time := 20ns;

begin

    ShiftUnit: SR_SL_ShiftUnit_20335015 Port Map (A => A, S => S, Z => Z);

    stim: process
    begin

        wait for delay;
        A <= x"013649A7";
        S <= "00";
        
        wait for delay;
        S <= "01";
        
        wait for delay;
        S <= "10";
        
        wait for delay;
        S <= "11";

    end process;

end Behavioral;
