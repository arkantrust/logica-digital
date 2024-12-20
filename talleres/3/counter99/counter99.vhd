-- Implementación de hardware para mostrar el uso de los displays de 7 segmentos
-- en un contador de 0 a 99 corriendo en una tarjeta Cyclone IV.


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY counter99 IS
    PORT(
        CLK         : IN STD_LOGIC;
        INI         : IN STD_LOGIC;
        RESET       : IN STD_LOGIC;
        DISPLAY     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        TRANSISTOR  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0) -- dig1 & dig2 on the EXCEL
    ); 
END counter99;

ARCHITECTURE AR_099 OF counter99 IS
    TYPE MAQUINA IS (UNIDADES, DECENAS);
    SIGNAL EDO_P, EDO_F : MAQUINA := UNIDADES;
    CONSTANT CONTA_RETRASO_FIN : INTEGER := 49_999_999;
    CONSTANT CONTA_SW_FIN : INTEGER := 499_999;

    SIGNAL CONTA_UNIDADES, CONTA_DECENAS : INTEGER RANGE 0 TO 9 := 0;
    SIGNAL CONTA_RETRASO : INTEGER RANGE 0 TO CONTA_RETRASO_FIN := 0;
    SIGNAL CONTA_SWITCH : INTEGER RANGE 0 TO CONTA_SW_FIN := 0;
    SIGNAL CONTADOR_PRINCIPAL : INTEGER RANGE 0 TO 99 := 0;
BEGIN
    PROCESS(CLK)
    BEGIN
        IF RISING_EDGE(CLK) THEN
            IF RESET = '1' THEN
                CONTA_UNIDADES <= 0;
                CONTA_DECENAS <= 0;
                CONTA_RETRASO <= 0;
            ELSIF INI = '1' THEN
                CONTA_RETRASO <= CONTA_RETRASO + 1;
                IF CONTA_RETRASO = CONTA_RETRASO_FIN THEN
                    CONTA_RETRASO <= 0;
                    CONTA_UNIDADES <= CONTA_UNIDADES + 1;
                    IF CONTA_UNIDADES = 9 THEN
                        CONTA_UNIDADES <= 0;
                        CONTA_DECENAS <= CONTA_DECENAS + 1;
                        IF CONTA_DECENAS = 9 THEN
                            CONTA_DECENAS <= 0;
                        END IF;
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    PROCESS(EDO_P)
    BEGIN
        CASE EDO_P IS
            WHEN UNIDADES =>
                EDO_F <= DECENAS;
                TRANSISTOR <= "01";
            WHEN DECENAS =>
                EDO_F <= UNIDADES;
                TRANSISTOR <= "10";
            WHEN OTHERS => NULL;
        END CASE;
    END PROCESS;

    PROCESS(CLK)
    BEGIN
        IF RISING_EDGE(CLK) THEN
            CONTA_SWITCH <= CONTA_SWITCH + 1;
            IF CONTA_SWITCH = CONTA_SW_FIN THEN
                CONTA_SWITCH <= 0;
                EDO_P <= EDO_F;
            END IF;
        END IF;
    END PROCESS;

    CONTADOR_PRINCIPAL <= CONTA_UNIDADES WHEN EDO_P = UNIDADES ELSE CONTA_DECENAS;

    DISPLAY <= "0000001" WHEN CONTADOR_PRINCIPAL = 0 ELSE
               "1001111" WHEN CONTADOR_PRINCIPAL = 1 ELSE
               "0010010" WHEN CONTADOR_PRINCIPAL = 2 ELSE
               "0000110" WHEN CONTADOR_PRINCIPAL = 3 ELSE
               "1001100" WHEN CONTADOR_PRINCIPAL = 4 ELSE
               "0100100" WHEN CONTADOR_PRINCIPAL = 5 ELSE
               "0100000" WHEN CONTADOR_PRINCIPAL = 6 ELSE
               "0001111" WHEN CONTADOR_PRINCIPAL = 7 ELSE
               "0000000" WHEN CONTADOR_PRINCIPAL = 8 ELSE
               "0000100" WHEN CONTADOR_PRINCIPAL = 9 ELSE
               "0000010";
END AR_099;