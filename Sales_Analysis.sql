CREATE DATABASE Sales_Analysis;

USE Sales_Analysis;

----
Superstore_Sales data imported


SELECT *
FROM Superstore_Sales;

---Total Sales-
SELECT 
SUM(Sales) AS Total_Sales
FROM Superstore_Sales;

--Total Orders

SELECT
COUNT(Order_ID) AS Total_Orders
FROM Superstore_Sales;

--Sales by Region

SELECT
Region,
SUM(Sales) AS Region_Sales
FROM Superstore_Sales
GROUP BY Region
ORDER BY Region_Sales DESC;

--Sales by Category

SELECT
Category,
SUM(Sales) AS Category_Sales
FROM Superstore_Sales
GROUP BY Category
ORDER BY Category_Sales DESC;

--Top 10 Customers

SELECT TOP 10
Customer_Name,
SUM(Sales) AS Customer_Sales
FROM Superstore_Sales
GROUP BY Customer_Name
ORDER BY Customer_Sales DESC;

--Monthly Sales Trend

SELECT
MONTH(Order_Date) AS Sales_Month,
SUM(Sales) AS Monthly_Sales
FROM Superstore_Sales
GROUP BY MONTH(Order_Date)
ORDER BY Sales_Month;

--Sub-category Performance

SELECT
Sub_Category,
SUM(Sales) AS Total_Sales
FROM Superstore_Sales
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;

--Count Customers

SELECT
COUNT(DISTINCT Customer_Name) AS Unique_Customers
FROM Superstore_Sales;

--Highest Sales Order

SELECT TOP 1
Order_ID,
Customer_Name,
Sales
FROM Superstore_Sales
ORDER BY Sales DESC;