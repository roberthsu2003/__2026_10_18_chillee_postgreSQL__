-- =============================================
-- 完全刪除測試資料表 (students_test)
-- =============================================

-- 1. 刪除資料表
DROP TABLE IF EXISTS students_test;

-- 2. 檢查資料庫中是否還存在此表
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public' 
  AND table_name = 'students_test';
