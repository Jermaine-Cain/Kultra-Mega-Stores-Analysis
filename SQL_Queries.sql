-- CASE SCENARIO I

-- Query 1: Which product category had the highest sales?
SELECT ProductCategory, SUM(Sales) AS TotalSales
FROM orders
GROUP BY ProductCategory
ORDER BY TotalSales DESC
LIMIT 1;

-- Query 2: What are the Top 3 and Bottom 3 regions in terms of sales?
(SELECT Region, SUM(Sales) AS TotalSales FROM orders GROUP BY Region ORDER BY TotalSales DESC LIMIT 3)
UNION ALL
(SELECT Region, SUM(Sales) AS TotalSales FROM orders GROUP BY Region ORDER BY TotalSales ASC LIMIT 3);

-- Query 3: What were the total sales of appliances in Ontario?
SELECT SUM(Sales) AS TotalSalesAppliancesOntario
FROM orders
WHERE ProductSubCategory = 'Appliances' AND Province = 'Ontario';

-- Query 4: Find the bottom 10 customers by sales to target for revenue increase.
SELECT CustomerName, SUM(Sales) AS TotalSales
FROM orders
GROUP BY CustomerName
ORDER BY TotalSales ASC
LIMIT 10;

-- Query 5: Which shipping method incurred the most shipping cost?
SELECT ShipMode, SUM(ShippingCost) AS TotalShippingCost
FROM orders
GROUP BY ShipMode
ORDER BY TotalShippingCost DESC
LIMIT 1;

-- CASE SCENARIO II

-- Query 6: Who are the most valuable customers (by profit)?
SELECT CustomerName, SUM(Profit) AS TotalProfit
FROM orders
GROUP BY CustomerName
ORDER BY TotalProfit DESC
LIMIT 5;

-- Query 7: Which small business customer had the highest sales?
SELECT CustomerName, SUM(Sales) AS TotalSales
FROM orders
WHERE Segment = 'Small Business'
GROUP BY CustomerName
ORDER BY TotalSales DESC
LIMIT 1;

-- Query 8: Which Corporate Customer placed the most orders (2009–2012)?
SELECT CustomerName, COUNT(OrderID) AS NumberOfOrders
FROM orders
WHERE Segment = 'Corporate' AND TO_DATE(OrderDate, 'MM/DD/YYYY') BETWEEN '2009-01-01' AND '2012-12-31'
GROUP BY CustomerName
ORDER BY NumberOfOrders DESC
LIMIT 1;

-- Query 9: Which consumer customer was the most profitable one?
SELECT CustomerName, SUM(Profit) AS TotalProfit
FROM orders
WHERE Segment = 'Consumer'
GROUP BY CustomerName
ORDER BY TotalProfit DESC
LIMIT 1;

-- Query 10: Which customers returned items, and what segment do they belong to?
SELECT DISTINCT o.CustomerName, o.Segment
FROM orders o
JOIN returns r ON o.OrderID = r.OrderID
WHERE r.Status = 'Returned';

-- Query 11: Analyze shipping costs based on Order Priority.
SELECT OrderPriority, ShipMode, COUNT(OrderID) AS NumberOfOrders, AVG(ShippingCost) AS AverageShippingCost
FROM orders
GROUP BY OrderPriority, ShipMode
ORDER BY OrderPriority, AverageShippingCost DESC;
