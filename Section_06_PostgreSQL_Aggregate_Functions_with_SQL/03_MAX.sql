SELECT
	MAX(replacement_cost)
FROM
	film;


SELECT
	film_id
   , title
FROM
	film
WHERE
	replacement_cost = (
		SELECT
			MAX(replacement_cost)
		FROM
			film
	)
ORDER BY
	title;


SELECT
	*
FROM
	payment
WHERE
	amount = (
		SELECT
			MAX(amount)
		FROM
			payment
);


SELECT
	customer_id
  , MAX(amount)
FROM
	payment
GROUP BY
	customer_id
HAVING
	MAX(amount) > 8.99;