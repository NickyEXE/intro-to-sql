-- Show artist name, and a count of how many tracks they produced, ordered from most to least

.mode column
.width auto
.headers on

SELECT artists.name AS artist_name, COUNT(*) AS song_count FROM tracks
LEFT JOIN albums
ON albums.id = tracks.album_id
LEFT JOIN artists
ON artists.id = albums.artist_id
GROUP BY artist_id
ORDER BY song_count DESC;
