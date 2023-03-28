INSERT INTO socio (DNI, nombre, apellidos, codigo_socio, direccion, telefono) VALUES 
  ('11111111A', 'Laura', 'García', 1001, 'Calle Jaume I 123', '912345678'),
  ('22222222B', 'Carlos', 'Martínez', 1002, 'Calle Aragó 456', '913456789'),
  ('33333333C', 'Ana', 'Fernández', 1003, 'Calle Marina 789', '914567890'),
  ('44444444D', 'Pablo', 'González', 1004, 'Avenida Diagonal 111', '915678901'),
  ('55555555E', 'Lucía', 'López', 1005, 'Passeig de Gràcia 222', '916789012'),
  ('66666666F', 'Javier', 'Sánchez', 1006, 'Calle Mayor 333', '917890123'),
  ('77777777G', 'Marina', 'Gómez', 1007, 'Avenida Diagonal 444', '918901234'),
  ('88888888H', 'Eva', 'Ruiz', 1008, 'Calle Pau Claris 555', '919012345'),
  ('99999999I', 'José', 'Jiménez', 1009, 'Calle Bailen 666', '920123456'),
  ('00000000J', 'Sofía', 'Gutiérrez', 1010, 'Avenida Meridiana 777', '921234567');

INSERT INTO articulo(codigo, nombre, año, resumen, nombre_autor, pais_autor, deterioro) VALUES 
	(101, 'Harry Potter y la piedra filosofal', 1997, 'El primer libro de la serie de Harry Potter', 'J.K. Rowling', 'Reino Unido', NULL),
	(102, 'La plaça del diamant', 1962, 'Una novela que retrata la vida de una mujer en Barcelona durante la Guerra Civil Española', 'Mercè Rodoreda', 'España', NULL),
	(103, 'Don Quijote', 1605, 'Una obra clásica de la literatura española que cuenta las aventuras de un caballero andante', 'Miguel de Cervantes', 'España', 'Páginas sueltas'),
	(104, 'Hamlet', 1603, 'Una tragedia que cuenta la historia del príncipe de Dinamarca y su venganza contra su tío que mató a su padre', 'William Shakespeare', 'Reino Unido', 'Tapa rota'),
	(105, 'La Odisea', -720, 'Una epopeya que cuenta las aventuras de Odiseo en su regreso a casa después de la Guerra de Troya', 'Homero', 'Grecia', NULL);

insert into libro(codigo, num_paginas) values
	(101, 123), (102, 593), (103, 400), (104, 320), (105, 143);

INSERT INTO articulo(codigo, nombre, año, resumen, nombre_autor, pais_autor, deterioro) VALUES
    (201, "La la land", 2016, "Un musical moderno sobre la lucha entre el amor y el éxito en Los Ángeles.", "Damien Chazelle", "Estados Unidos", NULL),
    (202, "El show de Truman", 1998, "Un hombre descubre que su vida es un programa de televisión y lucha por su libertad.", "Peter Weir", "Estados Unidos", "Ligeros rayones"),
    (203, "La forma del agua", 2017, "Una mujer muda se enamora de una criatura anfibia cautiva en un laboratorio militar durante la Guerra Fría.", "Guillermo del Toro", "México", NULL),
    (204, "Shrek", 2001, "Un ogro se embarca en una aventura para rescatar a una princesa y recuperar su pantano.", "Andrew Adamson, Vicky Jenson", "Estados Unidos", "Algunos arañazos"),
    (205, "Toy story", 1995, "Los juguetes de un niño cobran vida cuando él no está presente, pero su felicidad se ve amenazada por la llegada de un nuevo juguete.", "John Lasseter", "Estados Unidos", NULL),
    (206, "Forrest gump", 1994, "La vida de un hombre simple de Alabama que, sin saberlo, se convierte en protagonista de importantes eventos históricos.", "Robert Zemeckis", "Estados Unidos", NULL);

insert into pelicula(codigo, duracion) values
	(201, 123), (202, 100), (203, 150), (204, 90), (205, 80), (206, 142);

INSERT INTO articulo(codigo, nombre, año, resumen, nombre_autor, pais_autor, deterioro) VALUES
	(301, "Abbey road", 1969, "Undécimo álbum de The Beatles", "The Beatles", "Reino Unido", NULL),
	(302, "Back to black", 2006, "Segundo y último álbum de Amy Winehouse", "Amy Winehouse", "Reino Unido", "Bastante deteriorado"),
	(303, "Thriller", 1982, "Sexto álbum de Michael Jackson", "Michael Jackson", "Estados Unidos", "Algo rayado"),
	(304, "Manel", 2008, "Primer álbum del grupo Manel", "Manel", "España", NULL),
	(305, "Fràgil", 2010, "Álbum del grupo Els Pets", "Els Pets", "España", NULL),
	(306, "De bosc", 2012, "Segundo álbum de Pau Vallvé", "Pau Vallvé", "España", NULL);

insert into CD(codigo, num_canciones) values
	(301, 12), (302, 10), (303, 6), (304, 11), (305, 12), (306, 13);

INSERT INTO prestamo(fecha, articulo, socio, fecha_devolucion)
VALUES
('2023-03-05', 101, '11111111A', '2023-03-12'),
('2023-03-12', 203, '22222222B', '2023-03-19'),
('2023-03-19', 302, '33333333C', '2023-03-26'),
('2023-03-26', 202, '44444444D', '2023-04-02'),
('2023-04-05', 306, '55555555E', '2023-04-12'),
('2023-04-12', 104, '66666666F', '2023-04-19'),
('2023-04-19', 102, '77777777G', '2023-04-26');
