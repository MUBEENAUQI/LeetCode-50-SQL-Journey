# Write your MySQL query statement below

Select Max(num) as num
-- CASE
--     WHEN MAX(num) IS NULL THEN NULL
--     else Max(num)
-- END
FROM
(select num from MyNumbers
group by num
having Count(*) = 1 ) noDuplicate