SELECT first_name, last_name, salaries.salary, performances.HR, salaries.year FROM players
INNER JOIN salaries ON salaries.player_id = players.id
INNER JOIN performances ON performances.player_id = players.id AND salaries.year = performances.year
ORDER BY players.id ASC, salaries.year DESC ,performances.HR DESC, salaries.salary DESC
