SELECT category_name AS category, COUNT(products.category_id) AS number_of_products
FROM categories
INNER JOIN products ON categories.category_id = products.category_id
GROUP BY categories.category_name
ORDER BY number_of_products DESC, category ASC; 