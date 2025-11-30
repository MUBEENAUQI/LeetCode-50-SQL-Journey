# Write your MySQL query statement below

select P.project_id, Round(AVG(E.experience_years),2) AS average_years 
from Employee E
left join Project P
on E.employee_id = P.employee_id
group by P.project_id
having P.project_id IS NOT NULL