DO $$
DECLARE
    lib_cursor CURSOR FOR
        SELECT b.nombre AS biblioteca_nombre, l.titulo AS libro_titulo, l.autor AS libro_autor
        FROM libros l
        JOIN biblioteca b ON l.id_biblioteca = b.id
        WHERE l.numcopiasdisponibles > 0;  
        -- Solo selecciona libros que están disponibles.
    row RECORD;
BEGIN
    OPEN lib_cursor;

    FETCH NEXT FROM lib_cursor INTO row;
    WHILE row IS NOT NULL
    LOOP
        RAISE NOTICE 'Biblioteca: %, Libro: %, Autor: %', row.biblioteca_nombre, row.libro_titulo, row.libro_autor;
        FETCH NEXT FROM lib_cursor INTO row;
    END LOOP;

    CLOSE lib_cursor;
END $$;
