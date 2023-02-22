-- 1.Conociendo el tipo de productos que vendemos en Northwind:
SELECT `products`.`product_id`, `products`.`product_name`, `products`.`unit_price`
FROM `northwich`.`products`
ORDER BY `product_id`ASC
LIMIT 10;

-- 2.Ordenando los resultados:
SELECT `products`.`product_id`, `products`.`product_name`, `products`.`unit_price`
FROM `northwich`.`products`
ORDER BY `product_id`DESC
LIMIT 10;

-- 3.Que pedidos tenemos en nuestra BBDD:eliminando duplicados
SELECT distinct order_id
FROM order_details
LIMIT 2; 

-- 4.Los dos primeros pedidos
SELECT distinct order_id
FROM order_details
LIMIT 2;
 
-- 5.Qué pedidos han gastado más:
SELECT (`quantity`*`unit_price`) AS Importe_Total
FROM order_details
ORDER BY unit_price DESC
LIMIT 3;

-- 6.Los pedidos que están entre las posiciones 5 y 10 de nuestro ranking:
SELECT (`quantity`*`unit_price`) AS Importe_Total
FROM order_details
ORDER BY Importe_total DESC
LIMIT 11
OFFSET 5;

-- 7.Qué categorías tenemos en nuestra BBDD:
SELECT distinct category_name  AS 'NombreDeCategoria'
from categories;

-- 8.Selecciona envios con retraso:
SELECT order_id, shipped_date, DATE_ADD(required_date, INTERVAL 5 DAY), required_date
FROM orders;


-- 9.Selecciona los productos más rentables:
SELECT product_name, unit_price, product_id
FROM products
WHERE unit_price  BETWEEN 15 AND 50
ORDER BY unit_price ;

-- 10.Selecciona los productos con unos precios dados:
SELECT product_name, product_id, unit_price
FROM products
WHERE unit_price in (18,19,20)
ORDER BY unit_price 