# Write your MySQL query statement below
select W1.id 
from Weather W1
left join Weather W2
on W1.recordDate = Date_ADD(W2.recordDate, INTERVAL 1 DAY)
where W1.temperature > W2.temperature

