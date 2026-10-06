USE sales_dataset_analytics;

SELECT * FROM sales_analytics_dataset;


-- Total Sales
SELECT
	 ROUND(SUM(sales), 2) AS total_sales
FROM sales_analytics_dataset;


-- Total Profit
SELECT
	  ROUND(SUM(Profit), 2) AS total_profit
FROM sales_analytics_dataset;


-- TOTAL Quantity
SELECT
	  SUM(Quantity) AS total_quantity
FROM sales_analytics_dataset;
 
 
 -- CITY PERFORMANCE
SELECT
	  city,
      ROUND(SUM(sales), 2) AS revenue,
      ROUND(SUM(profit), 2) AS profit
FROM sales_analytics_dataset
GROUP BY city
ORDER BY revenue DESC;


-- TOP PRODUCT 
SELECT 
      product,
      ROUND(SUM(quantity), 2) AS unit_sold,
      ROUND(SUM(sales), 2) AS revenue,
      ROUND(SUM(profit), 2) AS profit
FROM sales_analytics_dataset
GROUP BY product
ORDER BY revenue DESC
LIMIT 10;


-- OVERALL PERFORMANCE 
SELECT 
	  ROUND(SUM(sales), 2) AS total_revenue,
      ROUND(SUM(profit), 2) AS total_profit,
      COUNT(DISTINCT order_id) AS total_orders
FROM sales_analytics_dataset;

