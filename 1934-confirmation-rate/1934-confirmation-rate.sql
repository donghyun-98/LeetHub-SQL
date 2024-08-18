SELECT
    s.user_id,
    COALESCE(ROUND(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) / COUNT(c.user_id), 2), 0.00) confirmation_rate
FROM Confirmations c
    RIGHT JOIN Signups s
    ON c.user_id = s.user_id
GROUP BY s.user_id