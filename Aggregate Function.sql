-- Aggregate function --
DROP TABLE IF EXISTS products;

CREATE TABLE products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(50),
	category VARCHAR(50),
	price NUMERIC(10,2),
	quantity INT,
	added_date DATE,
	discoount_rate NUMERIC(10,2)
);

ALTER TABLE products
RENAME COLUMN discoount_rate TO discount_rate;

INSERT INTO products(product_name, category, price, quantity, added_date, discount_rate)
VALUES ('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
	   ('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
	   ('Headphones', 'Accessories', 1500.75, 50, '2024-02-05', 15.00),
	   ('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
	   ('Desk', 'Furnoture', 8000.00, 15, '2023-11-20', 12.00),
	   ('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
	   ('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
	   ('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
	   ('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18',10.00),
	   ('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);
	  
SELECT * FROM products;

-- Total quantity of all available products
SELECT SUM(quantity) AS tot_quant_product
FROM products;

-- Total quantity of 'Electronics' category and above price 20,000
SELECT SUM(quantity) AS TOT_Qunt_EleProduct
FROM products
WHERE category = 'Electronics' AND price > 20000;

-- Total numbers of products
SELECT COUNT(*) AS TOT_Product
FROM products;

-- Total all products name like 'phone'
SELECT COUNT(*) 
FROM products
WHERE product_name LIKE '%phone%';

-- Average price of all products
SELECT AVG(price) AS tot_avg_price
FROM products;

-- FInd Minimum and Maximum price of all products
SELECT MIN(price) AS tot_min_price,
	   MAX(price) AS tot_max_price
FROM products;