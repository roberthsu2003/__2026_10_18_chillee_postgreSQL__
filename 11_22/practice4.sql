CREATE TABLE fk_members (
    member_id INT PRIMARY KEY,
    name      VARCHAR(20)
);

CREATE TABLE fk_member_orders (
    order_id  INT PRIMARY KEY,
    member_id INT REFERENCES fk_members(member_id) ON DELETE SET NULL,
    amount    INT
);

INSERT INTO fk_members VALUES (1, '林家豪');
INSERT INTO fk_member_orders VALUES (888, 1, 350);

DELETE FROM fk_members
WHERE member_id=1
