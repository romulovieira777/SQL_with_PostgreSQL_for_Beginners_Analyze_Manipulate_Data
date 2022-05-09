SELECT
	*
FROM
	film;


SELECT
	ROUND(AVG(replacement_cost), 2) AS avg_replacement_cost
FROM
	film


SELECT
	customer.customer_id
  , first_name
  , last_name
  , TO_CHAR(AVG(amount), '99999999999999999D99') AS average_amount
FROM
	payment
INNER JOIN
	customer ON customer.customer_id = payment.customer_id
GROUP BY
	customer.customer_id
ORDER BY
	customer_id;


SELECT
	customer.customer_id
  , first_name
  , last_name
  , TO_CHAR(AVG(amount), '99999999999999999D99') AS average_amount
FROM
	payment
INNER JOIN
	customer ON customer.customer_id = payment.customer_id
GROUP BY
	customer.customer_id
HAVING
	AVG(amount) > 5
ORDER BY
	customer_id;