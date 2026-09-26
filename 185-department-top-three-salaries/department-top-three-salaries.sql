# Write your MySQL query statement below

SELECT Department,Employee,Salary FROM
(SELECT D.name as Department, E.name as Employee, E.salary as Salary,
DENSE_RANK() OVER (PARTITION BY D.name ORDER BY E.salary DESC) as Ranking 
FROM Employee E
JOIN Department D
on E.departmentId = D.id) RE
where Ranking<=3










