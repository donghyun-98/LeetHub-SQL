(SELECT u.name as results
 FROM movierating mr
     INNER JOIN users u
     ON mr.user_id = u.user_id
 GROUP BY u.name
 ORDER BY count(mr.rating) DESC, u.name
 LIMIT 1)

UNION ALL

(SELECT m.title as results
 FROM movierating as mr
     INNER JOIN movies as m
     ON mr.movie_id = m.movie_id
 WHERE DATE_FORMAT(created_at, '%Y-%m') = '2020-02'
 GROUP BY m.title 
 ORDER BY AVG(mr.rating) DESC, m.title
 LIMIT 1)