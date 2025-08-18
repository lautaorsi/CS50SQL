
SELECT COUNT(*) as [public schools], city FROM schools WHERE type LIKE "Public School" GROUP BY city ORDER BY COUNT(*) DESC, city LIMIT 10
