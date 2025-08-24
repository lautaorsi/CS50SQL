SELECT districts.name, expenditures.per_pupil_expenditure, staff_evaluations.exemplary FROM districts
INNER JOIN expenditures
ON districts.id = expenditures.district_id AND expenditures.per_pupil_expenditure > (SELECT AVG(per_pupil_expenditure) FROM expenditures) AND districts.type LIKE "Public School District"
INNER JOIN staff_evaluations
ON districts.id = staff_evaluations.district_id AND staff_evaluations.exemplary > (SELECT AVG(exemplary) FROM staff_evaluations)
ORDER BY staff_evaluations.exemplary DESC, expenditures.per_pupil_expenditure DESC
