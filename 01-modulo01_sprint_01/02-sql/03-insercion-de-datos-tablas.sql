-- Insertamos datos en la tabla zapatillas
INSERT INTO zapatillas  (`id_zapatillas`, `modelo`, `color`, `marca`, `talla`)
VALUES (1, 'XQYUN', 'Negro', 'Nike', 42);

INSERT INTO zapatillas  (`id_zapatillas`, `modelo`, `color`, `marca`, `talla`)
VALUES (2, 'UOPMN', 'Rosas', 'Nike', 39 );

INSERT INTO zapatillas  (`id_zapatillas`, `modelo`, `color`, `marca`, `talla`)
VALUES (3, 'OPNYT', 'Verdes', 'Adidas', 35 );

 -- datos de la tabla empleados
INSERT INTO empleados ( `id_empleado`, `nombre`,`tienda` , `salario`, `fecha_incorporacion`)
VALUES 	(1, 'Laura','Alcobendas', 25987, '2010-09-03'),
		(2, 'maria', 'sevilla', 0, '2001-11-04' ),
		(3, 'ester', 'oviedo', 30165.98, '2000-11-29');
        
-- datos de la tabla clientes
INSERT INTO clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES ('Monica', 1234567289, 'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', 28176),
		('Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', 12346),
        ('Carmen', 298463426, 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', 23456);

-- datos de la tabla facturas
INSERT INTO facturas (id_factura,numero_factura, fecha, id_zapatillas, id_empleados, id_clientes, total)
VALUES (1,'123', '2001-12-11', 1, 2, 1, 54.98),
		(2,'1234', '2005-05-23', 1, 1, 3, 89.91),
        (3,'12345', '2015-09-18', 2, 3, 3, 76.23);

-- Tabla zapatillas: En nuestra tienda no vendemos zapatillas Rosas... 
				-- ¿Cómo es posible que tengamos zapatillas de color rosa? 
UPDATE zapatillas
SET color = 'Amarillas' 
WHERE id_zapatillas = 2;

-- Tabla empleados: Laura se ha cambiado de ciudad y ya no vive en Alcobendas  ahora vive en A Coruña.
UPDATE empleados
SET tienda = 'A Coruña'
WHERE id_empleado = 1;

-- Tabla clientes :El Numero de telefono de Monica esta mal!!! 
				-- Metimos un digito de más. En realidad su número es: 123456728
UPDATE clientes
SET numero_telefono = '12345678'
WHERE id_cliente = 1;

-- Tabla facturas: El total de la factura de la zapatilla cuyo id es 2 es incorrecto. 
				-- En realidad es: 89,91.
UPDATE facturas
SET total = 89.91
WHERE id_factura = 2;