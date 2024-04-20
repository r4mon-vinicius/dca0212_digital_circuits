library IEEE;
use IEEE.std_logic_1164.all;

entity register_flipFlop_1Bit is 

port( i0, i1, i2, i3, clk: in std_logic;
         Q0, Q1, Q2, Q3: out std_logic);
end; 

architecture behav of register_flipFlop_1Bit is

component flipFlop_1bit
port( D, c: in std_logic;
        Q: out std_logic);
end component; 

begin 
	latch_0: flipFlop_1bit port map(i0, clk, Q0);
	latch_1: flipFlop_1bit	port map(i1, clk, Q1);
	latch_2: flipFlop_1bit port map(i2, clk, Q2);
	latch_3: flipFlop_1bit port map(i3, clk, Q3);
end;