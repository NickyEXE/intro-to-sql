-- Goal: Print out a list of song names and genre names

.mode column
.width auto
.headers on

SELECT tracks.name AS track_name, genres.name AS genre_name FROM tracks
LEFT JOIN genres
ON genres.id = tracks.genre_id
ORDER BY track_name ASC;
