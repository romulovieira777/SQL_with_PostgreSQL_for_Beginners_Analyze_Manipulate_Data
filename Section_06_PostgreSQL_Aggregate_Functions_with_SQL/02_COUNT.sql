SELECT
	COUNT(*)
FROM
	film;


SELECT
	COUNT(*) AS drama_films
FROM
	film
INNER JOIN
	film_category USING(film_id)
INNER JOIN
	category USING(category_id)
WHERE
	category_id = 7;


SELECT
	COUNT(DISTINCT amount)
FROM
	payment;


SELECT
	*
FROM
	payment;


SELECT
	customer_id
  , COUNT(customer_id)
FROM
	payment
GROUP BY
	customer_id;


SELECT
	customer_id
  , COUNT(customer_id)
FROM
	payment
GROUP BY
	customer_id
HAVING
	COUNT(customer_id) > 40;