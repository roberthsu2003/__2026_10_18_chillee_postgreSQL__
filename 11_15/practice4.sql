SELECT 
name AS "姓名",
region AS "區域",
phone AS "電話"
FROM stores;

SELECT name AS "商品", price AS "售價", cost AS "成本", price - cost AS "毛利"
FROM products;

SELECT DISTINCT region FROM stores;

SELECT name, price
FROM products
WHERE price > 120;

SELECT COUNT(*) AS "筆數"
FROM orders
WHERE order_date BETWEEN '2024-03-01' AND '2024-03-31'
AND payment_method = '信用卡'
AND status = '已完成';