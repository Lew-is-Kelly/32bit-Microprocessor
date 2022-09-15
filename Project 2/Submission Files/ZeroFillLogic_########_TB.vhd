library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ZeroFillLogic_20335015_TB is
end ZeroFillLogic_20335015_TB;

architecture Behavioral of ZeroFillLogic_20335015_TB is

    component ZeroFillLogic_20335015
        Port ( SB : in std_logic_vector (4 downto 0);
             ZeroFill_Out : out std_logic_vector (31 downto 0)
            );
    end component;

    signal SB : std_logic_vector (4 downto 0) := (others => '0');
    signal ZeroFill_Out : std_logic_vector (31 downto 0) := (others => '0');

    constant delay : time := 20ns;

begin

    Logic: ZeroFillLogic_20335015 Port Map (SB => SB, ZeroFill_Out => ZeroFill_Out);

    stim: process
    begin

        wait for delay;
        SB <= "00101";
        
        wait for delay;
        SB <= "00110";

    end process;

end Behavioral;
