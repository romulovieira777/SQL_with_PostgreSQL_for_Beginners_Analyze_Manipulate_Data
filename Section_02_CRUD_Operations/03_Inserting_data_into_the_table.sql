CREATE TABLE person
(
	id serial PRIMARY KEY
  , first_name VARCHAR(50)
  , last_name VARCHAR(50)
  , email VARCHAR(50) UNIQUE	
);


-- Inserting data into the table
INSERT INTO person
(
	first_name
  , last_name
  , email
)
VALUES
(
	'John'
  , 'doe'
  , 'j.doe@bluelime.com'
);


-- Selecting data from the table
SELECT
	*
FROM
	person;