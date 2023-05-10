CREATE OR REPLACE FUNCTION actualizar_copias_disponibles() RETURNS TRIGGER AS $$
BEGIN
    NEW.numcopiasdisponibles := NEW.numcopias;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tr_actualizar_copias_disponibles
BEFORE INSERT ON libros
FOR EACH ROW
EXECUTE FUNCTION actualizar_copias_disponibles();
