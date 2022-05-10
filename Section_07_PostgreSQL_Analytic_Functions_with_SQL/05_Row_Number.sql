SELECT
	product_name
  , group_name
  , price
  , ROW_NUMBER() OVER(PARTITION BY group_name ORDER BY price)
FROM
	products
INNER JOIN
	product_groups USING(group_id);


SELECT
	*
FROM
	products;


SELECT
	product_id
  , product_name
  , group_id
  , ROW_NUMBER() OVER(ORDER BY product_id)
FROM
	products;


SELECT
	product_id
  , product_name
  , group_id
  , ROW_NUMBER() OVER(PARTITION BY group_id ORDER BY product_name)
FROM
	products;


SELECT DISTINCT
	price
  , ROW_NUMBER() OVER(ORDER BY price)
FROM
	products
ORDER BY
	price;


SELECT
	*
FROM
	products
WHERE
	price = (
		SELECT
			price
	FROM
		(
			SELECT
				price
			  , ROW_NUMBER() OVER(ORDER BY price DESC) nth
		    FROM
				(
					SELECT DISTINCT
						(price)
				    FROM
						products
				) AS prices
		) AS sorted_prices
	WHERE
		nth = 3
);