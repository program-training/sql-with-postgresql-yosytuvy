-- 1
SELECT product_id, product_name, category_id FROM PRODUCTS
WHERE unit_price > 50;

-- 2
SELECT * FROM CUSTOMERS
WHERE country = 'Germany';

-- 3
SELECT * FROM ORDERS
WHERE customer_id = 'VINET';

-- 4
-- SELECT * FROM orders

-- 5
SELECT * FROM products
ORDER BY unit_price DESC
LIMIT 5;

-- 6
SELECT * FROM employees
WHERE birth_date < '1960-01-01';

-- 7
SELECT * FROM PRODUCTS
WHERE units_in_stock = 0;

-- 8
SELECT AVG(unit_price) AS avarege_price FROM PRODUCTS;

-- 9
SELECT order_id, (SUM(quantity * unit_price)) AS profit FROM order_details
WHERE order_id = 10248
GROUP BY order_id;

-- 10
SELECT category_id, COUNT(product_id) FROM products
GROUP BY category_id;

-- 11
SELECT * FROM products
WHERE discontinued = 1;

-- 12
SELECT * FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 1997;

-- 13
SELECT * FROM customers
WHERE contact_title IN ('Owner', 'CEO');

-- 14
SELECT MAX(unit_price) AS higher_price FROM products;

-- 15
SELECT AVG(
    (EXTRACT(YEAR FROM current_date) - EXTRACT(YEAR FROM birth_date))
) AS avarage_age FROM employees;

-- 16
SELECT * FROM customers
WHERE phone LIKE '%123%';

-- 17
SELECT * FROM products
WHERE units_in_stock < 10 AND discontinued = 0;

-- 18
SELECT MAX(unit_price) AS HighestPrice,
       MIN(unit_price) AS LowestPrice
FROM products;

-- 19
SELECT * FROM orders
WHERE order_date = '1997-05-05';

-- 20
SELECT product_name, quantity_per_unit FROM products;

-- 21
SELECT product_id, product_name, unit_price FROM products
WHERE unit_price > (
    SELECT AVG(unit_price) FROM products
);

-- 22
SELECT city, COUNT(employee_id) as num_employees
FROM employees
GROUP BY city;