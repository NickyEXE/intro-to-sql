-- Show track names and artist names, ordered by artist name
-- Note this requires navigating three tables
-- Artist -< Album -< Track

.mode column
.width auto
.headers on

SELECT artists.name AS artist_name, tracks.name AS track_name
FROM tracks
LEFT JOIN albums
ON albums.id = tracks.album_id
INNER JOIN artists
ON artists.id = albums.artist_id
ORDER BY artist_name;
