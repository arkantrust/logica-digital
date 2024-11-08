library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Creamos la entidad
entity semaforo is
  port (
    clk : in std_logic;
    reset : in std_logic;
    rojo : out std_logic;
    amarillo : out std_logic;
    verde : out std_logic
  );
end semaforo;

-- Arquitectura de la máquina de estados
architecture Behavioral of semaforo is
  type state_type is (S_ROJO, S_AMARILLO1, S_VERDE, S_AMARILLO2);
  signal state : state_type := S_ROJO;
  signal contador : integer := 0;
  constant SEGUNDO : integer := 50_000_000;
  constant TIEMPO_ROJO : integer := 6;
  constant TIEMPO_AMARILLO1 : integer := 2;
  constant TIEMPO_VERDE : integer := 6;
  constant TIEMPO_AMARILLO2 : integer := 2;
begin
  process (clk, reset)
  begin
    if reset = '1' then
      state <= S_ROJO;
      contador <= 0;
    elsif rising_edge(clk) then
      if contador < SEGUNDO * TIEMPO_ROJO - 1 and state = S_ROJO then
        contador <= contador + 1;
      elsif contador < SEGUNDO * TIEMPO_AMARILLO1 - 1 and state = S_AMARILLO1 then
        contador <= contador + 1;
      elsif contador < SEGUNDO * TIEMPO_VERDE - 1 and state = S_VERDE then
        contador <= contador + 1;
      elsif contador < SEGUNDO * TIEMPO_AMARILLO2 - 1 and state = S_AMARILLO2 then
        contador <= contador + 1;
      else
        contador <= 0;
        case state is
          when S_ROJO => state <= S_AMARILLO1;
          when S_AMARILLO1 => state <= S_VERDE;
          when S_VERDE => state <= S_AMARILLO2;
          when S_AMARILLO2 => state <= S_ROJO;
        end case;
      end if;
    end if;
  end process;

  process (state)
  begin
    case state is
      when S_ROJO =>
        rojo <= '0';
        amarillo <= '1';
        verde <= '1';
      when S_AMARILLO1 =>
        rojo <= '1';
        amarillo <= '0';
        verde <= '1';
      when S_VERDE =>
        rojo <= '1';
        amarillo <= '1';
        verde <= '0';
      when S_AMARILLO2 =>
        rojo <= '1';
        amarillo <= '0';
        verde <= '1';
    end case;
  end process;
end Behavioral;