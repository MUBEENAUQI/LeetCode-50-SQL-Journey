# Write your MySQL query statement below
SELECT 
    e.unique_id,
    em.name
FROM 
    Employees em
LEFT JOIN 
    EmployeeUNI e
ON 
    em.id = e.id;