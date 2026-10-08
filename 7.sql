select title,genre,Rating from movies m  where  Rating >=  (select Max(Rating) from movies where 
genre = m.genre);