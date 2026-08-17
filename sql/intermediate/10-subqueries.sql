-- Subqueries
-- basically a query within another query

SELECT *
FROM employee_demographics
WHERE employee_id IN 
	(SELECT employee_id
	FROM employee_salary
	WHERE dept_id = 1);	# this subquery generates a list of just employee id's with dept_id = 1
# basically, we're selecting everything from demographics table where the id matches with the id's on the subquery


SELECT first_name, salary, 
	(SELECT AVG(salary)
	FROM employee_salary)
FROM employee_salary;
# we can use a subquery in a SELECT statement

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;
# we can also use a subquery in the FROM statement

SELECT AVG(max_age), AVG(min_age), AVG(count_age)			# this is a backtick, not a quote!!!
FROM 
	(SELECT gender, 
    AVG(age) AS avg_age, 
    MAX(age) AS max_age, 
    MIN(age) AS min_age, 
    COUNT(age) AS count_age
	FROM employee_demographics
	GROUP BY gender) AS agg_table;		# every derived table must have an alias!
# we can also use a subquery in the FROM statement