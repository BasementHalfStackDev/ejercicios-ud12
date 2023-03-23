-- TABLE
CREATE TABLE socio(DNI TEXT PRIMARY KEY, nombre TEXT NOT NULL, apellidos TEXT NOT NULL, codigo_socio INTEGER UNIQUE NOT NULL, direccion TEXT NOT NULL, telefono TEXT NOT NULL);

CREATE TABLE libro(codigo INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT NOT NULL, año INTEGER NOT NULL, resumen TEXT NOT NULL, nombre_autor TEXT NOT NULL, pais_autor TEXT NOT NULL, deterioro TEXT, num_paginas INTEGER NOT NULL);

CREATE TABLE CD(codigo INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT NOT NULL, año INTEGER NOT NULL, resumen TEXT NOT NULL, nombre_autor TEXT NOT NULL, pais_autor TEXT NOT NULL, deterioro TEXT, num_canciones INTEGER NOT NULL);

CREATE TABLE pelicula(codigo INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT NOT NULL, año INTEGER NOT NULL, resumen TEXT NOT NULL, nombre_autor TEXT NOT NULL, pais_autor TEXT NOT NULL, deterioro TEXT, duracion INTEGER NOT NULL /* en minutos */);

CREATE TABLE prestamo(fecha TEXT NOT NULL /* YYYY-MM-DD Format */, articulo INT NOT NULL REFERENCES pelicula(codigo) REFERENCES libro(codigo) REFERENCES CD(codigo), socio INT NOT NULL REFERENCES socio(dni), fecha_devolucion TEXT NOT NULL /* YYYY-MM-DD Format */, PRIMARY KEY (fecha, articulo, socio));