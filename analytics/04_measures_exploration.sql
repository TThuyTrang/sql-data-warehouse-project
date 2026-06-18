/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
--Measures exploration: Calculate the key metric of the business(big numbers) 
--Highest level of aggregation | lowest level of details 
SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/

--Find the total sales 
SELECT SUM(sales_amount) as total_sales FROM gold.fact_sales
  
--Find how many items 
SELECT SUM(quantity) as total_quantity FROM gold.fact_sales
  
--Find the average selling price
SELECT AVG(price) as avg_price FROM gold.fact_sales
  
--Firnd the total number of orders 
SELECT COUNT(order_number) as total_order_number FROM gold.fact_sales
SELECT COUNT(DISTINCT order_number) as total_order_number FROM gold.fact_sales
  
--Find the total number of products
SELECT COUNT(product_name) as total_products from gold.dim_products
  
--Find the total number of customers
SELECT COUNT(customer_key) as total_customers from gold.dim_customers
  
--find the total number of customers that has placed an order
SELECT COUNT (DISTINCT customer_key) as total_customers FROM gold.fact_sales
  
--Generate a report that shows all key metrics of the business
SELECT 'Total Sales' as measure_name, SUM(sales_amount) as measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity) FROM gold.fact_sales
UNION ALL
SELECT 'Average Price', AVG(price) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Orders', COUNT(DISTINCT order_number)  FROM gold.fact_sales
UNION ALL
SELECT  'Total Nr. Products', COUNT(product_name) from gold.dim_products
UNION ALL 
SELECT 'Total Nr. Customer', COUNT (DISTINCT customer_key) FROM gold.fact_sales;
