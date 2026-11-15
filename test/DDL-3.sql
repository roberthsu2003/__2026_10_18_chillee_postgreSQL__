CREATE TABLE stores(
	store_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	address VARCHAR(100) NOT NULL,
	region VARCHAR(10) NOT NULL,
	phone VARCHAR(20)
);

SELECT column_name AS 欄位, data_type AS 型別, is_nullable AS 可留空
FROM information_schema.columns
WHERE table_name = 'stores'
ORDER BY ordinal_position;

ALTER TABLE stores ADD COLUMN seat_count INT DEFAULT 0;

ALTER TABLE  stores DROP COLUMN seat_count;

ALTER TABLE stores RENAME  phone TO tel;

ALTER TABLE stores RENAME COLUMN tel TO phone;

ALTER TABLE stores ALTER COLUMN name TYPE VARCHAR(50);

CREATE TABLE temp_notes(note TEXT);
DROP TABLE IF EXISTS temp_notes;

CREATE TABLE fixed_assets (
    id SERIAL PRIMARY KEY,
    asset_code VARCHAR(50) NOT NULL UNIQUE,
    asset_name VARCHAR(100) NOT NULL,
    purchase_date DATE NOT NULL,
    unit_price NUMERIC(12, 2) NOT NULL CHECK (unit_price >= 0),
    location VARCHAR(100)
);