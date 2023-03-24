CREATE DATABASE empresa_comidas;

use empresa_comidas;

CREATE TABLE empleado(
DNI VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(20) NOT NULL, 
apellidos VARCHAR(50) NOT NULL, 
seguridadsocial VARCHAR(12) NOT NULL UNIQUE, 
tel_fijo VARCHAR(12), 
tel_movil VARCHAR(12) NOT NULL
);

CREATE TABLE cocinero(
DNI VARCHAR(10) PRIMARY KEY,
años_servicio SMALLINT,
empresa VARCHAR(20) NOT NULL,
FOREIGN KEY (DNI) REFERENCES empleado(DNI)
ON UPDATE CASCADE
);

CREATE TABLE pinche(
DNI VARCHAR(10) PRIMARY KEY,
fecha_nacimiento DATE NOT NULL /*"YYYY-MM-DD" format*/,
encargado_de VARCHAR(10) NOT NULL,
FOREIGN KEY (DNI) REFERENCES empleado(DNI),
FOREIGN KEY (encargado_de) REFERENCES cocinero(DNI)
ON UPDATE CASCADE
);

CREATE TABLE almacen(
codigo_almacen INTEGER PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(20) NOT NULL,
numero_almacen INTEGER NOT NULL,
descripcion VARCHAR(100)
);

CREATE TABLE plato(
nombre VARCHAR(40) PRIMARY KEY,
precio FLOAT NOT NULL,
tiempo VARCHAR(15) NOT NULL /* entrante, postre... */
);

CREATE TABLE estanteria(
codigo_estanteria VARCHAR(2), /* 2 letras identificativas */
tamaño VARCHAR(10) NOT NULL,
ubicada_en INTEGER NOT NULL,
PRIMARY KEY (codigo_estanteria, ubicada_en),
FOREIGN KEY (ubicada_en) REFERENCES almacen(codigo_almacen)
ON UPDATE CASCADE
);

CREATE TABLE ingrediente(
nombre VARCHAR(20) PRIMARY KEY,
almacenado_en VARCHAR(2) NOT NULL,
FOREIGN KEY (almacenado_en) REFERENCES estanteria(codigo_estanteria)
ON UPDATE CASCADE
);

CREATE TABLE ingredientes_platos(
ingrediente VARCHAR(20) NOT NULL,
plato VARCHAR(40) NOT NULL,
cantidad_ingrediente VARCHAR(10) NOT NULL,
PRIMARY KEY (ingrediente, plato),
FOREIGN KEY (ingrediente) REFERENCES ingrediente(nombre),
FOREIGN KEY (plato) REFERENCES plato(nombre)
);