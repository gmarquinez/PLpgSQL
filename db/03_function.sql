CREATE OR REPLACE FUNCTION obtener_libros_prestados_por_persona(
    p_nombre_persona TEXT,
    p_apellido_persona TEXT,
    p_nif_persona TEXT
) RETURNS TABLE (
    titulo TEXT,
    autor TEXT,
    editorial TEXT,
    fecha_prestamo TIMESTAMP,
    fecha_devolucion TIMESTAMP,
    biblioteca TEXT
) AS $$
BEGIN
    RETURN QUERY
    SELECT l.titulo, l.autor, l.editorial, lp.fecha_prestamo, lp.fecha_devolucion, b.nombre AS biblioteca
    FROM libros l
    INNER JOIN libros_prestados lp ON lp.id_libro = l.id
    INNER JOIN personas p ON p.id = lp.id_persona
    INNER JOIN biblioteca b ON b.id = p.id_biblioteca
    WHERE p.nombre = p_nombre_persona AND p.apellido = p_apellido_persona AND p.nif = p_nif_persona;
END;
$$ LANGUAGE plpgsql;
