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