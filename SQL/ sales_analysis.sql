CREATE DATABASE Sales_Analysis;

USE Sales_Analysis;

CREATE TABLE Sales_Data (
    Region VARCHAR(20),
    Salesperson VARCHAR(50),
    Revenue DECIMAL(12,2),
    Profit DECIMAL(12,2),
    Units_Sold INT,
    Customer_Satisfaction DECIMAL(3,2),
    Marketing_Spend DECIMAL(10,2),
    Discount_Percentage DECIMAL(5,2),
    Product_Category VARCHAR(50),
    Sales_Channel VARCHAR(20),
    Order_Processing_Time INT
);

-- Count total records
SELECT COUNT(*) FROM sales_data;

-- Display all records
SELECT * FROM sales_data;

-- rename the column region
ALTER TABLE sales_data
RENAME COLUMN `ï»¿Region` TO Region;

-- View the first 10 records
SELECT * FROM sales_data LIMIT 10;

-- Display table structure
DESCRIBE sales_data;

-- Total Revenue
SELECT SUM(Revenue) AS Total_Revenue
FROM sales_data;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM sales_data;

-- Revenue by Region
SELECT Region,
       SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY Region;

-- Profit by Region
SELECT Region,
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Region;

-- Top 5 Salespersons
SELECT Salesperson,
       SUM(Revenue) AS Revenue
FROM sales_data
GROUP BY Salesperson
ORDER BY Revenue DESC
LIMIT 5;

-- Revenue by Product Category
SELECT Product_Category,
       SUM(Revenue) AS Revenue
FROM sales_data
GROUP BY Product_Category
ORDER BY Revenue DESC;

-- Average Customer Satisfaction
SELECT AVG(Customer_Satisfaction) AS Avg_Satisfaction
FROM sales_data;

-- Revenue by Sales Channel
SELECT Sales_Channel,
       SUM(Revenue) AS Revenue
FROM sales_data
GROUP BY Sales_Channel;













