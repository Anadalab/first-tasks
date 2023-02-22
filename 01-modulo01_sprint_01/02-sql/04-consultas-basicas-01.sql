USE 	northwind;
-- 1.conociendo a las empleadas
SELECT `employee_id`,`last_name`, `first_name`
FROM northwich.employees ;

-- 2.Concoiendo los productos mas baratos
SELECT product_id
FROM `northwich`.`products`
where unit_price <=5;

-- 3.Concoiendo los productos que queremos maximizar ventas
SELECT product_id
FROM `northwich`.`products`
where unit_price >=18 and unit_price <= 20;

-- 4.conociendo los productos que dan más beneficios
SELECT product_id, unit_price
FROM `northwich`.`products`
where unit_price >=15 and unit_price <= 50;

-- 5. Concoiendo los productos que no tienen precio
SELECT product_id, unit_price
FROM `northwich`.`products`
where unit_price = null;

-- 6. Comparando productos
SELECT product_id
FROM `northwich`.`products`
where unit_price <15 and product_id <10 ;

-- 7. Cambiando operadores
SELECT product_id
FROM `northwich`.`products`
where not unit_price >15 and not product_id >10 ;

-- 8. Conociendo los paises a los que vendemos
SELECT `ship_country`
FROM `northwich`.`orders`;





