SELECT m1.Title, m1.genre, m1.Runtime
FROM movies m1
WHERE CAST(m1.Runtime AS INTEGER) = (
    SELECT MAX(CAST(m2.Runtime AS INTEGER))
    FROM movies m2
    WHERE m2.genre = m1.genre
);