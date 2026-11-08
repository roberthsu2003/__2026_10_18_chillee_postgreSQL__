-- ============================================================
-- 目前天氣 資料表查詢語法 (Script.sql)
-- ============================================================

-- 1. 基礎查詢：篩選體感包含「易中暑」的高風險城市
SELECT 
    城市, 
    最高溫度, 
    最低溫度, 
    感覺
FROM public."目前天氣"
WHERE 感覺 LIKE '%易中暑%';

-- 2. 溫差計算與排序：計算各城市溫差，並依最高溫度由高到低排序（取前 5 名）
SELECT 
    城市, 
    最高溫度, 
    最低溫度, 
    ROUND((最高溫度 - 最低溫度)::numeric, 1) AS 溫差
FROM public."目前天氣"
ORDER BY 最高溫度 DESC, 溫差 DESC
LIMIT 5;

-- 3. 聚合統計：計算全台平均最高溫、平均最低溫，以及全台極端氣溫
SELECT 
    ROUND(AVG(最高溫度)::numeric, 1) AS 平均最高溫,
    ROUND(AVG(最低溫度)::numeric, 1) AS 平均最低溫,
    MAX(最高溫度) AS 全台最高溫,
    MIN(最低溫度) AS 全台最低溫
FROM public."目前天氣";

-- 4. 分組統計：依「體感描述」分類，統計各類別的城市數量與平均溫度
SELECT 
    感覺,
    COUNT(*) AS 城市數量,
    ROUND(AVG(最高溫度)::numeric, 1) AS 平均最高溫,
    ROUND(AVG(最低溫度)::numeric, 1) AS 平均最低溫
FROM public."目前天氣"
GROUP BY 感覺
ORDER BY 城市數量 DESC;

-- 5. 條件分級查詢：依據最高溫度分類為不同氣溫等級標籤 (CASE WHEN)
SELECT 
    城市,
    最高溫度,
    CASE 
        WHEN 最高溫度 >= 35.0 THEN '高溫警報 (>=35°C)'
        WHEN 最高溫度 >= 33.0 THEN '偏熱 (33~34°C)'
        ELSE '舒適/一般 (<33°C)'
    END AS 氣溫等級,
    感覺
FROM public."目前天氣"
ORDER BY 最高溫度 DESC;
