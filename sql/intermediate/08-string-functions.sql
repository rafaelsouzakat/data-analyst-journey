-- String Functions

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');	# make all character upper-case
SELECT LOWER('SKY');	# make all character lower-case

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

# TRIM will basically get the white space on the front or the end and "get rid" of it
SELECT TRIM('            sky            ');
SELECT LTRIM('            sky            ');	# this is a left trim
SELECT RTRIM('            sky            ');	# this is a right trim


# Substring
SELECT first_name, LEFT(first_name, 4)	# with this, we will look into only the first 4 characters
FROM employee_demographics;

SELECT first_name, 
LEFT(first_name, 4),	# with this, we will look into only the first 4 characters
RIGHT(first_name, 4)	# with this, we will look into only the last 4 characters
FROM employee_demographics;

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2)	# the second parameter is where we start and the third parameter is how many characters we want to go
FROM employee_demographics;

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),	# the second parameter is where we start and the third parameter is how many characters we want to go
birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month	# using Substring to get only the month
FROM employee_demographics;

-- Replace
SELECT first_name, REPLACE(first_name, 'a', 'z')	# specify what you want to replace and what you're going to replace with
FROM employee_demographics;

-- Locate
SELECT LOCATE('x', 'Alexander');

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics;

-- Concatenate
SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;