-- Temporary Tables
-- only visible to the session that they're created in
-- there are two ways to create them


-- first way:
CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar (100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('Alex', 'Freberg', 'Lord of the Rings: The Two Towers');

SELECT *
FROM temp_table;

-- second way:
SELECT * 
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;
# we are creating a temp table based off of an already existing table

SELECT *
FROM salary_over_50k;