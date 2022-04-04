SELECT company_name, COUNT(orders.customer_id) AS orders, ARRAY_AGG(order_id) AS order_ids
FROM customers 
JOIN orders
ON customers.customer_id = orders.customer_id
WHERE customers.country LIKE 'USA'
GROUP BY company_name 
ORDER BY orders, company_name
LIMIT 5;