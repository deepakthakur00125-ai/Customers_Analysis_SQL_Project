-- queries.sql
USE customers_analysis;

-- 1) Top Spending Customer
SELECT c.customer_id, c.name, SUM(p.amount) AS total_spent
FROM Customers c
JOIN Purchases p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 1;

-- 2) City-wise Customer Count
SELECT city, COUNT(*) AS total_customers
FROM Customers
GROUP BY city;

-- 3) Average Purchase Amount
SELECT ROUND(AVG(amount),2) AS avg_purchase
FROM Purchases;

-- 4) Product Popularity and Revenue
SELECT product, COUNT(*) AS times_bought, SUM(amount) AS total_revenue
FROM Purchases
GROUP BY product
ORDER BY times_bought DESC;

-- 5) Monthly Revenue (YYYY-MM)
SELECT DATE_FORMAT(purchase_date, '%Y-%m') AS year_month, SUM(amount) AS month_revenue
FROM Purchases
GROUP BY year_month
ORDER BY year_month;

-- 6) Customers with > Average Spend
SELECT t.customer_id, t.name, t.total_spent
FROM (
  SELECT c.customer_id, c.name, SUM(p.amount) AS total_spent
  FROM Customers c
  JOIN Purchases p ON c.customer_id = p.customer_id
  GROUP BY c.customer_id, c.name
) t
WHERE t.total_spent > (
  SELECT AVG(total_spent) FROM (
    SELECT SUM(amount) AS total_spent FROM Purchases GROUP BY customer_id
  ) x
);
