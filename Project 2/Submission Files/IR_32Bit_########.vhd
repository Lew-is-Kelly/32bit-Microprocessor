library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IR_32Bit_20335015 is
    Port ( IL, Clock : in std_logic;
         Instruction : in std_logic_vector (31 downto 0);
         Opcode : out std_logic_vector (16 downto 0);
         DR, SA, SB : out std_logic_vector (4 downto 0)
        );
end IR_32Bit_20335015;

architecture Behavioral of IR_32Bit_20335015 is

    signal Instruction_Temp : std_logic_vector (31 downto 0);

    constant gate_delay : time := 2ns;

begin

    Instruction_Temp <= Instruction after gate_delay when IL = '1' else
 Instruction_Temp after gate_delay;

    Opcode <= Instruction_Temp (31 downto 15) after gate_delay when Clock = '1';
    DR <= Instruction_Temp (14 downto 10) after gate_delay when Clock = '1';
    SA <= Instruction_Temp (9 downto 5) after gate_delay when Clock = '1';
    SB <= Instruction_Temp (4 downto 0) after gate_delay when Clock = '1';

end Behavioral;