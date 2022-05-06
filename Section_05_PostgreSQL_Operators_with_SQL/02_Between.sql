SELECT
	customer_id
  , payment_id
  , amount
FROM
	payment
WHERE
	amount BETWEEN 7 AND 8;