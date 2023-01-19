SELECT COUNT(b.*) AS num_of_businesses, co.continent, cat.category
FROM businesses AS b
JOIN categories AS cat
	ON cat.category_code = b.category_code
JOIN countries AS co
	ON co.country_code = b.country_code
GROUP BY cat.category, co.continent
HAVING COUNT(b.*) > 5
ORDER BY num_of_businesses DESC -- To show the most common first