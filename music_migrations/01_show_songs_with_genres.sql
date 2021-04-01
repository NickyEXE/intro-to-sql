-- Goal: Print out a list of song names and genre names

.mode column
.width auto
.headers on

SELECT tracks.name, genres.name FROM tracks
LEFT JOIN genres
ON genres.id = tracks.genre_id;
