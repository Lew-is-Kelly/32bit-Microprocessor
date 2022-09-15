library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Memory_32Bit_512_20335015_TB is
end Memory_32Bit_512_20335015_TB;

architecture Behavioral of Memory_32Bit_512_20335015_TB is

    component Memory_32Bit_512_20335015
        Port ( Address_In, Data_In : in std_logic_vector (31 downto 0);
             Write_Enable, Clock : in std_logic;
             Data_Out : out std_logic_vector (31 downto 0)
            );
    end component;

    signal Address_In, Data_In, Data_Out : std_logic_vector (31 downto 0) := (others => '0');
    signal Write_Enable, Clock : std_logic := '0';

    constant Clock_Period : time := 20ns;
    constant delay : time := 20ns;

begin

    Clock_Process: process
    begin

        Clock <='0';
        wait for Clock_Period / 2;
        clock <= '1';
        wait for Clock_Period / 2;

    end process;

    Memory: Memory_32Bit_512_20335015 Port Map (Address_In => Address_In, Data_In => Data_In, Write_Enable => Write_Enable, Clock => Clock, Data_Out => Data_Out);

    stim: process
    begin

        wait for delay;
        Data_In <= x"0000000F";
        Address_In <= x"00000000";
        Write_Enable <= '1';

        wait for delay;
        for i in 0 to 511 loop
            wait for delay;
            Write_Enable <= '0';
            Data_In <= std_logic_vector (Data_In + 1);
            Address_In <= std_logic_vector (Address_In + 1);
            Write_Enable <= '1';
        end loop;

        wait for delay;
        Write_Enable <= '0';
        Address_In <= x"00000000";

        for i in 0 to 511 loop
            wait for delay;
            Address_In <= std_logic_vector (Address_In + 1);
        end loop;

    end process;

end Behavioral;