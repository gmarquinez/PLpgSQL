CREATE OR REPLACE FUNCTION actualizar_copias_disponibles()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE libros
    SET numcopiasdisponibles = numcopiasdisponibles - 1
    WHERE id = NEW.id_libro;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER prestamo_libro
AFTER INSERT ON prestamos
FOR EACH ROW
EXECUTE FUNCTION actualizar_copias_disponibles();


--Esta función actualiza la tabla de libros, 
--restando una unidad al número de copias disponibles del libro prestado.