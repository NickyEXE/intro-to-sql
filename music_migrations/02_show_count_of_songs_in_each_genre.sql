-- Show count of songs in each genre, ordered by count

.mode column
.width auto
.headers on

SELECT genres.name, COUNT(genres.id) AS genre_count FROM tracks
LEFT JOIN genres
ON genres.id = tracks.genre_id
GROUP BY genres.id
ORDER BY genre_count DESC;
