SELECT year, HR FROM performances
INNER JOIN players
ON players.first_name LIKE "Ken" AND players.last_name LIKE "Griffey" AND players.id = performances.player_id AND players.birth_year = 1969
ORDER BY year DESC
