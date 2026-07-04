-- Project 3: SQL Data Analysis
-- Dataset: orders (1189 rows, imported from cleaned CSV)

-- Requirement 1: SELECT queries
SELECT * FROM orders LIMIT 5;
SELECT OrderID, Product, TotalPrice FROM orders LIMIT 5;

-- Requirement 2: WHERE - filter rows
SELECT OrderID, Product, OrderStatus, TotalPrice FROM orders WHERE OrderStatus = 'Cancelled' LIMIT 5;
SELECT COUNT(*) FROM orders WHERE OrderStatus = 'Cancelled';

-- Requirement 2: ORDER BY - sort results (had to CAST TotalPrice to number first - it imported as text)
SELECT OrderID, Product, TotalPrice FROM orders ORDER BY CAST(TotalPrice AS REAL) DESC LIMIT 5;

-- Requirement 2: GROUP BY - bucket data
SELECT Product, COUNT(*) FROM orders GROUP BY Product;
SELECT Product, SUM(CAST(TotalPrice AS REAL)) AS TotalRevenue FROM orders GROUP BY Product ORDER BY TotalRevenue DESC;
SELECT Product, AVG(CAST(TotalPrice AS REAL)) AS AvgOrderValue FROM orders GROUP BY Product ORDER BY AvgOrderValue DESC;

-- Requirement 3: Basic aggregations
SELECT SUM(CAST(TotalPrice AS REAL)) FROM orders;
SELECT AVG(TotalPrice) FROM orders;
SELECT COUNT(TotalPrice) FROM orders;