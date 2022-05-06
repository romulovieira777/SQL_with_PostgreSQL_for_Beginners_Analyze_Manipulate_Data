SELECT
	customer_id
  , payment_id
  , amount
FROM
	payment
WHERE
	amount NOT BETWEEN 0 AND 8
ORDER BY
	amount;