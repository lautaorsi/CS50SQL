SELECT teams.name, ROUND(AVG(salary), 2) AS [average salary] FROM salaries
INNER JOIN teams ON teams.id = salaries.team_id AND salaries.year = 2001
GROUP BY teams.name
ORDER BY ROUND(AVG(salary), 2) ASC
LIMIT 5
