SELECT m1.Title, m1.genre, m1.Worldwide
FROM movies m1
WHERE (
    SELECT COUNT(*) 
    FROM movies m2 
    WHERE m2.genre = m1.genre 
      AND m2.Worldwide > m1.Worldwide
) < (
    SELECT 0.20 * COUNT(*) 
    FROM movies m3 
    WHERE m3.genre = m1.genre
);