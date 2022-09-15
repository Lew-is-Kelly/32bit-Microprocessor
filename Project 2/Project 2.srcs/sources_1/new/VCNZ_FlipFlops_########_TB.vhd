library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VCNZ_FlipFlops_20335015_TB is
end VCNZ_FlipFlops_20335015_TB;

architecture Behavioral of VCNZ_FlipFlops_20335015_TB is

    component VCNZ_FlipFlops_20335015
        Port ( FL : in std_logic;
             V, C, N, Z, RV, RC, RZ, RN : in std_logic;
             FlipOut : out std_logic_vector (3 downto 0)
            );
    end component;

    signal FL, V, C, N, Z, RV, RC, RZ, RN : std_logic := '0';
    signal FlipOut : std_logic_vector (3 downto 0) := (others => '0');

    constant delay : time := 20ns;

begin

    Flip: VCNZ_FlipFlops_20335015 Port Map (FL => FL, V => V, C => C, N => N, Z => Z, RV => RV, RC => RC, RZ => RZ, RN => RN, FlipOut => FlipOut);

    stim: process
    begin
    
        wait for delay;
        FL <= '0';
        V <= '0';
        C <= '0';
        N <= '0';
        Z <= '0';
        RV <= '0';
        RC <= '0';
        RZ <= '0';
        RN <= '0';

        wait for delay;
        FL <= '0';
        V <= '1';
        C <= '0';
        N <= '1';
        Z <= '0';

        wait for delay;
        FL <= '1';

        wait for delay;
        FL <= '0';
        V <= '0';
        C <= '1';
        N <= '0';
        Z <= '1';

        wait for delay;
        FL <= '1';
        
        wait for delay;
        FL <= '0';
        V <= '1';
        C <= '1';
        N <= '1';
        Z <= '1';
        
        wait for delay;
        FL <= '1';
        
        wait for delay;
        FL <= '0';
        RV <= '1';
        RC <= '1';
        RZ <= '1';
        RN <= '1';
        
        wait for delay;
        FL <= '1';
        
        wait for delay;

    end process;

end Behavioral;