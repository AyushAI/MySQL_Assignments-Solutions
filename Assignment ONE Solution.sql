SELECT * FROM all_assignments.sample_superstore;
USE all_assignments;

-- 1- write a sql to get all the orders where customers name has "a" as second character and "d" as fourth character (58 rows)
SELECT * FROM sample_superstore
WHERE customer_name LIKE "_a_d%";

-- 2- write a sql to get all the orders placed in the month of dec 2020 (352 rows) 
SELECT * FROM sample_superstore
WHERE monthname(ORDER_DATE) LIKE "december"; // -- order_date BETWEEN '2020-12-01' AND '2020-12-31'

-- 3- write a query to get all the orders where ship_mode is neither in 'Standard Class' nor in 'First Class' and ship_date is after nov 2020 (944 rows)
SELECT * FROM sample_superstore
WHERE ship_mode NOT IN ('Standard Class','First Class')
AND ship_date > '2016-11-30';

-- 4- write a query to get all the orders where customer name neither start with "A" and nor ends with "n" (9815 rows)
SELECT Customer_Name FROM sample_superstore
WHERE Customer_name NOT LIKE "A%" AND Customer_name NOT LIKE "%N";

-- 5- write a query to get all the orders where profit is negative (1871 rows)
SELECT * FROM sample_superstore
WHERE Profit < 0;

-- 6- write a query to get all the orders where either quantity is less than 3 or profit is 0 (3348)
SELECT * from sample_superstore
WHERE Quantity <3 OR Profit = 0;

-- 7- your manager handles the sales for South region and he wants you to create a report of all the orders in his region where some discount is provided to the customers (815 rows)
SELECT * FROM sample_superstore
WHERE Region LIKE "South" AND Discount > 0;

-- 8- write a query to find top 5 orders with highest sales in furniture category
SELECT Category, sales FROM sample_superstore
WHERE Category LIKE "Furniture" 
ORDER BY sales DESC
LIMIT 5;

-- 9- write a query to find all the records in technology and furniture category for the orders placed in the year 2020 only (1021 rows)
SELECT * FROM sample_superstore
WHERE Category IN ('Technology','Furniture')
AND YEAR(Order_date) = 2014;  

-- 10- write a query to find all the orders where order date is in year 2016 but ship date is in 2017 (33 rows)
SELECT order_date, ship_date FROM sample_superstore
WHERE order_date BETWEEN '2016-12-01' AND '2016-12-31' 
AND ship_date BETWEEN '2017-12-01' AND '2017-12-31';