-- Show artist name, and a count of how many tracks they produced, ordered by count of tracks

.mode column
.width auto
.headers on

SELECT artists.name AS artist_name, COUNT(tracks.id) as track_count
FROM tracks
LEFT JOIN albums
ON albums.id = tracks.album_id
INNER JOIN artists
ON artists.id = albums.artist_id
GROUP BY artists.id
ORDER BY track_count DESC;
