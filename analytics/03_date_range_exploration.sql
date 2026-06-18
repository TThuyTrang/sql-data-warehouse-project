/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/
--Determine the first and last order date and the total duration in months
SELECT 
  min(order_date) as first_order_date,
  max(order_date) as last_order_date,
  DATEDIFF(MONTH, MIN(order_date), Max(order_date)) as order_range_month 
FROM gold.fact_sales;
--find the youngest and oldest customer
SELECT 
  MIN(birthdate) as oldest_birthdate,
  DATEDIFF(YEAR, MIN(birthdate),getdate()) as oldest_age,
  MAX(birthdate) as youngest_birthdate,
  DATEDIFF(Year, MAX(birthdate), GetDATE()) as youngest_age
FROM gold.dim_customers;
