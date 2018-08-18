library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use std.env.all;

entity testbanch is
  --generic (size: POSITIVE := 4);
end entity testbanch;
architecture testbanch_imp of testbanch is
    signal clockS : std_logic;
    signal enableForcounter0    : std_logic;
    signal stopForcounter0      : std_logic;
    signal initValueForcounter0 : unsigned(7 downto 0);
    signal outputForcounter0    : unsigned(7 downto 0);
    signal finishedForcounter0  : std_logic;
    
    component Counter is
        port (
            clock     : in  std_logic;
            enable    : in  std_logic;
            stop      : in  std_logic;
            initValue : in  unsigned(7 downto 0);
            output    : out unsigned(7 downto 0);
            finished  : out std_logic := '1'
        );
    end component Counter;
  
begin
    ClockGenerator: process begin
        while true loop
            clockS <= '0';
            wait for 5 NS;
            clockS <= '1';
            wait for 5 NS;
        end loop;
        wait;
    end process ClockGenerator;  

    Stimulus: process begin
        initValueForcounter0 <= x"31";
        enableForcounter0 <= '0';
        wait for 40 NS;
        enableForcounter0 <= '1';
        wait for 20 NS;
        enableForcounter0 <= '0';
        wait for 120 NS;
        stopForcounter0 <= '1' ;
        wait for 130 NS;
        stopForcounter0 <= '0' ;
        wait for 40 NS;        
        finish(0);
    end process Stimulus;
    

    
    counter0 : Counter port map (
        clock     => clockS,
        enable    => enableForcounter0,
        stop      => stopForcounter0,
        initValue => initValueForcounter0,
        output    => outputForcounter0,
        finished  => finishedForcounter0
    );
end architecture testbanch_imp;

