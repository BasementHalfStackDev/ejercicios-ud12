CREATE DATABASE organigrama;

USE organigrama;

CREATE TABLE departamento(
	nombre VARCHAR(30) PRIMARY KEY
);

CREATE TABLE categoria(
	nombre VARCHAR(30) PRIMARY KEY
);

CREATE TABLE empleado(
	DNI VARCHAR(10) PRIMARY KEY,
    no_s_social VARCHAR(12) UNIQUE NOT NULL,
    codigo_trabajador INT UNIQUE NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    direccion VARCHAR(80) NOT NULL,
    telefono VARCHAR(12) NOT NULL,
    DNI_responsable VARCHAR(10) NULL,
	FOREIGN KEY (DNI_responsable) REFERENCES empleado(DNI)
    ON UPDATE CASCADE
);

CREATE TABLE empleado_departamento(
	empleado VARCHAR(10),
    departamento VARCHAR(30),
    es_encargado BOOLEAN,
    PRIMARY KEY (empleado, departamento),
    FOREIGN KEY (empleado) REFERENCES empleado(DNI),
    FOREIGN KEY (departamento) REFERENCES departamento(nombre)
    ON UPDATE CASCADE
);

CREATE TABLE contrato(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    fecha_inicio DATE NOT NULL, # YYYY-MM-DD
    fecha_fin DATE NOT NULL,
    DNI_empleado VARCHAR(10) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    FOREIGN KEY (DNI_empleado) REFERENCES empleado(DNI),
    FOREIGN KEY (categoria) REFERENCES categoria(nombre)
    ON UPDATE CASCADE
);

CREATE TABLE nomina(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    salario VARCHAR(10) NOT NULL,
    contrato INT NOT NULL,
    FOREIGN KEY (contrato) REFERENCES contrato(codigo)
    ON UPDATE CASCADE
);