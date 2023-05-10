CREATE OR REPLACE FUNCTION libros_disponibles(p_id_biblioteca INT)
RETURNS INT AS $$
DECLARE
    total_disponibles INT;
BEGIN
    SELECT COUNT(*)
    INTO total_disponibles
    FROM libros
    WHERE id_biblioteca = p_id_biblioteca AND numcopiasdisponibles > 0;

    RETURN total_disponibles;
END;
$$ LANGUAGE plpgsql;


SELECT libros_disponibles(1);  
-- Cambia este número por el ID de la biblioteca que te interese.

