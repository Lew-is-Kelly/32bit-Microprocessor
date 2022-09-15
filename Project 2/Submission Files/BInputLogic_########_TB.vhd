library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BInputLogic_20335015_TB is
end BInputLogic_20335015_TB;

architecture Behavioral of BInputLogic_20335015_TB is

    component BInputLogic_20335015
        Port ( B : in std_logic_vector(31 downto 0);
             S : in std_logic_vector(1 downto 0);
             Z : out std_logic_vector(31 downto 0)
            );
    end component;

    signal B, Z : std_logic_vector (31 downto 0) := (others => '0');
    signal S : std_logic_vector (1 downto 0) := (others => '0');

begin

    BInLogic: BInputLogic_20335015
        Port Map ( B => B,
                 Z => Z,
                 S => S
                );

    stim: process
    begin

        wait for 20ns;
        B <= x"013649A7";

        for I in 0 to 3 loop
            wait for 20ns;
            S <= std_logic_vector(S + 1);
        end loop;

    end process;


end Behavioral;
