SELECT
	MIN(replacement_cost)
FROM
	FILM;


SELECT
	film_id
  , title
FROM
	film
WHERE
	replacement_cost = (
		SELECT
			MIN(replacement_cost)
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
			MIN(amount)
		FROM
			payment
);
	
	
SELECT	
	customer_id
  , MIN(amount)
FROM
	payment
GROUP BY
	customer_id;

	
SELECT
	customer_id
  , MIN(amount)
FROM
	payment
GROUP BY
	customer_id
HAVING
	MIN(amount) < 8.99;