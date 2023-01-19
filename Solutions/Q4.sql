SELECT DISTINCT b.business, b.year_founded, b.country_code, cat.category
FROM businesses AS b
JOIN categories AS cat
	ON cat.category_code = b.category_code
WHERE b.year_founded < 1000
ORDER BY b.year_founded