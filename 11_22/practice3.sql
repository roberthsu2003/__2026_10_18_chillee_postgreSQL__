CREATE TABLE fk_stores(
	store_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE fk_staff(
	staff_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	store_id INT REFERENCES fk_stores(store_id) -- 這一句就是外來鍵
);
