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
        i_Hex <= "0000"; wait for 10 ns; -- 0
        i_Hex <= "0001"; wait for 10 ns; -- 1
        i_Hex <= "0010"; wait for 10 ns; -- 2
        i_Hex <= "0011"; wait for 10 ns; -- 3
        i_Hex <= "0100"; wait for 10 ns; -- 4
        i_Hex <= "0101"; wait for 10 ns; -- 5
        i_Hex <= "0110"; wait for 10 ns; -- 6
        i_Hex <= "0111"; wait for 10 ns; -- 7
        i_Hex <= "1000"; wait for 10 ns; -- 8
        i_Hex <= "1001"; wait for 10 ns; -- 9
        i_Hex <= "1010"; wait for 10 ns; -- A
        i_Hex <= "1011"; wait for 10 ns; -- b
        i_Hex <= "1100"; wait for 10 ns; -- C
        i_Hex <= "1101"; wait for 10 ns; -- d
        i_Hex <= "1110"; wait for 10 ns; -- E
        i_Hex <= "1111"; wait for 10 ns; -- F

        -- -- End the simulation
        wait;
    end process;
end behavior;