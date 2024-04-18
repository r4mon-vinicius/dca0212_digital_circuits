library IEEE;
use IEEE.std_logic_1164.all;

entity latchD_1bit is 

port(D, c: in std_logic;
        Q: out std_logic);
end; 

architecture behav of latchD_1bit is 
begin
process (D, c)
begin 
    if (c = '1') then
        Q <= D;
    end if;
end process;
end;