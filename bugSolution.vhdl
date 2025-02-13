```vhdl
ENTITY counter_fixed IS
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        count : OUT INTEGER RANGE 0 TO 15;
        overflow : OUT STD_LOGIC -- Added overflow flag
    );
END ENTITY;

ARCHITECTURE behavioral OF counter_fixed IS
    SIGNAL internal_count : INTEGER RANGE 0 TO 15 := 0;
BEGIN
    PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            internal_count <= 0;
            overflow <= '0';
        ELSIF rising_edge(clk) THEN
            IF internal_count = 15 THEN
                overflow <= '1';
                internal_count <= 0;  
            ELSE
                internal_count <= internal_count + 1;
                overflow <= '0';
            END IF;
        END IF;
    END PROCESS;
    count <= internal_count;
END ARCHITECTURE;
```