SELECT b.business, b.year_founded, cat.category, co.country, co.continent
FROM businesses AS b
JOIN categories AS cat
	ON cat.category_code = b.category_code
JOIN countries AS co
	ON co.country_code = b.country_code