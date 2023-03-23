-- TABLE
CREATE TABLE empleado(DNI TEXT PRIMARY KEY, nombre TEXT NOT NULL, apellido TEXT NOT NULL, seguridadsocial TEXT NOT NULL UNIQUE, "tel.fijo" TEXT, "tel.movil" TEXT NOT NULL);

CREATE TABLE cocinero(DNI TEXT PRIMARY KEY REFERENCES empleado(DNI), años_servicio INT, empresa TEXT NOT NULL);

CREATE TABLE pinche(DNI TEXT PRIMARY KEY REFERENCES empleado(DNI), fecha_nacimiento TEXT NOT NULL /*"YYYY-MM-DD" format*/, encargado_de TEXT REFERENCES empleado(DNI));

CREATE TABLE almacen(codigo_almacen INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT NOT NULL, numero_almacen INTEGER NOT NULL, descripcion TEXT);

CREATE TABLE plato(nombre TEXT PRIMARY KEY, precio REAL NOT NULL, tiempo TEXT NOT NULL /* entrante, postre... */);

CREATE TABLE estanteria(codigo_estanteria TEXT PRIMARY KEY, tamaño TEXT NOT NULL, ubicada_en INTEGER REFERENCES almacen(codigo_almacen) NOT NULL);

CREATE TABLE ingrediente(nombre TEXT PRIMARY KEY, almacenado_en TEXT REFERENCES estanteria(codigo_estanteria) NOT NULL);

CREATE TABLE ingredientes_platos(ingrediente TEXT REFERENCES ingrediente(nombre), plato TEXT REFERENCES plato(nombre), cantidad INTEGER not NULL, PRIMARY KEY (ingrediente, plato));