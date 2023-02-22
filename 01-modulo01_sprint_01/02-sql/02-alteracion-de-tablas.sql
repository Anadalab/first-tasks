-- Se nos ha olvidado introducir la marca y la talla de las zapatillas:
ALTER table zapatillas
ADD COLUMN
marca VARCHAR (45) NOT NULL;

ALTER table zapatillas
ADD COLUMN
talla INT NOT NULL;

-- Tabla Empleados: salario
ALTER table empleados
MODIFY COLUMN
salario FLOAT;

-- Tabla clientes: Pais 
ALTER table clientes
DROP COLUMN pais;

-- Codigo postal
ALTER table clientes
MODIFY COLUMN codigo_postal INT (5);

-- Tabla facturas : total
ALTER table facturas
ADD COLUMN total FLOAT;