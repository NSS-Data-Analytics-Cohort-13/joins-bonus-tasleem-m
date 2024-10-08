--q1 Find the total worldwide gross and average imdb rating by decade. Then alter your query so it returns JUST the second highest average imdb rating and its decade. 
SELECT FLOOR (s.release_year/10 *10) AS decade, AVG (rat.imdb_rating) AS avg_rating, SUM (rev.worldwide_gross) AS total_gross
FROM specs AS s
INNER JOIN rating AS rat
USING (movie_id)
INNER JOIN revenue AS rev
USING (movie_id)
GROUP BY decade
ORDER BY avg_rating DESC
LIMIT 1 OFFSET 1

