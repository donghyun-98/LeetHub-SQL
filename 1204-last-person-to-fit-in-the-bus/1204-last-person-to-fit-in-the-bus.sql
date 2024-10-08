SELECT person_name
FROM 
    (SELECT person_name, SUM(weight) over(ORDER BY turn) AS Total_Weight
     FROM Queue) q 
WHERE Total_Weight <= 1000
ORDER BY Total_Weight DESC
LIMIT 1;