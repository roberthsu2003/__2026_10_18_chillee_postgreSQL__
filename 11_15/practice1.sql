CREATE TABLE stores(
	store_id SERIAL PRIMARY KEY,      -- 門市編號，自動產生
	name     VARCHAR(30)  NOT NULL,   -- 門市名稱，必填
	address  VARCHAR(100) NOT NULL,   -- 地址，必填
	region   VARCHAR(10)  NOT NULL,   -- 區域：北部、中部、南部
	phone    VARCHAR(20)              -- 電話，可以空白
);

CREATE TABLE public."商店" (
    "商店id" SERIAL PRIMARY KEY, -- 這是註解
    "名稱"   VARCHAR(100) NOT NULL,
    "地址"   VARCHAR(255) NOT NULL,
    "區域"   VARCHAR(50) NOT NULL,
    "電話"   VARCHAR(30)
);

ALTER TABLE stores ADD COLUMN seat_count INT DEFAULT 0;
ALTER TABLE stores DROP COLUMN seat_count;

ALTER TABLE stores RENAME COLUMN phone TO tel;
ALTER TABLE stores RENAME COLUMN tel TO phone;
ALTER TABLE stores ALTER COLUMN name TYPE VARCHAR(50);

CREATE TABLE temp_notes(note text);
DROP TABLE IF EXISTS temp_notes ;

CREATE TABLE public.employees (
    employee_id    SERIAL PRIMARY KEY,
    name           VARCHAR(100) NOT NULL,
    title          VARCHAR(100) NOT NULL,
    hire_date      DATE NOT NULL,
    monthly_salary INTEGER NOT NULL
);

CREATE TABLE sample_products (
    product_id SERIAL PRIMARY KEY,                     -- 身分證
    name       VARCHAR(50) NOT NULL UNIQUE,            -- 必填且不可重複
    price      NUMERIC(10, 2) NOT NULL CHECK (price >= 0), -- 售價不可為負
    cost       NUMERIC(10, 2) CHECK (cost >= 0),       -- 成本不可為負
    is_active  BOOLEAN NOT NULL DEFAULT true,          -- 沒填就是供應中
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP   -- 沒填就是現在時間
);

INSERT INTO sample_products (name, price, cost) VALUES ('經典拿鐵', 95, 35);

