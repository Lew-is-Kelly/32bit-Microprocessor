library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR_SL_ShiftUnit_20335015 is
    Port ( A : in std_logic_vector (31 downto 0);
         S : in std_logic_vector (1 downto 0);
         Z :out std_logic_vector (31 downto 0)
        );
end SR_SL_ShiftUnit_20335015;

architecture Behavioral of SR_SL_ShiftUnit_20335015 is

    component Multiplexer_1Bit_4to1_20335015
        Port ( in0, in1, in2, in3 : in std_logic;
             S : in std_logic_vector(1 downto 0);
             Z : out std_logic
            );
    end component;

    constant gate_delay : time := 2ns;

begin

    Mux00: Multiplexer_1Bit_4to1_20335015 Port Map (A(0), A(1), A(31), '0', S, Z(0));
    Mux01: Multiplexer_1Bit_4to1_20335015 Port Map (A(1), A(2), A(0), '0', S, Z(1));
    Mux02: Multiplexer_1Bit_4to1_20335015 Port Map (A(2), A(3), A(1), '0', S, Z(2));
    Mux03: Multiplexer_1Bit_4to1_20335015 Port Map (A(3), A(4), A(2), '0', S, Z(3));
    Mux04: Multiplexer_1Bit_4to1_20335015 Port Map (A(4), A(5), A(3), '0', S, Z(4));
    Mux05: Multiplexer_1Bit_4to1_20335015 Port Map (A(5), A(6), A(4), '0', S, Z(5));
    Mux06: Multiplexer_1Bit_4to1_20335015 Port Map (A(6), A(7), A(5), '0', S, Z(6));
    Mux07: Multiplexer_1Bit_4to1_20335015 Port Map (A(7), A(8), A(6), '0', S, Z(7));
    Mux08: Multiplexer_1Bit_4to1_20335015 Port Map (A(8), A(9), A(7), '0', S, Z(8));
    Mux09: Multiplexer_1Bit_4to1_20335015 Port Map (A(9), A(10), A(8), '0', S, Z(9));
    Mux10: Multiplexer_1Bit_4to1_20335015 Port Map (A(10), A(11), A(9), '0', S, Z(10));
    Mux11: Multiplexer_1Bit_4to1_20335015 Port Map (A(11), A(12), A(10), '0', S, Z(11));
    Mux12: Multiplexer_1Bit_4to1_20335015 Port Map (A(12), A(13), A(11), '0', S, Z(12));
    Mux13: Multiplexer_1Bit_4to1_20335015 Port Map (A(13), A(14), A(12), '0', S, Z(13));
    Mux14: Multiplexer_1Bit_4to1_20335015 Port Map (A(14), A(15), A(13), '0', S, Z(14));
    Mux15: Multiplexer_1Bit_4to1_20335015 Port Map (A(15), A(16), A(14), '0', S, Z(15));
    Mux16: Multiplexer_1Bit_4to1_20335015 Port Map (A(16), A(17), A(15), '0', S, Z(16));
    Mux17: Multiplexer_1Bit_4to1_20335015 Port Map (A(17), A(18), A(16), '0', S, Z(17));
    Mux18: Multiplexer_1Bit_4to1_20335015 Port Map (A(18), A(19), A(17), '0', S, Z(18));
    Mux19: Multiplexer_1Bit_4to1_20335015 Port Map (A(19), A(20), A(18), '0', S, Z(19));
    Mux20: Multiplexer_1Bit_4to1_20335015 Port Map (A(20), A(21), A(19), '0', S, Z(20));
    Mux21: Multiplexer_1Bit_4to1_20335015 Port Map (A(21), A(22), A(20), '0', S, Z(21));
    Mux22: Multiplexer_1Bit_4to1_20335015 Port Map (A(22), A(23), A(21), '0', S, Z(22));
    Mux23: Multiplexer_1Bit_4to1_20335015 Port Map (A(23), A(24), A(22), '0', S, Z(23));
    Mux24: Multiplexer_1Bit_4to1_20335015 Port Map (A(24), A(25), A(23), '0', S, Z(24));
    Mux25: Multiplexer_1Bit_4to1_20335015 Port Map (A(25), A(26), A(24), '0', S, Z(25));
    Mux26: Multiplexer_1Bit_4to1_20335015 Port Map (A(26), A(27), A(25), '0', S, Z(26));
    Mux27: Multiplexer_1Bit_4to1_20335015 Port Map (A(27), A(28), A(26), '0', S, Z(27));
    Mux28: Multiplexer_1Bit_4to1_20335015 Port Map (A(28), A(29), A(27), '0', S, Z(28));
    Mux29: Multiplexer_1Bit_4to1_20335015 Port Map (A(29), A(30), A(28), '0', S, Z(29));
    Mux30: Multiplexer_1Bit_4to1_20335015 Port Map (A(30), A(31), A(29), '0', S, Z(30));
    Mux31: Multiplexer_1Bit_4to1_20335015 Port Map (A(31), A(0), A(30), '0', S, Z(31));

end Behavioral;