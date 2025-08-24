SELECT first_name, last_name, (salaries.salary / performances.H) AS [dollars per hit] FROM players
INNER JOIN salaries ON salaries.player_id = players.id AND salaries.year = 2001
INNER JOIN performances ON performances.player_id = players.id AND performances.year = 2001 AND performances.H > 0
ORDER BY (salaries.salary / performances.H) ASC, first_name, last_name
LIMIT 10
