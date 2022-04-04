SELECT EXTRACT(YEAR FROM order_date) AS year,
EXTRACT(MONTH FROM order_date) AS month,
COUNT(order_details.order_id) 
AS order_count,
ROUND(sum(unit_price*quantity*(1-discount)))
AS revenue FROM order_details
RIGHT JOIN orders ON
order_details.order_id = orders.order_id
WHERE EXTRACT(YEAR FROM orders.order_date) = 1997
GROUP BY EXTRACT(MONTH FROM order_date), 
EXTRACT(YEAR FROM order_date);