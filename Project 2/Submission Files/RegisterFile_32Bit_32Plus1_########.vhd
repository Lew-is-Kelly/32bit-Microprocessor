library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegisterFile_32Bit_32Plus1_20335015 is
    Port( DR, AA, BA : in std_logic_vector (4 downto 0);
         RW, Clock, TA, TB, TD : in std_logic;
         Data : in std_logic_vector (31 downto 0);
         A, B : out std_logic_vector (31 downto 0)
        );

end RegisterFile_32Bit_32Plus1_20335015;

architecture Behavioral of RegisterFile_32Bit_32Plus1_20335015 is

    component Register_32Bit_20335015
        Port ( Data : in std_logic_vector(31 downto 0);
             load, Clock : in std_logic;
             Z : out std_logic_vector(31 downto 0)
            );
    end component;

    component Decoder_32Bit_5to32_20335015
        Port( S : in std_logic_vector(4 downto 0);
             Z : out std_logic_vector(31 downto 0)
            );
    end component;

    component Multiplexer_32Bit_32to1_20335015
        Port ( in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18,
 in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31 : in std_logic_vector(31 downto 0);
             S : in std_logic_vector(4 downto 0);
             Z : out std_logic_vector(31 downto 0)
            );
    end component;

    component Multiplexer_32Bit_2to1_20335015
        Port ( A, B : in std_logic_vector(31 downto 0);
             S : in std_logic;
             Z : out std_logic_vector(31 downto 0)
            );
    end component;

    signal regz00, regz01, regz02, regz03, regz04, regz05, regz06, regz07, regz08, regz09,  regz10, regz11, regz12,
 regz13, regz14, regz15, regz16, regz17, regz18, regz19, regz20, regz21, regz22, regz23, regz24, regz25, regz26,
 regz27, regz28, regz29, regz30, regz31, regz32, load, muxA_Out, muxB_Out : std_logic_vector(31 downto 0);

begin

    des_dec: Decoder_32Bit_5to32_20335015
        Port Map ( S => DR,
                 Z => load
                );

    reg00: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(0) and RW and (not TD),
                 Clock => Clock,
                 Z => regz00
                );

    reg01: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(1) and RW and (not TD),
                 Clock => Clock,
                 Z => regz01
                );

    reg02: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(2) and RW and (not TD),
                 Clock => Clock,
                 Z => regz02
                );

    reg03: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(3) and RW and (not TD),
                 Clock => Clock,
                 Z => regz03
                );

    reg04: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(4) and RW and (not TD),
                 Clock => Clock,
                 Z => regz04
                );

    reg05: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(5) and RW and (not TD),
                 Clock => Clock,
                 Z => regz05
                );

    reg06: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(6) and RW and (not TD),
                 Clock => Clock,
                 Z => regz06
                );

    reg07: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(7) and RW and (not TD),
                 Clock => Clock,
                 Z => regz07
                );

    reg08: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(8) and RW and (not TD),
                 Clock => Clock,
                 Z => regz08
                );

    reg09: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(9) and RW and (not TD),
                 Clock => Clock,
                 Z => regz09
                );

    reg10: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(10) and RW and (not TD),
                 Clock => Clock,
                 Z => regz10
                );

    reg11: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(11) and RW and (not TD),
                 Clock => Clock,
                 Z => regz11
                );

    reg12: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(12) and RW and (not TD),
                 Clock => Clock,
                 Z => regz12
                );

    reg13: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(13) and RW and (not TD),
                 Clock => Clock,
                 Z => regz13
                );

    reg14: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(14) and RW and (not TD),
                 Clock => Clock,
                 Z => regz14
                );

    reg15: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(15) and RW and (not TD),
                 Clock => Clock,
                 Z => regz15
                );

    reg16: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(16) and RW and (not TD),
                 Clock => Clock,
                 Z => regz16
                );

    reg17: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(17) and RW and (not TD),
                 Clock => Clock,
                 Z => regz17
                );

    reg18: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(18) and RW and (not TD),
                 Clock => Clock,
                 Z => regz18
                );

    reg19: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(19) and RW and (not TD),
                 Clock => Clock,
                 Z => regz19
                );

    reg20: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(20) and RW and (not TD),
                 Clock => Clock,
                 Z => regz20
                );

    reg21: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(21) and RW and (not TD),
                 Clock => Clock,
                 Z => regz21
                );

    reg22: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(22) and RW and (not TD),
                 Clock => Clock,
                 Z => regz22
                );

    reg23: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(23) and RW and (not TD),
                 Clock => Clock,
                 Z => regz23
                );

    reg24: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(24) and RW and (not TD),
                 Clock => Clock,
                 Z => regz24
                );

    reg25: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(25) and RW and (not TD),
                 Clock => Clock,
                 Z => regz25
                );

    reg26: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(26) and RW and (not TD),
                 Clock => Clock,
                 Z => regz26
                );

    reg27: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(27) and RW and (not TD),
                 Clock => Clock,
                 Z => regz27
                );

    reg28: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(28) and RW and (not TD),
                 Clock => Clock,
                 Z => regz28
                );

    reg29: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(29) and RW and (not TD),
                 Clock => Clock,
                 Z => regz29
                );

    reg30: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(30) and RW and (not TD),
                 Clock => Clock,
                 Z => regz30
                );

    reg31: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => load(31) and RW and (not TD),
                 Clock => Clock,
                 Z => regz31
                );

    tmp_reg: Register_32Bit_20335015
        Port Map ( Data => Data,
                 load => RW and TD,
                 Clock => Clock,
                 Z => regz32
                );

    mux00: Multiplexer_32Bit_32to1_20335015
        Port Map ( in0 => regz00,
                 in1 => regz01,
                 in2 => regz02,
                 in3 => regz03,
                 in4 => regz04,
                 in5 => regz05,
                 in6 => regz06,
                 in7 => regz07,
                 in8 => regz08,
                 in9 => regz09,
                 in10 => regz10,
                 in11 => regz11,
                 in12 => regz12,
                 in13 => regz13,
                 in14 => regz14,
                 in15 => regz15,
                 in16 => regz16,
                 in17 => regz17,
                 in18 => regz18,
                 in19 => regz19,
                 in20 => regz20,
                 in21 => regz21,
                 in22 => regz22,
                 in23 => regz23,
                 in24 => regz24,
                 in25 => regz25,
                 in26 => regz26,
                 in27 => regz27,
                 in28 => regz28,
                 in29 => regz29,
                 in30 => regz30,
                 in31 => regz31,
                 S => AA,
                 Z => muxA_Out
                );

    mux01: Multiplexer_32Bit_32to1_20335015
        Port Map ( in0 => regz00,
                 in1 => regz01,
                 in2 => regz02,
                 in3 => regz03,
                 in4 => regz04,
                 in5 => regz05,
                 in6 => regz06,
                 in7 => regz07,
                 in8 => regz08,
                 in9 => regz09,
                 in10 => regz10,
                 in11 => regz11,
                 in12 => regz12,
                 in13 => regz13,
                 in14 => regz14,
                 in15 => regz15,
                 in16 => regz16,
                 in17 => regz17,
                 in18 => regz18,
                 in19 => regz19,
                 in20 => regz20,
                 in21 => regz21,
                 in22 => regz22,
                 in23 => regz23,
                 in24 => regz24,
                 in25 => regz25,
                 in26 => regz26,
                 in27 => regz27,
                 in28 => regz28,
                 in29 => regz29,
                 in30 => regz30,
                 in31 => regz31,
                 S => BA,
                 Z => muxB_Out
                );

    mux02: Multiplexer_32Bit_2to1_20335015 Port Map (muxA_Out, regz32, TA, A);

    mux03: Multiplexer_32Bit_2to1_20335015 Port Map (muxB_Out, regz32, TB, B);

end Behavioral;