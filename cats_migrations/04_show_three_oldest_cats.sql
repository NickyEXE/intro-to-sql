.mode column
.width auto
.headers on

-- If you just want everything:
-- SELECT * FROM cats
SELECT cats.name, cats.title, cats.age FROM cats
WHERE age > 5
ORDER BY age DESC
LIMIT 3;
