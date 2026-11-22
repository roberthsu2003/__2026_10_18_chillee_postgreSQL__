UPDATE products
SET price = 75
WHERE name = '美式咖啡'
RETURNING product_id, name, price;
