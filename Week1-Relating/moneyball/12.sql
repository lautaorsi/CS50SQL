SELECT first_name, last_name FROM players
WHERE (first_name, last_name) IN ( SELECT first_name, last_name FROM players
    INNER JOIN salaries ON salaries.player_id = players.id AND salaries.year = 2001
    INNER JOIN performances ON performances.player_id = players.id AND performances.year = 2001 AND performances.H > 0
    ORDER BY (salaries.salary / performances.H) ASC, first_name, last_name
    LIMIT 10)
AND (first_name, last_name) IN (SELECT first_name, last_name FROM players
    INNER JOIN salaries ON salaries.player_id = players.id AND salaries.year = 2001
    INNER JOIN performances ON performances.player_id = players.id AND performances.year = 2001 AND performances.RBI > 0
    ORDER BY (salaries.salary / performances.RBI) ASC, first_name, last_name
    LIMIT 10
)

