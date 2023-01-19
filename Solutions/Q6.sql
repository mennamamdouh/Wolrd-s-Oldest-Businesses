SELECT MIN(b.year_founded) AS oldest, co.continent
FROM businesses AS b
JOIN countries AS co
	ON co.country_code = b.country_code
GROUP BY co.continent
ORDER BY oldest