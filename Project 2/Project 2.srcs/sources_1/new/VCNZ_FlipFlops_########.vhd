library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VCNZ_FlipFlops_20335015 is
    Port ( FL : in std_logic;
         V, C, N, Z, RV, RC, RN, RZ : in std_logic;
         FlipOut : out std_logic_vector (3 downto 0)
        );
end VCNZ_FlipFlops_20335015;

architecture Behavioral of VCNZ_FlipFlops_20335015 is

    constant gate_delay : time := 2ns;

begin

    Flip_Process: process
    begin

        wait for gate_delay;
        
        if FL = '1' then
            
            FlipOut (0) <= C after gate_delay;
            FlipOut (1) <= V after gate_delay;
            FlipOut (2) <= Z after gate_delay;
            FlipOut (3) <= N after gate_delay;
            
            if RC = '1' then
                FlipOut (0) <= '0' after gate_delay;
            end if;

            if RV = '1' then
                FlipOut (1) <= '0' after gate_delay;
            end if;

            if RZ = '1' then
                FlipOut (2) <= '0' after gate_delay;
            end if;

            if RN = '1' then
                FlipOut (3) <= '0' after gate_delay;
            end if;
            
        end if;

    end process;

end Behavioral;