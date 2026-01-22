--Total Sales per Month
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(order_amount) AS total_sales
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

--Top 3 Customers by Total Spending
SELECT customer_id, total_spent
FROM (
    SELECT customer_id,
           SUM(order_amount) AS total_spent
    FROM orders
    GROUP BY customer_id
) t
ORDER BY total_spent DESC
LIMIT 3;

--Customers with More Than 5 Orders
SELECT customer_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 5;

--Category-Wise Sales
SELECT p.category,
       SUM(oi.quantity * oi.price) AS category_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category;

--Customers Who Never Made a Purchase
SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

--Payment Mode-Wise Order Count
SELECT payment_mode,
       COUNT(order_id) AS total_orders
FROM payments
GROUP BY payment_mode;

--Repeat Customers (More Than One Order)
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

--Highest Selling Product in Each Category
SELECT category, product_name, total_qty
FROM (
    SELECT p.category,
           p.product_name,
           SUM(oi.quantity) AS total_qty,
           RANK() OVER (PARTITION BY p.category ORDER BY SUM(oi.quantity) DESC) AS rnk
    FROM order_items oi
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY p.category, p.product_name
) t
WHERE rnk = 1;

--Average Order Value per Customer
SELECT customer_id,
       AVG(order_amount) AS avg_order_value
FROM orders
GROUP BY customer_id;

--Orders Without Payment
SELECT o.order_id, o.customer_id
FROM orders o
LEFT JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_id IS NULL;