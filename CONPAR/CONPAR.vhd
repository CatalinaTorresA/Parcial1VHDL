library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CONPAR is
    port(
        clock, reset, clkboton, reset2 : in std_logic;
        EN, enable2 : in std_logic;
		  start: in std_logic;
        count : out std_logic_vector(5 downto 0);
		  
		  L: out std_logic;
		  d1, d2: out std_logic_vector(6 downto 0);
        DEC: out std_logic_vector(6 downto 0)
    );
end CONPAR;

architecture CONTADOR_arch of CONPAR is

    signal cnt_int : integer range 0 to 35;
    signal start_in : std_logic;
	 signal contador: unsigned(5 downto 0);
	 signal un : unsigned (5 downto 0);
	 signal cnta: unsigned(3 downto 0);    
    signal counta: std_logic_vector(3 downto 0);
    begin
	 	 STA : process (start, start_in)
				begin
					if (Start= '1') then
						if (start_in = '1') then
							cnt_int <= 35;
						end if;
					else
							cnt_int <= cnt_int;	
				end if;
			end process;
			
			
        Counter : process(clock, reset, start_in) is
            begin
                if (reset = '0') then
                    cnt_int <= 0;
                elsif (clock'event and clock='1') then
                    if (EN = '0') then
								cnt_int <= cnt_int - 1;
								if(cnt_int=0) then
									cnt_int <= cnt_int + 1;
								end if;
                    else
						      cnt_int <= cnt_int;
                        
                    end if;
                end if;
            end process;
        count <= std_logic_vector(to_signed(cnt_int, 6));
		  contador <= to_unsigned(cnt_int, 6);
		  
     DECIM: process (cnt_int) is
     begin
            if (cnt_int<=9) then
                DEC<="0000001";
                elsif (cnt_int>9 and cnt_int<20) then
                DEC<="1001111";
                elsif (cnt_int>19 and cnt_int<30)then
                DEC<= "0010010";
                elsif (cnt_int>29 and cnt_int<40)then
                DEC <="0000110";
					 elsif (cnt_int>39 and cnt_int<50)then
					 DEC <= "1001100";
					 elsif (cnt_int>49 and cnt_int<60)then
					 DEC <= "0100100";
					 else
					 DEC <= "0100000";
            end if;        
    end process;
            un<= contador mod 10; 
    process (cnt_int) is
            begin
            case un is
            when "000000" => d1 <="0000001";
            when "000001" => d1 <="1001111";
            when "000010" => d1 <="0010010";
            when "000011" => d1 <="0000110";
            when "000100" => d1 <="1001100";
            when "000101" => d1 <="0100100";
            when "000110" => d1 <="0100000";
            when "000111" => d1 <="0001111";
            when "001000" => d1 <="0000000";
            when "001001" => d1 <= "0001100";
            when others => d1  <= "1111111";
        end case;
     END PROcess;
	  LED : process (cnt_int)
    begin
      if (cnt_int=0) then 
         L <= '1';
          else 
          L<= '0';
      end if;
    end process;

        
    pSeq: process(clkboton, reset2) is
        begin
        if reset2='1' then
            cnta<=(OTHERS=>'0');
        elsif clkboton'event AND clkboton = '1' then
            if enable2 = '1' then
               cnta<= cnta + 1;
            end if;
        end if;
    end process;    
counta<=std_logic_vector(cnta);
      
    process (cnta) is
            begin
            case cnta is
            when "0000" => d2 <="0000001";
            when "0001" => d2 <="1001111";
            when "0010" => d2 <="0010010";
            when "0011" => d2 <="0000110";
            when "0100" => d2 <="1001100";
            when "0101" => d2 <="0100100";
            when "0110" => d2 <="0100000";
            when "0111" => d2 <="0001111";
            when "1000" => d2 <="0000000";
            when others => d2 <="1111111";
        end case;
     END PROcess;
end CONTADOR_arch;