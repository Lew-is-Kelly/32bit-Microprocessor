library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ControlMemory_42Bit_256_20335015_TB is
end ControlMemory_42Bit_256_20335015_TB;

architecture Behavioral of ControlMemory_42Bit_256_20335015_TB is

    component ControlMemory_42Bit_256_20335015
        Port ( CAR_In: in std_logic_vector (16 downto 0);
             NA : out std_logic_vector (16 downto 0);
             MS : out std_logic_vector (2 downto 0);
             FS : out std_logic_vector (4 downto 0);
             MC, IL, PI, PL, TD, TA, TB, MB, MD, RW, MM, MW, RV, RC, RN, RZ, FL : out std_logic
            );
    end component;

    signal CAR_In, NA : std_logic_vector (16 downto 0) := (others => '0');
    signal FS : std_logic_vector (4 downto 0) := (others => '0');
    signal MS : std_logic_vector (2 downto 0) := (others => '0');
    signal MC, IL, PI, PL, TD, TA, TB, MB, MD, RW, MM, MW, RV, RC, RN, RZ, FL : std_logic := '0';

    constant delay : time := 20ns;

begin

    Control_Memory: ControlMemory_42Bit_256_20335015 Port Map (CAR_In => CAR_In, NA => NA, MS => MS, FS => FS, MC => MC, IL => IL, PI => PI, PL => PL, TD => TD, TA => TA, TB => TB, MB => MB, MD => MD, RW => RW, MM => MM, MW => MW, RV => RV, RC => RC, RN => RN, RZ => RZ, FL => FL);

    stim: process
    begin

        CAR_In <= "00000000000000000";
        
        for i in 0 to 255 loop
            wait for delay;
            CAR_In <= std_logic_vector (CAR_In + 1);
        end loop;

    end process;

end Behavioral;