# Write your MySQL query statement below
SELECT A2.machine_id,ROUND(AVG(A2.time), 3) AS processing_time FROM
(SELECT 
    machine_id, 
    process_id,
    MAX(timestamp) - MIN(timestamp) AS time
FROM 
    Activity
GROUP BY 
    machine_id, 
    process_id) AS A2

    GROUP BY A2.machine_id



