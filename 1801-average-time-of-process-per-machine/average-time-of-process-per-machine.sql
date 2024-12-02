# Write your MySQL query statement below
SELECT 
    A.machine_id, 
    ROUND(AVG(A.timestamp_end - A.timestamp_start), 3) AS processing_time
FROM (
    SELECT 
        start.machine_id,
        start.process_id,
        start.timestamp AS timestamp_start,
        end.timestamp AS timestamp_end
    FROM Activity start
    JOIN Activity end
        ON start.machine_id = end.machine_id 
        AND start.process_id = end.process_id
        AND start.activity_type = 'start'
        AND end.activity_type = 'end'
) A
GROUP BY A.machine_id;


-- SELECT A2.machine_id,ROUND(AVG(A2.time), 3) AS processing_time FROM
-- (SELECT 
--     machine_id, 
--     process_id,
--     MAX(timestamp) - MIN(timestamp) AS time
-- FROM 
--     Activity
-- GROUP BY 
--     machine_id, 
--     process_id) AS A2

--     GROUP BY A2.machine_id



