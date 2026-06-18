/*
===============================================================================
Change Over Time Analysis
===============================================================================
Purpose:
    - To track trends, growth, and changes in key metrics over time.
    - For time-series analysis and identifying seasonality.
    - To measure growth or decline over specific periods.

SQL Functions Used:
    - Date Functions: DATEPART(), DATETRUNC(), FORMAT()
    - Aggregate Functions: SUM(), COUNT(), AVG()
===============================================================================
*/
-- Analyse sales performance over time
--YEAR
SELECT 
  YEAR(order_date) as order_year, 
  SUM(sales_amount) as total_Sales,
  COUNT(DISTINCT customer_key) as total_customers,
  SUM(quantity) as total_quanity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY  YEAR(order_date)

--YEAR & MONTH
SELECT 
  YEAR(order_date) as order_year, 
  MONTH(order_date) as order_year, 
  SUM(sales_amount) as total_Sales,
  COUNT(DISTINCT customer_key) as total_customers,
  SUM(quantity) as total_quanity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date)
--Combine YEAR & MONTH into same columns
--Use DATETRUNC(): rounds a date or timestamp to a specified date part
SELECT 
  DATETRUNC(month,order_date) as order_date, 
  SUM(sales_amount) as total_Sales,
  COUNT(DISTINCT customer_key) as total_customers,
  SUM(quantity) as total_quanity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month,order_date)
ORDER BY DATETRUNC(month,order_date)
  
-- FORMAT()
SELECT
    FORMAT(order_date, 'yyyy-MMM') AS order_date,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MMM')
ORDER BY FORMAT(order_date, 'yyyy-MMM');
