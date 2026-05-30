-- String Functions

SELECT * FROM products;

-- Get all category in UpperCase
SELECT UPPER(category) AS upper_case_category
FROM products;

-- Get all category in lower case
SELECT LOWER(category) AS lower_case_category
FROM products;

-- Get product name & category and add '-' hypen in that
SELECT CONCAT(product_name, ' - ', category) AS prdt_name_category
FROM products;

-- Extract first 5 character from product name column
SELECT SUBSTRING(product_name, 1,5) AS FiveChar_OF_PrdName
FROm products;

-- Count the length of product_name columns characters
SELECT LENGTH(product_name) AS LenOf_PrdctName
FROM products;

-- Remove the leading and traling spaces
SELECT TRIM('	MUKUND	') AS clen_data;
SELECT LENGTH(TRIM('	MUKUND	')) AS count_char_spaces;

-- Replace name to the phone to device in product name
SELECT REPLACE(product_name, 'phone','device') AS Replace_Name
FROM products;

-- Get the first three character of category
SELECT LEFT(category,3) AS first_three_char
FROm products;

-- Get last 3 character of category
SELECT RIGHT(category,3) AS last_three_char
FROM products;

