-- =============================================
-- 更新李佳穎成績並查詢確認
-- =============================================

-- 1. 更新成績為 85 分
UPDATE students_test
SET score = 85
WHERE name = '李佳穎';

-- 2. 單獨選取出來確認
SELECT *
FROM students_test
WHERE name = '李佳穎';
