SELECT
	rating
  , SUM(rental_duration)
FROM
	film
GROUP BY
	rating
ORDER BY
	rating;


SELECT
	customer_id
  , SUM(amount) AS total
FROM
	payment
GROUP BY
	customer_id
ORDER BY
	total DESC
LIMIT
	5;


SELECT
	customer_id
  , SUM(amount) AS total
FROM
	payment
GROUP BY
	customer_id
HAVING
	SUM(amount) > 200
ORDER BY
	total DESC;