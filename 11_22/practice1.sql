SELECT name, region, phone
FROM stores;

SELECT name AS 門市, region AS 區域
FROM stores;

SELECT name AS 商品, price AS 售價, cost AS 成本, price - cost AS 毛利
FROM products;

SELECT DISTINCT region 
FROM stores;

SELECT name, price
FROM products
WHERE price > 120;

-- AND：兩個條件都要符合。2024 年 3 月用信用卡的已完成訂單有幾筆？
SELECT COUNT(*) AS 筆數
FROM orders
WHERE order_date BETWEEN '2024-03-01' AND '2024-03-31'
  AND payment_method = '信用卡'
  AND status = '已完成';

-- OR：符合其中一個就算。電子支付的訂單前 3 筆
SELECT order_id, payment_method
FROM orders
WHERE payment_method = 'LINE Pay' OR payment_method = '街口支付'
ORDER BY order_id
LIMIT 3;

SELECT COUNT(*) AS 散客訂單數
FROM orders
WHERE customer_id IS NULL;

SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 3;

SELECT product_id, name
FROM products
ORDER BY product_id
LIMIT 5 OFFSET 5;

SELECT
    name,
    salary
FROM
    staff
WHERE
    title = '店長'
ORDER BY
    salary DESC;



