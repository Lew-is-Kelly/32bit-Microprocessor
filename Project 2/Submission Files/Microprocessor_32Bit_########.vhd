library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Microprocessor_32Bit_20335015 is
    Port ( Clock, Reset : in std_logic
        );
end Microprocessor_32Bit_20335015;

architecture Behavioral of Microprocessor_32Bit_20335015 is

    component Datapath_32Bit_20335015
        Port ( Data_In, Const_In : in std_logic_vector (31 downto 0);
             DR, SA, SB, FS : in std_logic_vector (4 downto 0);
             Clock, TA, TB, TD, RW, MD, MB : in std_logic;
             C, V, Z, N : out std_logic;
             Data_Out, Addr_Out : out std_logic_vector (31 downto 0)
            );
    end component;

    component Memory_32Bit_512_20335015
        Port ( Address_In, Data_In : in std_logic_vector (31 downto 0);
             Write_Enable, Clock : in std_logic;
             Data_Out : out std_logic_vector (31 downto 0)
            );
    end component;

    component Multiplexer_32Bit_2to1_20335015
        Port ( A, B : in std_logic_vector(31 downto 0);
             S : in std_logic;
             Z : out std_logic_vector(31 downto 0)
            );
    end component;

    component ControlMemory_42Bit_256_20335015
        Port ( CAR_In: in std_logic_vector (16 downto 0);
             NA : out std_logic_vector (16 downto 0);
             MS : out std_logic_vector (2 downto 0);
             FS : out std_logic_vector (4 downto 0);
             MC, IL, PI, PL, TD, TA, TB, MB, MD, RW, MM, MW, RV, RC, RN, RZ, FL : out std_logic
            );
    end component;

    component VCNZ_FlipFlops_20335015
        Port ( FL : in std_logic;
             V, C, N, Z, RV, RC, RN, RZ : in std_logic;
             FlipOut : out std_logic_vector (3 downto 0)
            );
    end component;

    component CAR_17Bit_20335015
        Port ( MuxC_In : in std_logic_vector (16 downto 0);
             MuxS_In, Clock, Reset : in std_logic;
             CAR_Out : out std_logic_vector (16 downto 0)
            );
    end component;

    component IR_32Bit_20335015
        Port ( IL, Clock : in std_logic;
             Instruction : in std_logic_vector (31 downto 0);
             Opcode : out std_logic_vector (16 downto 0);
             DR, SA, SB : out std_logic_vector (4 downto 0)
            );
    end component;

    component PC_32Bit_20335015
        Port ( PC_In : std_logic_vector (31 downto 0);
             PL, PI, Reset, Clock : in std_logic;
             PC_Out : out std_logic_vector (31 downto 0)
            );
    end component;

    component Multiplexer_1Bit_8to1_20335015
        Port ( in0, in1, in2, in3, in4, in5, in6, in7 : in std_logic;
             S : in std_logic_vector (2 downto 0);
             Z : out std_logic
            );
    end component;

    component ExtendLogic_20335015
        Port ( DRSB : in std_logic_vector (9 downto 0);
             Extend_Out : out std_logic_vector (31 downto 0)
            );
    end component;

    component ZeroFillLogic_20335015
        Port ( SB : in std_logic_vector (4 downto 0);
             ZeroFill_Out : out std_logic_vector (31 downto 0)
            );
    end component;

    component Multiplexer_17Bit_2to1_20335015
        Port ( A, B : in std_logic_vector(16 downto 0);
             S : in std_logic;
             Z : out std_logic_vector(16 downto 0)
            );
    end component;

    signal Memory_Out, BusA, BusB, MuxM_Out, ZeroFill_Out, Extend_Out, Instruction_Address : std_logic_vector (31 downto 0);
    signal DR, SA, SB, FS : std_logic_vector (4 downto 0);
    signal FlipOut : std_logic_vector (3 downto 0);
    signal MS : std_logic_vector (2 downto 0);
    signal CAR_Out, Opcode, NA, MuxC_Out : std_logic_vector (16 downto 0);
    signal DRSB : std_logic_vector (9 downto 0);
    signal MuxS_Out, MC, IL, PI, PL, TD, TA, TB, MB, MD, RW, MM, MW, RV, RC, RN, RZ, FL, C, V, Z, N : std_logic;

    constant gate_delay : time := 2ns;

begin

    DRSB (9 downto 5) <= DR;
    DRSB (4 downto 0) <= SB;

    VCNZ: VCNZ_FlipFlops_20335015 Port Map (FL => FL, V => V, C => C, N => N, Z => Z, RV => RV, RC => RC, RN => RN, RZ => RZ, FlipOut => FlipOut);

    CAR: CAR_17Bit_20335015 Port Map (MuxC_In => MuxC_Out, MuxS_In => MuxS_Out, Clock => Clock, Reset => Reset, CAR_Out => CAR_Out);

    IR: IR_32Bit_20335015 Port Map (IL => IL, Clock => Clock, Instruction => Memory_Out, Opcode => Opcode, DR => DR, SA => SA, SB => SB);

    PC: PC_32Bit_20335015 Port Map (PC_In => Extend_Out, PL => PL, PI => PI, Reset => Reset, Clock => Clock, PC_Out => Instruction_Address);

    MuxC: Multiplexer_17Bit_2to1_20335015 Port Map (A => NA, B => Opcode, S => MC, Z => MuxC_Out);

    MuxS: Multiplexer_1Bit_8to1_20335015 Port Map (in0 => '0', in1 => '1', in2 => FlipOut (0), in3 => FlipOut (1), in4 => FlipOut (2), in5 => FlipOut (3), in6 => not FlipOut (0), in7 => not FlipOut (2), S => MS, Z => MuxS_Out);

    Extend_Logic: ExtendLogic_20335015 Port Map (DRSB => DRSB, Extend_Out => Extend_Out);

    Zero_Fill: ZeroFillLogic_20335015 Port Map (SB => SB, ZeroFill_Out => ZeroFill_Out);

    Control_Memory: ControlMemory_42Bit_256_20335015 Port Map (CAR_In => CAR_Out, NA => NA, MS => MS, FS => FS, MC => MC, IL => IL, PI => PI, PL => PL, TD => TD, TA => TA, TB => TB, MB => MB, MD => MD, RW => RW, MM => MM, MW => MW, RV => RV, RC => RC, RN => RN, RZ => RZ, FL => FL);

    Datapath: Datapath_32Bit_20335015 Port Map (Data_In => Memory_Out, Const_In => ZeroFill_Out, DR => DR, SA => SA, SB => SB, FS => FS, Clock => Clock, TA => TA, TB => TB, TD => TD, RW => RW, MD => MD, MB => MB, C => C, V => V, Z => Z, N => N, Data_Out => BusB, Addr_Out => BusA);

    Memory: Memory_32Bit_512_20335015 Port Map (Address_In => MuxM_Out, Data_In => BusB, Write_Enable => MW, Clock => Clock, Data_Out => Memory_Out);

    MuxM: Multiplexer_32Bit_2to1_20335015 Port Map (A => BusA, B => Instruction_Address, S => MM, Z => MuxM_Out);

end Behavioral;