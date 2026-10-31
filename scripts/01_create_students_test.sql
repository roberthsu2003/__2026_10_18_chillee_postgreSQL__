-- =============================================
-- 學生名單資料表 (students_test)
-- =============================================

-- 1. 建立資料表
CREATE TABLE IF NOT EXISTS students_test (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    grade INT,
    city TEXT,
    score INT
);

-- 2. 寫入 4 筆學生資料
INSERT INTO students_test (name, grade, city, score) VALUES
('陳小明', 2, '台北市', 88),
('林美玲', 3, '新北市', 95),
('張志豪', 2, '台中市', 72),
('李佳穎', 3, '台北市', 60);

-- 3. 查詢所有資料
SELECT * FROM students_test ORDER BY id;
