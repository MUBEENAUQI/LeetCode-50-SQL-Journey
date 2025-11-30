# Sales person

SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT O.sales_id
    FROM Orders O
    JOIN Company C
      ON O.com_id = C.com_id
    WHERE C.name = 'RED'
);


-- Select S_O.sales_id, S_O.name, C.name as Company_Name  from
-- (select S.name, S.sales_id, O.com_id as Company_ID from SalesPerson S
-- left join Orders O
-- on S.sales_id  = O.sales_id) S_O
-- left join Company C
-- on S_O.Company_ID = C.com_id
-- WHERE C.name != 'RED' or C.name IS NULL

