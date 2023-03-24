# Script to populate BBDD Ej_7_Organigrama

USE organigrama;

INSERT INTO categoria (nombre)  VALUES
	("Administrativo"),
    ("Jefe Departamento"),
    ("CEO"),
    ("Director");
    
INSERT INTO  departamento (nombre) VALUES
	("Dirección"),
	("Marketing"),
	("Logistica"),
	("Finanzas");

INSERT INTO empleado (DNI, no_s_social, codigo_trabajador, nombre, apellidos, direccion, telefono, DNI_responsable) VALUES
	("12345678A", "522427672851", 1, "Jose", "Marín", "Fundació Esplai (si, vive ahí)", "666666666", NULL),
	("72519777G", "754379565782", 2, "Joan", "Lapeyra", "Calle que existe 3", "987654321", "12345678A"),
	("77791527F", "665419919281", 3, "Josep", "Pallàs Batalla", "Calle notefijes 123", "123456789", "72519777G"),
    ("72519777B", "541509467941", 4, "Alberto", "del Pozo", "Calle que existe 4", "111111111", "12345678A"),
    ("72519777C", "124902082789", 5, "Javier", "Pérez", "Calle que existe 5", "222222222", "12345678A"),
    ("72519777D", "345006751555", 6, "Aitor", "Iglesias", "Calle que existe 6", "333333333", "12345678A"),
    ("72519777E", "098633811066", 7, "Andrea", "Dal Pezzo", "Calle que existe 7", "444444444", "12345678A"),
    ("72519777F", "282407564400", 8, "Arnau", "Leinster Beloquí", "Calle que existe 8", "555555555", "12345678A"),
    ("72519777H", "428138794962", 9, "Camila", "Garcia", "Calle que existe 9", "666666666", "12345678A"),
    ("72519777I", "585996863791", 10, "Elena", "Lopez", "Calle que existe 10", "777777777", "12345678A"),
    ("72519777J", "188918274297", 11, "Francisco", "Simplemente Francisco", "Calle que existe 11", "888888888", "12345678A"),
    ("72519777K", "767713947497", 12, "Marc", "Rojo", "Calle que existe 12", "999999999", "12345678A"),
    ("72519777L", "586820096471", 13, "Palmira", "Algomás", "Calle que existe 13", "121212121", "12345678A"),
    ("72519777M", "025326414631", 14, "Paula", "Sousa", "Calle que existe 14", "232323232", "12345678A"),
    ("72519777N", "819365413904", 15, "Roger", "Gibert Rovira", "Calle que existe 15", "343434343", "12345678A"),
    ("72519777O", "440477365062", 16, "Alejandro", "Jiménez Álvarez", "Calle que existe 16", "565656565", "12345678A"),
    ("72519777P", "922153153357", 17, "Christian", "Caro", "Calle que existe 17", "676767676", "12345678A"),
    ("72519777Q", "609120982036", 18, "Marc", "Sáez", "Calle que existe 18", "787878787", "12345678A"),
    ("72519777R", "285803276435", 19, "Paul", "S?", "Calle que existe 19", "898989898", "12345678A");
    
INSERT INTO empleado_departamento (empleado, departamento, es_encargado) VALUES
	("12345678A", "Dirección", TRUE),
    ("72519777Q", "Marketing", TRUE),
    ("77791527F", "Logistica", TRUE),
    ("72519777E", "Finanzas", TRUE),
    ("72519777G", "Dirección", FALSE),
    ("72519777B", "Dirección", FALSE),
    ("72519777C", "Dirección", FALSE),
    ("72519777D", "Marketing", FALSE),
    ("72519777F", "Marketing", FALSE),
    ("72519777H", "Marketing", FALSE),
    ("72519777I", "Logistica", FALSE),
    ("72519777J", "Logistica", FALSE),
    ("72519777K", "Logistica", FALSE),
    ("72519777L", "Finanzas", FALSE),
    ("72519777M", "Finanzas", FALSE),
    ("72519777N", "Finanzas", FALSE),
    ("72519777O", "Marketing", FALSE),
    ("72519777P", "Logistica", FALSE),
    ("72519777R", "Finanzas", FALSE);
    
INSERT INTO contrato (fecha_inicio, fecha_fin, DNI_empleado, categoria) VALUES
	("2023-03-06", "2023-05-31", "12345678A", "CEO"),
	("2023-03-06", "2023-05-31", "72519777Q", "Jefe Departamento"),
	("2023-03-06", "2023-05-31", "77791527F", "Jefe Departamento"),
	("2023-03-06", "2023-05-31", "72519777E", "Jefe Departamento"),
	("2023-03-06", "2023-05-31", "72519777G", "Director"),
	("2023-03-06", "2023-05-31", "72519777B", "Director"),
	("2023-03-06", "2023-05-31", "72519777C", "Director"),
	("2023-03-06", "2023-05-31", "72519777D", "Administrativo"),
	("2023-03-06", "2023-05-31", "72519777F", "Administrativo"),
	("2023-03-06", "2023-05-31", "72519777H", "Administrativo"),
	("2023-03-06", "2023-05-31", "72519777I", "Administrativo"),
	("2023-03-06", "2023-05-31", "72519777J", "Administrativo"),
	("2023-03-06", "2023-05-31", "72519777K", "Administrativo"),
	("2023-03-06", "2023-05-31", "72519777L", "Administrativo"),
	("2023-03-06", "2023-05-31", "72519777M", "Administrativo"),
	("2023-03-06", "2023-05-31", "72519777N", "Administrativo"),
	("2023-03-06", "2023-05-31", "72519777O", "Administrativo"),
	("2023-03-06", "2023-05-31", "72519777P", "Administrativo"),
	("2023-03-06", "2023-05-31", "72519777R", "Administrativo");

INSERT INTO nomina (fecha, salario, contrato) VALUES
	("2023-04-06", "99 999 €", 1),
	("2023-04-06", "10 000 €", 2),
	("2023-04-06", "5 ptas", 3),
	("2023-04-06", "10 000 €", 4),
	("2023-04-06", "5 000 €", 5),
	("2023-04-06", "5 000 €", 6),
	("2023-04-06", "5 000 €", 7),
	("2023-04-06", "2 000 €", 8),
	("2023-04-06", "2 000 €", 9),
	("2023-04-06", "2 000 €", 10),
	("2023-04-06", "2 000 €", 11),
	("2023-04-06", "Gratis", 12),
	("2023-04-06", "2 000 €", 13),
	("2023-04-06", "2 000 €", 14),
	("2023-04-06", "2 000 €", 15),
	("2023-04-06", "2 000 €", 16),
	("2023-04-06", "2 000 €", 17),
	("2023-04-06", "2 000 €", 18),
	("2023-04-06", "2 000 €", 19);


    
    
    