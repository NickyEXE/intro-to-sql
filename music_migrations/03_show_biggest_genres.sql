-- Show genres and count of songs in each genre for every genre that has over 200 songs
-- Ordered by genre name

.mode column
.width auto
.headers on

SELECT genres.name, COUNT(genres.id) AS genre_count FROM tracks
LEFT JOIN genres
ON genres.id = tracks.genre_id
GROUP BY genres.name
HAVING genre_count > 200
ORDER BY genres.name ASC;
