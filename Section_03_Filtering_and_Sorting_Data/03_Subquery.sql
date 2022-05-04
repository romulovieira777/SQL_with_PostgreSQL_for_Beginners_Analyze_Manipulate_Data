SELECT
	ROUND(AVG(rental_rate), 2)
FROM
	public.film;


SELECT
	film_id
  , title
  , rental_rate
 FROM
 	film
WHERE
	rental_rate > 2.98;


SELECT
	film_id
  , title
  , rental_rate
FROM
	public.film
WHERE
	rental_rate > (
		SELECT
			AVG(rental_rate)
		FROM
			film
	);