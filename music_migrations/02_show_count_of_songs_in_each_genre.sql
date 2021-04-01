-- Show count of songs in each genre, ordered by count

.mode column
.width auto
.headers on

SELECT genres.name AS genre_name, COUNT(*) FROM tracks
LEFT JOIN genres
ON genres.id = tracks.genre_id
GROUP BY genre_id;
