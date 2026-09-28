WITH ranked AS (
    SELECT 
        player_id AS ID,
        event_date,
        DENSE_RANK() OVER (
            PARTITION BY player_id
            ORDER BY event_date
        ) AS first_use
    FROM Activity
),

ranked1 AS (
    SELECT *
    FROM ranked
    WHERE first_use = 1
),

ranked2 AS (
    SELECT *
    FROM ranked
    WHERE first_use = 2
)

SELECT 
    ROUND(
        COUNT(*) * 1.0 / (SELECT COUNT(DISTINCT ID) FROM ranked1),
        2
    ) AS fraction
FROM ranked1
JOIN ranked2
    ON ranked2.ID = ranked1.ID
    AND DATEDIFF(ranked2.event_date, ranked1.event_date) = 1;