SELECT 
name AS "姓名",
region AS "區域",
phone AS "電話"
FROM stores;

SELECT name AS "商品", price AS "售價", cost AS "成本", price - cost AS "毛利"
FROM products;

SELECT DISTINCT region FROM stores;