UPDATE products
SET price = 75
WHERE name = '美式咖啡'
RETURNING product_id, name, price;

UPDATE products
SET price = price + 5
WHERE category_id = 2
RETURNING name, price;
