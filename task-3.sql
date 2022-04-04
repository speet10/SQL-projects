SELECT product_name, ROUND(SUM(order_details.unit_price* quantity*(1-discount))) AS sum FROM products
INNER JOIN order_details ON products.product_id = order_details.product_id  
GROUP bY product_name
ORDER BY sum ASC
LIMIT 10;