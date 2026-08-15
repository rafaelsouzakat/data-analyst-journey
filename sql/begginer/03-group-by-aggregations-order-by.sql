-- Group By
-- group together rows that have the same values in a specified column or columns

SELECT * 
FROM employee_demographics;


SELECT first_name		
FROM employee_demographics
GROUP BY gender;	
# if we're not using aggregate functions, what is in the SELECT statement has to match what is in the GROUP BY statement

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;


-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY first_name ASC;	# it's ASC (ascending) by default

SELECT *
FROM employee_demographics
ORDER BY gender, age;	# the order of the columns placed in the ORDER BY statement are important!

SELECT *
FROM employee_demographics
ORDER BY 5, 4;	# the numbers are the position of the columns (not recommended)