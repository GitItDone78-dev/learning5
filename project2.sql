select * from movies;
select * from users;
select * from ratings;
SELECT m.title, ROUND(AVG(r.rating), 2) AS avg_rating, COUNT(r.rating_id) AS num_reviews
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.title
ORDER BY avg_rating DESC, num_reviews DESC
LIMIT 10;
select m.genre, count(r.rating_id) as total_reviews from ratings r join movies m group by m.genre order by total_reviews desc;
SELECT 
  CASE 
    WHEN u.Age BETWEEN 10 AND 19 THEN '10-19'
    WHEN u.Age BETWEEN 20 AND 29 THEN '20-29'
    WHEN u.Age BETWEEN 30 AND 39 THEN '30-39'
    ELSE '40+'
  END AS Age_Group,
  ROUND(AVG(r.Rating),2) AS Avg_Rating
FROM ratings r
JOIN users u ON r.User_ID = u.User_ID
GROUP BY Age_Group;
