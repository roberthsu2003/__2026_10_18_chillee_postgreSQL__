CREATE TABLE fk_orders (
    order_id INT PRIMARY KEY
);

CREATE TABLE fk_order_items (
    item_id   INT PRIMARY KEY,
    order_id  INT REFERENCES fk_orders(order_id) ON DELETE CASCADE,
    item_name VARCHAR(50)
);

INSERT INTO fk_orders VALUES (101);
INSERT INTO fk_order_items VALUES (1, 101, '美式咖啡'), (2, 101, '可頌');