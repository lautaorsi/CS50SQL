SELECT districts.name, expenditures.per_pupil_expenditure FROM districts
INNER JOIN expenditures
ON districts.id = expenditures.district_id AND expenditures.per_pupil_expenditure > (SELECT AVG(per_pupil_expenditure) FROM expenditures) AND districts.type LIKE "Public School District"
