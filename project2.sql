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
