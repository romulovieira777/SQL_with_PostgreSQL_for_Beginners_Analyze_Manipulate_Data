SELECT
	first_name
  , last_name
FROM
	customer
WHERE
	first_name LIKE 'Jen%';


SELECT
	first_name
  , last_name
FROM
	customer
WHERE
	first_name LIKE 'A%'


SELECT
	first_name
  , last_name
FROM
	customer
WHERE
	first_name LIKE '%a'


SELECT
	first_name
  , last_name
FROM
	customer
WHERE
	first_name LIKE '_her%'