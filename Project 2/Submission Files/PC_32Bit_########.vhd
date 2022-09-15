library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity PC_32Bit_20335015 is
    Port ( PC_In : std_logic_vector (31 downto 0);
         PL, PI, Reset, Clock : in std_logic;
         PC_Out : out std_logic_vector (31 downto 0)
        );
end PC_32Bit_20335015;

architecture Behavioral of PC_32Bit_20335015 is

    constant gate_delay : time := 2ns;

begin

    process (Clock, Reset)

        variable PC : std_logic_vector (31 downto 0);
        variable Int_PC : integer;

    begin

        if(Reset = '1' and Clock = '1') then 
            PC := x"0000000F";
        elsif(PL = '1' and Clock = '1') then 
            PC := std_logic_vector (PC + PC_In);
        elsif(PI = '1' and Clock = '1') then
            Int_PC := conv_integer(PC);
            Int_PC := Int_PC + conv_integer(1);
            PC := conv_std_logic_vector(Int_PC, 32);
        end if;

        PC_Out <= PC after gate_delay;

    end process;

end Behavioral;