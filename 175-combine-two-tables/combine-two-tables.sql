# Write your MySQL query statement below

select firstName,lastname,city,state from Person P
Left join Address A
on P.personId = A.personId