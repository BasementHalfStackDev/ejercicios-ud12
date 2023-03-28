create database biblioteca_v2;

use biblioteca_v2;

CREATE TABLE socio(
	DNI VARCHAR(10) PRIMARY KEY,
	nombre VARCHAR(20) NOT NULL,
	apellidos VARCHAR(20) NOT NULL,
	codigo_socio INTEGER UNIQUE NOT NULL,
	direccion VARCHAR(50) NOT NULL,
	telefono VARCHAR(15) NOT NULL
);

CREATE TABLE articulo(
	codigo INTEGER PRIMARY KEY,
	nombre VARCHAR(60) NOT NULL,
	año SMALLINT NOT NULL,
	resumen VARCHAR(300) NOT NULL,
	nombre_autor VARCHAR(50) NOT NULL,
	pais_autor VARCHAR(30) NOT NULL,
	deterioro VARCHAR(30)
);

CREATE TABLE libro(
	codigo INTEGER PRIMARY KEY references articulo(codigo),
	num_paginas SMALLINT NOT NULL
);

CREATE TABLE CD(
	codigo INTEGER PRIMARY KEY references articulo(codigo),
	num_canciones SMALLINT NOT NULL
);

CREATE TABLE pelicula(
	codigo INTEGER PRIMARY KEY references articulo(codigo),
	duracion SMALLINT NOT NULL /* en minutos */
);

CREATE TABLE prestamo(
	fecha DATE NOT NULL /* YYYY-MM-DD Format */,
	articulo INT NOT NULL,
	socio VARCHAR(10) NOT NULL,
	fecha_devolucion DATE NOT NULL /* YYYY-MM-DD Format */, 
	PRIMARY KEY (fecha, articulo, socio),
	FOREIGN KEY (articulo) REFERENCES articulo(codigo),
	FOREIGN KEY (socio) REFERENCES socio(DNI)
	ON UPDATE CASCADE
);