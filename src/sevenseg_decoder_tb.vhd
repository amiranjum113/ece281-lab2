library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sevenseg_decoder_tb is

end sevenseg_decoder_tb;

architecture behavior of sevenseg_decoder_tb is   
    signal i_Hex   : std_logic_vector(3 downto 0);
    signal o_seg_n : std_logic_vector(6 downto 0); 
begin
    DUT: entity work.sevenseg_decoder
    port map(
        i_Hex => i_Hex,
        o_seg_n => o_seg_n
        );
        
    stim_proc: process
    begin
        -- Test all hex values 0 to F
        i_Hex <= "0000"; 
            assert o_seg_n <= "1000000";wait for 10 ns; -- 0
        i_Hex <= "0001"; wait for 10 ns; -- 1
            assert o_seg_n <= "1111001";wait for 10 ns;
        i_Hex <= "0010"; wait for 10 ns; -- 2
            assert o_seg_n <= "0100100";wait for 10 ns;
        i_Hex <= "0011"; wait for 10 ns; -- 3
            assert o_seg_n <= "0110000";wait for 10 ns;
        i_Hex <= "0100"; wait for 10 ns; -- 4
            assert o_seg_n <= "0011001";wait for 10 ns;
        i_Hex <= "0101"; wait for 10 ns; -- 5
            assert o_seg_n <= "0010010";wait for 10 ns;
        i_Hex <= "0110"; wait for 10 ns; -- 6
            assert o_seg_n <= "0000010";wait for 10 ns;
        i_Hex <= "0111"; wait for 10 ns; -- 7
            assert o_seg_n <= "1111000";wait for 10 ns;
        i_Hex <= "1000"; wait for 10 ns; -- 8
            assert o_seg_n <= "0000000";wait for 10 ns;
        i_Hex <= "1001"; wait for 10 ns; -- 9
            assert o_seg_n <= "0011000";wait for 10 ns;
        i_Hex <= "1010"; wait for 10 ns; -- A
            assert o_seg_n <= "0001000";wait for 10 ns;
        i_Hex <= "1011"; wait for 10 ns; -- b
            assert o_seg_n <= "0000011";wait for 10 ns;
        i_Hex <= "1100"; wait for 10 ns; -- C
            assert o_seg_n <= "0100111";wait for 10 ns;
        i_Hex <= "1101"; wait for 10 ns; -- d
            assert o_seg_n <= "0100001";wait for 10 ns;
        i_Hex <= "1110"; wait for 10 ns; -- E
            assert o_seg_n <= "0000110";wait for 10 ns;
        i_Hex <= "1111"; wait for 10 ns; -- F
            assert o_seg_n <= "0001110";wait for 10 ns;
        --End simulation
        wait;
    end process;
end behavior;