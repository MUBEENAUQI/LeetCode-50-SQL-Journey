# Write your MySQL query statement below

-- Select Final.Department, Final.Employee, Final.Salary, 
-- Rank() OVER (Partition by d.name order by e.salary DESC) as rnk
-- FROM
-- (Select d.name as Department, e.name as Employee, e.salary as Salary from Employee e 
-- left join Department d
-- on e.departmentId = d.id) AS Final


Select Final.Department, Final.Employee, Final.Salary
FROM 
(Select d.name as Department, e.name as Employee, e.salary as Salary,
 Dense_Rank() OVER (Partition by d.name order by e.salary DESC) as rnk
 from Employee e 
 left join Department d
 on e.departmentId = d.id) AS Final
 WHERE Final.rnk<4







