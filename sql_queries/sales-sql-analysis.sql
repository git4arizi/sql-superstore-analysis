-- Total Sales
SELECT ROUND(SUM(Sales),2) AS total_sales
FROM superstore;

-- Sales by Category
SELECT Category, ROUND(SUM(Sales),2) AS total_sales
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;

-- Profit by Region
SELECT Region, ROUND(SUM(Profit),2) AS total_profit
FROM superstore
GROUP BY Region
ORDER BY total_profit DESC;

-- Top 10 Cities by Sales
SELECT City, ROUND(SUM(Sales),2) AS total_sales
FROM superstore
GROUP BY City
ORDER BY total_sales DESC
LIMIT 10;

-- Top 10 Sub-Categories by Sales
SELECT `Sub-Category`, ROUND(SUM(Sales),2) AS total_sales
FROM superstore
GROUP BY `Sub-Category`
ORDER BY total_sales DESC
LIMIT 10;