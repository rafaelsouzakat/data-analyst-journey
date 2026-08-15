-- Having vs Where

SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender;
# This shows no output, because the column AVG(age) is only created after the GROUP BY

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;


SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'	# the WHERE clause is used to filter the rows
GROUP BY occupation
HAVING AVG(salary) > 75000;			# the HAVING filters at the aggregation function level