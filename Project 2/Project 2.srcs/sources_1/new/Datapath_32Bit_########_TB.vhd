library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Datapath_32Bit_20335015_TB is
end Datapath_32Bit_20335015_TB;

architecture Behavioral of Datapath_32Bit_20335015_TB is

    component Datapath_32Bit_20335015
        Port ( Data_In, Const_In : in std_logic_vector (31 downto 0);
             DR, SA, SB, FS : in std_logic_vector (4 downto 0);
             Clock, TA, TB, TD, RW, MD, MB : in std_logic;
             C, V, Z, N : out std_logic;
             Data_Out, Addr_Out : out std_logic_vector (31 downto 0)
            );
    end component;

    signal Data_In, Const_In, Data_Out, Addr_Out : std_logic_vector (31 downto 0) := (others => '0');
    signal DR, SA, SB, FS : std_logic_vector (4 downto 0);
    signal C, V, Z, N, Clock, TA, TB, TD, RW, MD, MB : std_logic := '0';

    constant delay : time := 20ns;
    constant Clock_Period : time := 20ns;

begin

    Clock_Process: process
    begin

        Clock <='0';
        wait for Clock_Period / 2;
        Clock <= '1';
        wait for Clock_Period / 2;

    end process;

    Datapath: Datapath_32Bit_20335015 Port Map (Data_In => Data_In, Const_In => Const_In, DR => DR, SA => SA, SB => SB, FS => FS, Clock => Clock, TA => TA, TB => TB, TD => TD, RW => RW, MD => MD, MB => MB, C => C, V => V, Z => Z, N => N, Data_Out => Data_out, Addr_Out => Addr_Out);

    stim: process
    begin

        wait for delay;
        Data_In <= x"013649a7";
        SA <= "01010";   --A Register Address = 10
        SB <= "10100";    --B Register Address = 20
        MD <= '1';        --MuxD to Data_In
        RW <= '1';        --Write
        TD <= '0';

        for i in 0 to 31 loop
            wait for 20ns;
            Data_in <= std_logic_vector(Data_in - 1);
            DR <= std_logic_vector(DR + 1);
        end loop;

        wait for delay;
        TD <= '1';
        Data_in <= std_logic_vector(Data_in - 1);

        wait for delay;
        TD <= '0';
        RW <= '1';

        wait for delay;
        DR <= "00101";   --Destination Address = 5
        Const_In <= x"013649a7";
        FS <= "00110";     --A-1

        wait for delay;
        FS <= "00111";     --A

        wait for delay;
        FS <= "00101";     --A+B'+1

        wait for delay;
        FS <= "01100";     --A xor B

        wait for delay;
        FS <= "00100";     --A+B'

        wait for delay;
        FS <= "10000";     --B

        wait for delay;
        FS <= "00011";     --A+B+1

        wait for delay;
        FS <= "10100";     --srB

        wait for delay;
        FS <= "00010";     --A+B

        wait for delay;
        FS <= "01110";     --A'

        wait for delay;
        FS <= "00000";     --A

        wait for delay;
        FS <= "11000";     --slB

        wait for delay;
        FS <= "00001";     --A+1

        wait for delay;
        FS <= "01000";     --A and B

        wait for delay;
        FS <= "01010";     --A or B

        wait for delay;
        RW <= '1';                  --Write
        MB <= '1';                  --MuxB to Const_In

        for i in 0 to 31 loop
            wait for 20ns;
            Data_in <= std_logic_vector(Data_in - 1);
            DR <= std_logic_vector(DR + 1);
        end loop;

        wait for delay;
        TD <= '1';
        Data_in <= std_logic_vector(Data_in - 1);
        wait for delay;
        TD <= '0';
        RW <= '0';        --Write
        Const_In <= x"013649a7";

        wait for delay;
        FS <= "00101";     --A+B'+1

        wait for delay;
        FS <= "01100";     --A xor B

        wait for delay;
        FS <= "00100";     --A+B'

        wait for delay;
        FS <= "10000";     --B

        wait for delay;
        FS <= "00011";     --A+B+1

        wait for delay;
        FS <= "10100";     --srB

        wait for delay;
        FS <= "00010";     --A+B

        wait for delay;
        FS <= "11000";     --slB

        wait for delay;
        FS <= "01000";     --A and B

        wait for delay;
        FS <= "01010";     --A or B

    end process;

end Behavioral;