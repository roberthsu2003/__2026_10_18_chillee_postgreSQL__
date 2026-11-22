CREATE TABLE fk_stores(
	store_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE fk_staff(
	staff_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	store_id INT REFERENCES fk_stores(store_id) -- 這一句就是外來鍵
);

INSERT INTO fk_stores(name)
VALUES ('台北信義店'), ('台中逢甲店');

INSERT INTO fk_staff(name, store_id)
VALUES ('張志明', 1), ('陳美玲', 1), ('許淑芬', 2)

-- 保護資料的完整性

INSERT INTO fk_staff(name, store_id)
VALUES ('幽靈員工', 99);