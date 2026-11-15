CREATE TABLE "耗材庫存" (
    "品號"       VARCHAR(30)  PRIMARY KEY,
    "品名"       VARCHAR(100) NOT NULL CHECK (TRIM("品名") <> ''),
    "規格"       VARCHAR(100),
    "類別"       VARCHAR(20)  NOT NULL,
    "單位"       VARCHAR(10)  NOT NULL CHECK (TRIM("單位") <> ''),
    "單價"       INTEGER      NOT NULL CHECK ("單價" >= 0),
    "現有庫存"   INTEGER      NOT NULL DEFAULT 0 CHECK ("現有庫存" >= 0),
    "安全庫存"   INTEGER      NOT NULL DEFAULT 0 CHECK ("安全庫存" >= 0),
    "存放位置"   VARCHAR(100) NOT NULL CHECK (TRIM("存放位置") <> ''),
    "最後盤點日" DATE
);

DELETE FROM "耗材庫存";

SELECT
    (SELECT COUNT(*) FROM stores)      AS 門市,
    (SELECT COUNT(*) FROM products)    AS 商品,
    (SELECT COUNT(*) FROM customers)   AS 會員,
    (SELECT COUNT(*) FROM orders)      AS 訂單,
    (SELECT COUNT(*) FROM order_items) AS 明細;

DELETE FROM stores

INSERT INTO stores(name, address, region, phone) 
VALUES ('台北松山店', '台北市信義區忠孝東路五段', '北部', '02-2720-1111');

-- 下面是錯誤的語法
INSERT INTO stores (name, address, region)
VALUES ("台北車站店", "台北市中正區", "北部");

-- 一次新增多筆
INSERT INTO stores (name, address, region, phone)
VALUES
    ('台北車站店1', '台北市中正區忠孝西路一段', '北部', '02-2311-2222'),
    ('新竹巨城店1', '新竹市東區中央路',         '北部', '03-535-3333'),
    ('台中逢甲店1', '台中市西屯區逢甲路',       '中部', '04-2451-4444');

INSERT INTO stores (name, address, region)
VALUES ('高雄巨蛋店1', '高雄市左營區博愛二路', '南部');

INSERT INTO stores (name, address, region, phone)
VALUES ('台南西門店1', '台南市中西區西門路一段', '南部', '06-213-0005')
RETURNING store_id, name;

INSERT INTO stores (store_id, name, address, region)
VALUES (1, '重複門市', '台北市', '北部');



