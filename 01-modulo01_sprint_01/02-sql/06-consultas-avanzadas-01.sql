-- 1
SELECT  MAX(unit_price) AS highest_price, MIN(unit_price) AS lowest_price
FROM products;

-- 2
select count(product_id), avg(unit_price)
from products;

-- 3
select MAX(freight), MIN(freight)
from orders
where ship_country ='UK';

-- 4
select avg(unit_price)
from products;
-- 4
select product_name, unit_price
from products
where unit_price > 28.866363636363637
order by unit_price desc;

-- 5 
select count(discontinued)
from products
where discontinued=1;

-- 6
select product_id, product_name
from products
order by product_id desc
limit 10 ;
