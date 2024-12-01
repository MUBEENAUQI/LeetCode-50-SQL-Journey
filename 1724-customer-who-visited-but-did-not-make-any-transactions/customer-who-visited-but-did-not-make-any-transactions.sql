# Write your MySQL query statement below
SELECT V.customer_id, COUNT(*) AS count_no_trans
FROM Visits V
LEFT JOIN Transactions T
ON T.visit_id = V.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id

