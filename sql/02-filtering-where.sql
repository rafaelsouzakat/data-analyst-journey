-- WHERE Clause

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie';	# comparison operator


SELECT *
FROM employee_salary
WHERE salary <= 50000;


SELECT *
FROM employee_demographics
WHERE gender != 'Female';


SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';


-- AND, OR, NOT -- Logical Operators
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male';

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44)	# isolated conditional statement
OR age > 55;

-- LIKE Statement
-- % (means anything) and _ (means a specific value)
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%';	# the _ means how many characters
# we can combine both the _ and the %

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%';