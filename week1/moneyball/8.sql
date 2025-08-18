SELECT salary FROM salaries
INNER JOIN performances ON performances.player_id = salaries.player_id AND performances.HR = (SELECT MAX(HR) FROM performances) AND salaries.year = 2001
