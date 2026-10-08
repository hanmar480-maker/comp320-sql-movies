select title,genre,TotalVotes from movies m  where  TotalVotes >=  (select Max(TotalVotes) from movies where 
genre = m.genre);