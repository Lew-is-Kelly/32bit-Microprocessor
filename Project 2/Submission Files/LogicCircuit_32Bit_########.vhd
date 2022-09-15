library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicCircuit_32Bit_20335015 is
    Port ( A, B : in std_logic_vector (31 downto 0);
         S : in std_logic_vector (1 downto 0);
         Z : out std_logic_vector (31 downto 0)
        );
end ;

architecture Behavioral of LogicCircuit_32Bit_20335015 is

    component LogicCircuit_1Bit_20335015
        Port ( A, B : in std_logic;
             S : in std_logic_vector (1 downto 0);
             Z : out std_logic
            );
    end component;

    constant gate_delay : time := 2ns;

begin

    LC00: LogicCircuit_1Bit_20335015 Port Map (A(0), B(0), S, Z(0));
    LC01: LogicCircuit_1Bit_20335015 Port Map (A(1), B(1), S, Z(1));
    LC02: LogicCircuit_1Bit_20335015 Port Map (A(2), B(2), S, Z(2));
    LC03: LogicCircuit_1Bit_20335015 Port Map (A(3), B(3), S, Z(3));
    LC04: LogicCircuit_1Bit_20335015 Port Map (A(4), B(4), S, Z(4));
    LC05: LogicCircuit_1Bit_20335015 Port Map (A(5), B(5), S, Z(5));
    LC06: LogicCircuit_1Bit_20335015 Port Map (A(6), B(6), S, Z(6));
    LC07: LogicCircuit_1Bit_20335015 Port Map (A(7), B(7), S, Z(7));
    LC08: LogicCircuit_1Bit_20335015 Port Map (A(8), B(8), S, Z(8));
    LC09: LogicCircuit_1Bit_20335015 Port Map (A(9), B(9), S, Z(9));
    LC10: LogicCircuit_1Bit_20335015 Port Map (A(10), B(10), S, Z(10));
    LC11: LogicCircuit_1Bit_20335015 Port Map (A(11), B(11), S, Z(11));
    LC12: LogicCircuit_1Bit_20335015 Port Map (A(12), B(12), S, Z(12));
    LC13: LogicCircuit_1Bit_20335015 Port Map (A(13), B(13), S, Z(13));
    LC14: LogicCircuit_1Bit_20335015 Port Map (A(14), B(14), S, Z(14));
    LC15: LogicCircuit_1Bit_20335015 Port Map (A(15), B(15), S, Z(15));
    LC16: LogicCircuit_1Bit_20335015 Port Map (A(16), B(16), S, Z(16));
    LC17: LogicCircuit_1Bit_20335015 Port Map (A(17), B(17), S, Z(17));
    LC18: LogicCircuit_1Bit_20335015 Port Map (A(18), B(18), S, Z(18));
    LC19: LogicCircuit_1Bit_20335015 Port Map (A(19), B(19), S, Z(19));
    LC20: LogicCircuit_1Bit_20335015 Port Map (A(20), B(20), S, Z(20));
    LC21: LogicCircuit_1Bit_20335015 Port Map (A(21), B(21), S, Z(21));
    LC22: LogicCircuit_1Bit_20335015 Port Map (A(22), B(22), S, Z(22));
    LC23: LogicCircuit_1Bit_20335015 Port Map (A(23), B(23), S, Z(23));
    LC24: LogicCircuit_1Bit_20335015 Port Map (A(24), B(24), S, Z(24));
    LC25: LogicCircuit_1Bit_20335015 Port Map (A(25), B(25), S, Z(25));
    LC26: LogicCircuit_1Bit_20335015 Port Map (A(26), B(26), S, Z(26));
    LC27: LogicCircuit_1Bit_20335015 Port Map (A(27), B(27), S, Z(27));
    LC28: LogicCircuit_1Bit_20335015 Port Map (A(28), B(28), S, Z(28));
    LC29: LogicCircuit_1Bit_20335015 Port Map (A(29), B(29), S, Z(29));
    LC30: LogicCircuit_1Bit_20335015 Port Map (A(30), B(30), S, Z(30));
    LC31: LogicCircuit_1Bit_20335015 Port Map (A(31), B(31), S, Z(31));


end Behavioral;