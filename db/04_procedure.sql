CREATE OR REPLACE PROCEDURE insertar_biblioteca(
  IN nombre_biblio VARCHAR(100)
)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO biblioteca (nombre) VALUES (nombre_biblio);
END;
$$;


--Este procedimiento lo que hace es insertar el nombre de una biblioteca
--con la siguiente llamada 

--CALL insertar_biblioteca('Biblioteca Central');