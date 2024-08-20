SELECT
    p.project_id,
    ROUND(SUM(e.experience_years) / COUNT(p.employee_id), 2) average_years
FROM Employee e
    JOIN Project p
    ON e.employee_id = p.employee_id
GROUP BY p.project_id