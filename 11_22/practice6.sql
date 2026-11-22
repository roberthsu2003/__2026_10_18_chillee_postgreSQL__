INSERT INTO orders (order_date, order_time, store_id, staff_id, payment_method, status)
VALUES ('2024-03-31', '10:00', 999, 1, '現金', '已完成');


INSERT INTO expense_claims (claim_id, claim_date, emp_id, category_id, amount, status)
VALUES ('EXP-TEST', '2024-03-31', 'E99', 1, 500, '待審核');