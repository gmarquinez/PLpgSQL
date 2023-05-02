-- Creo el cursor que seleccione todos los registros de la tabla "personas"
DECLARE personas_cursor CURSOR FOR SELECT * FROM personas;

OPEN personas_cursor;

-- Leer los registros del cursor y realizar alguna acción con ellos
FETCH NEXT FROM personas_cursor;
WHILE FOUND LOOP
  --  imprimir su nombre
  RAISE NOTICE 'Nombre: %', personas.nombre;
  -- Leer el siguiente registro
  FETCH NEXT FROM personas_cursor;
END LOOP;

-- Cerrar el cursor
CLOSE personas_cursor;
