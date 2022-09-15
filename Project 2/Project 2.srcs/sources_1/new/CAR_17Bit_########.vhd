library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CAR_17Bit_20335015 is
    Port ( MuxC_In : in std_logic_vector (16 downto 0);
         MuxS_In, Clock, Reset : in std_logic;
         CAR_Out : out std_logic_vector (16 downto 0)
        );
end  CAR_17Bit_20335015;

architecture Behavioral of  CAR_17Bit_20335015 is

    signal Current : std_logic_vector (16 downto 0);

    constant gate_delay : time := 2ns;

begin

    process(Reset, Clock)
    begin
    
        if Reset = '1' then
            Current <= "00000000000000101";
        else if rising_edge(Clock) then
                if MuxS_In = '1' then
                    Current <= MuxC_In after gate_delay;
                else
                    Current <= std_logic_vector(unsigned(Current) + 1) after gate_delay;
                end if;
            end if;
        end if;
        
    end process;

    CAR_Out <= Current;

end Behavioral;