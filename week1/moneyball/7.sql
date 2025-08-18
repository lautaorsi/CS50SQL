SELECT first_name, last_name FROM players
INNER JOIN salaries ON salaries.player_id = players.id AND salaries.salary = (SELECT MAX(salary) FROM salaries)

