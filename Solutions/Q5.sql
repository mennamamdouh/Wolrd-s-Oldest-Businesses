SELECT cat.category, COUNT(b.*) AS n
FROM businesses AS b
INNER JOIN categories AS cat
	ON cat.category_code = b.category_code
GROUP BY cat.category 
ORDER BY n DESC
LIMIT 10