use empresa_comidas;

INSERT INTO empleado (DNI, nombre, apellidos, seguridadsocial, tel_fijo, tel_movil) VALUES
('12345678A', 'María', 'García Pérez', '123456789012', '912345678', '611223344'),
('23456789B', 'Juan', 'Fernández Gómez', '234567890123', '911234567', '622334455'),
('34567890C', 'Lucía', 'González Ruiz', '345678901234', '910123456', '633445566'),
('45678901D', 'Carlos', 'Gómez Sánchez', '456789012345', '913456789', '644556677'),
('11111111A', 'Marta', 'Cyrn', '153456489212', '913345678', '611253344'),
('22222222B', 'Josep', 'Pallas Batalla', '234432890123', '911284567', '622324455'),
('33333333C', 'Francisco', 'Pérez Ruiz', '345621701234', '919123456', '633445456'),
('44444444D', 'Maria', 'Barrientos', '345609901234', '910123456', '633435566');


INSERT INTO cocinero (DNI, años_servicio, empresa) VALUES
('12345678A', 5, 'Rest. El Faro'),
('23456789B', 3, 'Rest. El Parque'),
('34567890C', 8, 'Rest. La Mar'),
('45678901D', 1, 'Rest. El Jardín');

INSERT INTO pinche (DNI, fecha_nacimiento, encargado_de) VALUES
('11111111A', '1999-05-18', '12345678A'),
('22222222B', '1998-11-21', '23456789B'),
('33333333C', '2000-02-14', '34567890C'),
('44444444D', '1997-09-01', '45678901D');

INSERT INTO almacen (nombre, numero_almacen, descripcion) VALUES
('Alm. Central', 1, 'Almacén principal'),
('Alm. de Frutas', 2, 'Almacén para frutas y verduras'),
('Alm. de Bebidas', 3, 'Almacén para bebidas'),
('Alm. de Congelados', 4, 'Almacén para alimentos congelados');

INSERT INTO plato (nombre, precio, tiempo) VALUES
('Ensalada César', 8.5, 'Entrante'),
('Lomo Adobado', 12.5, 'Principal'),
('Tarta de Manzana', 5.5, 'Postre'),
('Huevos Rotos', 7.0, 'Entrante');

INSERT INTO estanteria (codigo_estanteria, tamaño, ubicada_en) VALUES
('ES', 'Grande', 1),
('EB', 'Pequeña', 2),
('EF', 'Mediana', 3),
('EC', 'Pequeña', 4);

INSERT INTO ingrediente (nombre, almacenado_en) VALUES
('Lechuga', 'ES'),
('Pollo', 'ES'),
('Cebolla', 'EB'),
('Manzana', 'EF');

INSERT INTO ingredientes_platos (ingrediente, plato, cantidad_ingrediente) VALUES
('Lechuga', 'Ensalada César', '100 gramos'),
('Pollo', 'Ensalada César', '150 gramos'),
('Cebolla', 'Lomo Adobado', '50 gramos'),
('Manzana', 'Tarta de Manzana', '1 unidad');