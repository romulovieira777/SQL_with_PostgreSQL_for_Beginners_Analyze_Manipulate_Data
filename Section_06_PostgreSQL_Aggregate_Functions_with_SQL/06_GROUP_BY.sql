SELECT
	customer_id
FROM
	payment
GROUP BY
	customer_id;


SELECT
	customer_id
  , SUM(amount)
FROM
	payment
GROUP BY
	customer_id;


SELECT
	customer_id
  , SUM(amount)
FROM
	payment
GROUP BY
	customer_id
ORDER BY
	SUM(amount) DESC;


SELECT
	staff_id
  , COUNT(payment_id)
FROM
	payment
GROUP BY
	staff_id;