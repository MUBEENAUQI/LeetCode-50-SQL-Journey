# Write your MySQL query statement below
SELECT 
    W1.id
   
FROM 
    Weather W1
JOIN 
    Weather W2 
ON 
    W1.recordDate = DATE_ADD(W2.recordDate, INTERVAL 1 DAY)
WHERE 
    W1.temperature > W2.temperature;

-- SELECT 
--     id
-- FROM 
--     Weather W1
-- WHERE 
--     EXISTS (
--         SELECT 
--             1
--         FROM 
--             Weather W2
--         WHERE 
--             W2.recordDate = DATE_ADD(W1.recordDate, INTERVAL -1 DAY)
--             AND W1.temperature > W2.temperature
--     );
