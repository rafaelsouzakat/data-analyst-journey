-- Limit & Aliasing

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;
# getting the 3 oldest people on the table

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;
# start at position 2, get 1 row after it

-- Aliasing
# it's a way to change the name of the column

SELECT gender, AVG(age) AS avg_age	# AS is the keyword to change the name
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;