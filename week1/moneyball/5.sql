SELECT teams.name FROM players
INNER JOIN performances
ON performances.player_id = (SELECT id FROM players WHERE players.first_name LIKE "Satchel" AND players.last_name LIKE "Paige")
INNER JOIN teams
ON performances.team_id = teams.id
GROUP BY teams.name
