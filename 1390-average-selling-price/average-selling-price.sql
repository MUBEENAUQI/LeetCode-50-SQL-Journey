# Write your MySQL query statement below
SELECT 
    P.product_id,
    ROUND(
        COALESCE(SUM(Us.units * P.price) / SUM(Us.units), 0),
        2
    ) AS average_price
FROM Prices P
LEFT JOIN UnitsSold Us
    ON P.product_id = Us.product_id
    AND Us.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id;