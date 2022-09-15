library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IR_32Bit_20335015_TB is
end IR_32Bit_20335015_TB;

architecture Behavioral of IR_32Bit_20335015_TB is

    component IR_32Bit_20335015
        Port ( IL, Clock : in std_logic;
             Instruction : in std_logic_vector (31 downto 0);
             Opcode : out std_logic_vector (16 downto 0);
             DR, SA, SB : out std_logic_vector (4 downto 0)
            );
    end component;

    signal IL, Clock : std_logic := '0';
    signal Instruction : std_logic_vector (31 downto 0) := (others => '0');
    signal Opcode : std_logic_vector (16 downto 0) := (others => '0');
    signal DR, SA, SB : std_logic_vector (4 downto 0) := (others => '0');

    constant Clock_Period : time := 20ns;
    constant delay : time := 20ns;

begin

    Clock_Process: process
    begin

        Clock <= '0';
        wait for Clock_Period / 2;
        Clock <= '1';
        wait for Clock_Period / 2;

    end process;

    IR: IR_32Bit_20335015 Port Map (IL => IL, Clock => Clock, Instruction => Instruction, Opcode => Opcode, DR => DR, SA => SA, SB => SB);

    stim: process
    begin

        wait for delay;
        IL <= '1';
        Instruction <= x"013649A7";

        wait for delay;
        IL <= '0';

        wait for delay;
        IL <= '1';
        Instruction <= x"00000000";

        wait for delay;
        IL <= '0';

        wait for delay;
        Instruction <= x"00000005";

        wait for delay;

    end process;

end Behavioral;