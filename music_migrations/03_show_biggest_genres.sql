-- Show genres and count of songs in each genre for every genre that has over 200 songs
-- Ordered by genre name

.mode column
.width auto
.headers on

SELECT genres.name AS genre_name, COUNT(*) AS number_of_songs FROM tracks
LEFT JOIN genres
ON genres.id = tracks.genre_id
GROUP BY genre_id
ORDER BY number_of_songs DESC;
