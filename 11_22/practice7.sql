CREATE TABLE menu_items (
    item_id INT PRIMARY KEY,
    name    VARCHAR(50) NOT NULL
);

CREATE TABLE promo_items (
    promo_id       INT PRIMARY KEY,
    name           VARCHAR(50) NOT NULL,
    discount_price INT NOT NULL
);

INSERT INTO menu_items VALUES
    (1, '美式咖啡'), (2, '拿鐵咖啡'), (3, '卡布奇諾'), (4, '焦糖瑪奇朵');

INSERT INTO promo_items VALUES
    (101, '拿鐵咖啡', 99), (102, '美式咖啡', 69),
    (103, '西西里檸檬咖啡', 89), (104, '燕麥奶拿鐵', 109);

SELECT m.name AS 菜單品項, p.discount_price AS 特價
FROM menu_items m INNER JOIN promo_items p ON m.name = p.name;

SELECT m.name AS 菜單品項, p.discount_price AS 特價
FROM menu_items m LEFT JOIN promo_items p ON m.name = p.name;

SELECT m.name AS 菜單品項, p.discount_price AS 特價
FROM menu_items m RIGHT JOIN promo_items p ON m.name = p.name;

SELECT m.name AS 菜單品項, p.discount_price AS 特價
FROM menu_items m FULL OUTER JOIN promo_items p ON m.name = p.name;
