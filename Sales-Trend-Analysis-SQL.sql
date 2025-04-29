-- 1. Creating Database
CREATE DATABASE online_sales;
USE online_sales;

-- 2. Creating the table
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id VARCHAR(10)
);


-- 3. Insert sample data (20 rows)
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1001, '2023-01-15', 250.00, 'P001'),
(1002, '2023-01-17', 300.00, 'P002'),
(1003, '2023-02-10', 150.00, 'P003'),
(1004, '2023-02-14', 200.00, 'P001'),
(1005, '2023-03-01', 500.00, 'P004'),
(1006, '2023-03-21', 100.00, 'P002'),
(1007, '2023-04-05', 400.00, 'P005'),
(1008, '2023-04-12', 320.00, 'P006'),
(1009, '2023-05-20', 180.00, 'P003'),
(1010, '2023-05-25', 250.00, 'P001'),
(1011, '2023-06-02', 330.00, 'P004'),
(1012, '2023-06-15', 270.00, 'P005'),
(1013, '2023-07-08', 290.00, 'P006'),
(1014, '2023-07-19', 310.00, 'P001'),
(1015, '2023-08-03', 410.00, 'P002'),
(1016, '2023-08-23', 180.00, 'P004'),
(1017, '2023-09-14', 275.00, 'P005'),
(1018, '2023-09-21', 220.00, 'P003'),
(1019, '2023-10-10', 310.00, 'P006'),
(1020, '2023-10-29', 295.00, 'P002');

-- 4. Monthly Revenue and Order Volume Analysis
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;


-- 5. Top 3 Months by Revenue
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    monthly_revenue DESC
LIMIT 3;

