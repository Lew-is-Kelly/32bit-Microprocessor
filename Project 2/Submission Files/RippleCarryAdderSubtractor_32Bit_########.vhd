library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RippleCarryAdderSubtractor_32Bit_20335015 is
    Port ( A, B : in std_logic_vector (31 downto 0);
         S : in std_logic_vector (2 downto 0);
         Sum : out std_logic_vector (31 downto 0);
         C_out, V : out std_logic
        );
end RippleCarryAdderSubtractor_32Bit_20335015;

architecture Behavioral of RippleCarryAdderSubtractor_32Bit_20335015 is

    component RippleCarryAdder_32Bit_20335015
        Port ( A, B : in std_logic_vector (31 downto 0);
             C_in : in std_logic;
             Sum : out std_logic_vector (31 downto 0);
             C_out, V : out std_logic
            );
    end component;

    component BInputLogic_20335015
        Port ( B : in std_logic_vector (31 downto 0);
             S : in std_logic_vector (1 downto 0);
             Z : out std_logic_vector (31 downto 0)
            );
    end component;

    signal w0 : std_logic_vector (31 downto 0);

    constant gate_delay : time := 2ns;

begin

    BInLogic: BInputLogic_20335015 Port Map (B, S(2 downto 1), w0);

    RCA: RippleCarryAdder_32Bit_20335015 Port Map (A, w0, S(0), Sum, C_out, V);

end Behavioral;