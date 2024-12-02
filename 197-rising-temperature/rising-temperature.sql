# Write your MySQL query statement below
SELECT 
    id
FROM 
    Weather W1
WHERE 
    EXISTS (
        SELECT 
            1
        FROM 
            Weather W2
        WHERE 
            W2.recordDate = DATE_ADD(W1.recordDate, INTERVAL -1 DAY)
            AND W1.temperature > W2.temperature
    );
