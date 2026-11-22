UPDATE products
SET price = 75
WHERE name = '美式咖啡'
RETURNING product_id, name, price;

UPDATE products
SET price = price + 5
WHERE category_id = 2
RETURNING name, price;

INSERT INTO products (category_id, name, price, COST, launched_on)
VALUES (1, '過季草莓拿鐵', 130, 50, '2024-01-01')
RETURNING name, price, COST;

DELETE FROM products
WHERE name = '過季草莓拿鐵'
RETURNING product_id, name;

UPDATE products
SET price = 75
WHERE name = '美式咖啡'
RETURNING product_id, name, price;

BEGIN;
UPDATE products
SET price = 1;

SELECT name, price
FROM products
ORDER BY product_id
LIMIT 3;

ROLLBACK;

BEGIN;
UPDATE products
SET price = 80
WHERE name = '美式咖啡'
RETURNING product_id, name, price;
COMMIT;


