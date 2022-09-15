library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_32Bit_20335015 is
    Port ( Data : in std_logic_vector(31 downto 0);
         load, Clock : in std_logic;
         Z : out std_logic_vector(31 downto 0)
        );
end ;

architecture Behavioral of Register_32Bit_20335015 is

    constant gate_delay : time := 2ns;

begin

    process(Clock)
    begin
        if(rising_edge(Clock))then
            if load = '1' then
                Z <= Data after gate_delay;
            end if;
        end if;
    end process;

end Behavioral;