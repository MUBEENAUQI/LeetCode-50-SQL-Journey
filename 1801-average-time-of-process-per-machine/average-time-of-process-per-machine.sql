# Write your MySQL query statement below T1.machine_id, ROUND(T1.timestamp-T2.timestamp,3) as processing_time
SELECT T1.machine_id, ROUND(AVG(T2.timestamp-T1.timestamp),3) as processing_time
FROM
  (SELECT * FROM Activity WHERE activity_type = 'start') T1
JOIN
  (SELECT * FROM Activity WHERE activity_type = 'end') T2
ON T1.machine_id = T2.machine_id AND T1.process_id = T2.process_id
group by T1.machine_id









