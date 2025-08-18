SELECT year, salary FROM salaries
INNER JOIN players
ON players.first_name LIKE "Cal" AND players.last_name LIKE "Ripken" AND players.id = salaries.player_id
ORDER BY year DESC
