SELECT districts.name from districts INNER JOIN expenditures ON expenditures.district_id = districts.id AND expenditures.pupils = (SELECT MIN(pupils) FROM expenditures)
