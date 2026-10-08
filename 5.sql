 select title,genre,budget from movies m  where  budget > (select AVG(budget) from movies where 
genre = m.genre);