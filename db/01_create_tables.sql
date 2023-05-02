-- CREATE DATABASE biblioteca;


CREATE TABLE biblioteca(
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE libros(
   id SERIAL PRIMARY KEY,
   id_biblioteca INT REFERENCES biblioteca (id),
   isbn VARCHAR(20) NOT NULL,
   titulo VARCHAR(100) NOT NULL,
   autor VARCHAR(100) NOT NULL,
   editorial VARCHAR(100) NOT NULL,
   numcopias INT NOT NULL,
   numcopiasdisponibles INT NOT NULL
 );

CREATE TABLE personas (
  id SERIAL PRIMARY KEY,
  id_biblioteca INT REFERENCES biblioteca (id),
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  nif VARCHAR(9),
  contrasenya VARCHAR(100)
);
