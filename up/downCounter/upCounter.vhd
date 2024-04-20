library IEEE;
use IEEE.std_logic_1164.all;

entity upCounter is 

port(clk, ld, cnt, reset: in bit;
                    data: in integer range 15 downto 0;
                      tc: out bit;
                       Q: out integer range 15 downto 0);
end upCounter; 

architecture behav of upCounter is
begin
process (clk, reset)
    variable qv: integer range 15 downto 0;
begin
    if (reset = '1') then 
        qv := 0;
    elsif (clk ' event and clk = '1') then
        if (ld = '1') then 
            qv := data;
        else
            if (qv > 15) then
                qv := 0;
            else
                if (cnt >= '1') then 
                    qv := qv + 1;
						 if (qv = 15) then 
							 tc <= '1';
						 else 
							 tc <= '0';
						 end if;
						
                end if;
            end if;
			end if;
	 end if;
    q <= qv;
end process;
end;


