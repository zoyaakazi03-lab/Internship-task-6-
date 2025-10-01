SELECT*
FROM online_sales
LIMIT 10;

-- Query 2: Monthly Revenue and Order Volume
SELECT 
    strftime('%Y-%m', "Order Date") AS YearMonth,
    SUM(turnover) AS MonthlyRevenue,
    COUNT(DISTINCT "Order ID") AS OrderCount
FROM online_sales
GROUP BY YearMonth
ORDER BY YearMonth;

-- Query 3: Revenue Trend for a Specific Year (2019)
SELECT 
    strftime('%Y-%m', "Order Date") AS YearMonth,
    SUM(turnover) AS MonthlyRevenue,
    COUNT(DISTINCT "Order ID") AS OrderCount
FROM online_sales
WHERE strftime('%Y', "Order Date") = '2019'  
GROUP BY YearMonth
ORDER BY YearMonth;

-- Query 4: Top 3 Months by Revenue
SELECT 
    strftime('%Y-%m', "Order Date") AS YearMonth,
    SUM(turnover) AS MonthlyRevenue
FROM online_sales
GROUP BY YearMonth
ORDER BY MonthlyRevenue DESC
LIMIT 5;

-- Query 5: Total Revenue and Order Count per Product
SELECT 
    "Product",
    SUM(turnover) AS TotalRevenue,
    COUNT(DISTINCT "Order ID") AS TotalOrders
FROM online_sales
GROUP BY "Product"
ORDER BY TotalRevenue DESC;

-- Query 6: Total Revenue and Order Count per Product Category
SELECT 
    catégorie AS ProductCategory,
    SUM(turnover) AS TotalRevenue,
    COUNT(DISTINCT "Order ID") AS TotalOrders
FROM online_sales
GROUP BY ProductCategory
ORDER BY TotalRevenue DESC;

-- Query 7: Average Turnover per Order per Month
SELECT 
    strftime('%Y-%m', "Order Date") AS YearMonth,
    AVG(turnover) AS AvgTurnoverPerOrder
FROM online_sales
GROUP BY YearMonth
ORDER BY YearMonth;

-- Query 8: Total Orders per Month
SELECT 
    strftime('%Y-%m', "Order Date") AS YearMonth,
    COUNT(DISTINCT "Order ID") AS TotalOrders
FROM online_sales
GROUP BY YearMonth
ORDER BY YearMonth;

-- Query 9: Total Revenue per City
SELECT 
    substr("Purchase Address", 1, instr("Purchase Address", ',')-1) AS City,
    SUM(turnover) AS TotalRevenue
FROM online_sales
GROUP BY City
ORDER BY TotalRevenue DESC;

-- Query 10: Top 5 Products by Revenue
SELECT 
    "Product",
    SUM(turnover) AS TotalRevenue
FROM online_sales
GROUP BY "Product"
ORDER BY TotalRevenue DESC
LIMIT 5;
