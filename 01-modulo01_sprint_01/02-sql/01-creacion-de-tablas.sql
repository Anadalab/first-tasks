CREATE schema IF NOT EXISTS TIENDA_ZAPATILLAS;
USE TIENDA_ZAPATILLAS;

CREATE TABLE IF NOT EXISTS zapatillas (
id_zapatillas INT, 
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL,
PRIMARY KEY (id_zapatillas)
);

CREATE TABLE IF NOT EXISTS `clientes` (
`id_cliente` INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR (45) NOT NULL,
	numero_telefono INT NOT NULL,
	email VARCHAR (45) NOT NULL,
	direccion VARCHAR (45) NOT NULL,
	ciudad VARCHAR (45), 
	provincia VARCHAR (45) NOT NULL,
	pais VARCHAR (45) NOT NULL,
	codigo_postal VARCHAR (45) NOT NULL,
 PRIMARY KEY (id_cliente)
);

CREATE TABLE IF NOT EXISTS `empleados` (
	id_empleado INT NOT NULL,
	nombre VARCHAR (45)  NOT NULL,
	tienda VARCHAR (45) NOT NULL,
	salario INT,
	fecha_incorporacion DATE NOT NULL,
PRIMARY KEY (id_empleado) 
);
 
 
CREATE TABLE IF NOT EXISTS facturas (
	id_factura INT AUTO_INCREMENT NOT NULL,
    numero_factura VARCHAR (45) NOT NULL,
    fecha DATE NOT NULL,
    id_zapatillas INT NOT NULL,
    id_clientes INT NOT NULL,
    id_empleados INT NOT NULL,
PRIMARY KEY (id_factura),

CONSTRAINT fk_facturas_zapatilla
	FOREIGN KEY (id_zapatillas)
		REFERENCES zapatillas (id_zapatillas)
			ON DELETE CASCADE 
			ON UPDATE CASCADE ,
CONSTRAINT fk_facturas_clientes
	FOREIGN KEY (id_clientes)
		REFERENCES clientes (id_cliente)
			ON DELETE CASCADE 
			ON UPDATE CASCADE ,
CONSTRAINT fk_facturas_empleados
	FOREIGN KEY (id_empleados)
		REFERENCES empleados (id_empleado)
			ON DELETE CASCADE 
			ON UPDATE CASCADE 
);



 

 
 



