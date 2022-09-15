library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RippleCarryAdder_32Bit_20335015 is
    Port ( A, B : in std_logic_vector (31 downto 0);
         C_in : in std_logic;
         Sum : out std_logic_vector (31 downto 0);
         C_out, V : out std_logic
        );
end ;

architecture Behavioral of RippleCarryAdder_32Bit_20335015 is

    component FullAdder_20335015
        Port ( A, B, C_in : in std_logic;
             Sum, C_out : out std_logic
            );
    end component;

    signal w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22,
    w23, w24, w25, w26, w27, w28, w29, w30, w31 : std_logic;

    constant gate_delay : time := 2ns;

begin

    FA00: FullAdder_20335015 Port Map (A(0), B(0), C_in, Sum(0), w0);
    FA01: FullAdder_20335015 Port Map (A(1), B(1), w0, Sum(1), w1);
    FA02: FullAdder_20335015 Port Map (A(2), B(2), w1, Sum(2), w2);
    FA03: FullAdder_20335015 Port Map (A(3), B(3), w2, Sum(3), w3);
    FA04: FullAdder_20335015 Port Map (A(4), B(4), w3, Sum(4), w4);
    FA05: FullAdder_20335015 Port Map (A(5), B(5), w4, Sum(5), w5);
    FA06: FullAdder_20335015 Port Map (A(6), B(6), w5, Sum(6), w6);
    FA07: FullAdder_20335015 Port Map (A(7), B(7), w6, Sum(7), w7);
    FA08: FullAdder_20335015 Port Map (A(8), B(8), w7, Sum(8), w8);
    FA09: FullAdder_20335015 Port Map (A(9), B(9), w8, Sum(9), w9);
    FA10: FullAdder_20335015 Port Map (A(10), B(10), w9, Sum(10), w10);
    FA11: FullAdder_20335015 Port Map (A(11), B(11), w10, Sum(11), w11);
    FA12: FullAdder_20335015 Port Map (A(12), B(12), w11, Sum(12), w12);
    FA13: FullAdder_20335015 Port Map (A(13), B(13), w12, Sum(13), w13);
    FA14: FullAdder_20335015 Port Map (A(14), B(14), w13, Sum(14), w14);
    FA15: FullAdder_20335015 Port Map (A(15), B(15), w14, Sum(15), w15);
    FA16: FullAdder_20335015 Port Map (A(16), B(16), w15, Sum(16), w16);
    FA17: FullAdder_20335015 Port Map (A(17), B(17), w16, Sum(17), w17);
    FA18: FullAdder_20335015 Port Map (A(18), B(18), w17, Sum(18), w18);
    FA19: FullAdder_20335015 Port Map (A(19), B(19), w18, Sum(19), w19);
    FA20: FullAdder_20335015 Port Map (A(20), B(20), w19, Sum(20), w20);
    FA21: FullAdder_20335015 Port Map (A(21), B(21), w20, Sum(21), w21);
    FA22: FullAdder_20335015 Port Map (A(22), B(22), w21, Sum(22), w22);
    FA23: FullAdder_20335015 Port Map (A(23), B(23), w22, Sum(23), w23);
    FA24: FullAdder_20335015 Port Map (A(24), B(24), w23, Sum(24), w24);
    FA25: FullAdder_20335015 Port Map (A(25), B(25), w24, Sum(25), w25);
    FA26: FullAdder_20335015 Port Map (A(26), B(26), w25, Sum(26), w26);
    FA27: FullAdder_20335015 Port Map (A(27), B(27), w26, Sum(27), w27);
    FA28: FullAdder_20335015 Port Map (A(28), B(28), w27, Sum(28), w28);
    FA29: FullAdder_20335015 Port Map (A(29), B(29), w28, Sum(29), w29);
    FA30: FullAdder_20335015 Port Map (A(30), B(30), w29, Sum(30), w30);
    FA31: FullAdder_20335015 Port Map (A(31), B(31), w30, Sum(31), w31);
    
    C_out <= w31;
    V <= w31 xor w30;

end Behavioral;