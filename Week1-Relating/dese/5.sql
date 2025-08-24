SELECT COUNT(*) as [public schools], city FROM schools WHERE type LIKE "Public School" GROUP BY city HAVING COUNT(*) <= 3 ORDER BY COUNT(*) DESC, city
