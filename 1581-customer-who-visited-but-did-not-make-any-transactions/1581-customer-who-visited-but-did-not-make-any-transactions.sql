SELECT
    customer_id,
    COUNT(*) count_no_trans
FROM Visits
WHERE visit_id NOT IN (
    SELECT v.visit_id
    FROM Visits v
        JOIN Transactions t
        ON v.visit_id = t.visit_id)
GROUP BY 1