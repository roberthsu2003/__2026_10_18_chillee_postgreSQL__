SELECT
    0.1::FLOAT8  + 0.2::FLOAT8  AS 浮點數算的,
    0.1::NUMERIC + 0.2::NUMERIC AS 精確數算的;

SELECT '2024-02-29'::DATE;

SELECT
    0912345678::INT     AS 存成數字,
    '0912345678'::TEXT  AS 存成文字;


CREATE TABLE gift_cards (
    card_no        VARCHAR(16) PRIMARY KEY,  -- 卡號不用計算，所以用文字
    balance        NUMERIC(10, 2),           -- 金額用 NUMERIC
    last_top_up_at TIMESTAMPTZ,              -- 日期加時間
    is_active      BOOLEAN                   -- 是或否
);

INSERT INTO gift_cards VALUES
    ('1234567890123456', 500.50, '2024-03-01 10:30:00+08', true);

SELECT card_no, balance, is_active FROM gift_cards;

CREATE TABLE stores (
    store_id SERIAL PRIMARY KEY,      -- 門市編號，自動產生
    name     VARCHAR(30)  NOT NULL,   -- 門市名稱，必填
    address  VARCHAR(100) NOT NULL,   -- 地址，必填
    region   VARCHAR(10)  NOT NULL,   -- 區域：北部、中部、南部
    phone    VARCHAR(20)              -- 電話，可以空白
);


