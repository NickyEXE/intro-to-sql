.mode column
.width auto
.headers on

SELECT * FROM cats
WHERE age > 5
ORDER BY age DESC
LIMIT 3;
