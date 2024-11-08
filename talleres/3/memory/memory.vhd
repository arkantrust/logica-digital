library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity memory is
    Port ( 
        clk    : in  STD_LOGIC;  -- Pin 23  (FPGA_CLK)
        reset  : in  STD_LOGIC;  -- Pin 88  (KEY1) - Activo en bajo
        ready  : in  STD_LOGIC;  -- Pin 88  (ckey1) - Activo en bajo
        r_w    : in  STD_LOGIC;  -- Pin 89  (ckey2) - Activo en bajo
        oe     : out STD_LOGIC;  -- Pin 87  (LED1) - Activo en bajo
        we     : out STD_LOGIC   -- Pin 86  (LED2) - Activo en bajo
    );
end memory;

architecture Behavioral of memory is
    type state_type is (IDLE, START, WRITING, READING);
    signal current_state, next_state : state_type;
    
    -- Señales internas para manejar la lógica invertida
    signal reset_int, ready_int, r_w_int : STD_LOGIC;

begin
    -- Inversión de las señales de entrada
    reset_int <= not reset;  -- Convierte activo bajo a activo alto
    ready_int <= not ready;  -- Convierte activo bajo a activo alto
    r_w_int   <= not r_w;   -- Convierte activo bajo a activo alto

    -- Proceso de registro de estado
    SYNC_PROC: process(clk, reset_int)
    begin
        if reset_int = '1' then         -- Reset activo en alto internamente
            current_state <= IDLE;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    -- Proceso combinacional para siguiente estado y salidas
    NEXT_STATE_DECODE: process(current_state, ready_int, r_w_int)
    begin
        -- Valores por defecto de las salidas (LEDs apagados - '1' debido a la lógica invertida)
        oe <= '1';
        we <= '1';
        
        case current_state is
            when IDLE =>
                -- Ambos LEDs apagados en IDLE ('1' para apagado)
                oe <= '1';
                we <= '1';
                if ready_int = '1' then
                    next_state <= START;
                else
                    next_state <= IDLE;
                end if;

            when START =>
                if ready_int = '1' then
                    if r_w_int = '0' then    -- Switch r_w en posición de escritura
                        next_state <= WRITING;
                    else                      -- Switch r_w en posición de lectura
                        next_state <= READING;
                    end if;
                else
                    next_state <= START;
                end if;

            when WRITING =>
                we <= '0';  -- LED2 encendido (activo bajo)
                if ready_int = '1' then
                    next_state <= IDLE;
                else
                    next_state <= WRITING;
                end if;

            when READING =>
                oe <= '0';  -- LED1 encendido (activo bajo)
                if ready_int = '1' then
                    next_state <= IDLE;
                else
                    next_state <= READING;
                end if;

            when others =>
                next_state <= IDLE;
        end case;
    end process;

end Behavioral;