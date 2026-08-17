-- Window Functions
-- they are somewhat like a GROUP BY, but they don't roll up everything to one row when grouping

SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender;
# this is a GROUP BY function example


SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)	# calculate avg salary by gender
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
# in this case, it calculates the avg salary indepentant of the first and last names
    
    
-- a rolling total is gonna start at a specific value and add on values from subsequent rows based of the partition
SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
 
 
-- Row Number, Rank, Dense Rank

# Row Number:
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender)	# when we use PARTITION BY, the row numbers can repeat themselves
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
# Ranking by salary:
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC)	# when we use PARTITION BY, the row numbers can repeat themselves
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

# Rank:
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num	
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
# when it encounters a duplicate based of the ORDER BY, it's going to assign it the same rank number
# and then the next one in the sequence will receive it's position number


# Dense Rank:
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num	
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
# when it encounters a duplicate based of the ORDER BY, it's going to assign it the same rank number
# and then the next one in the sequence will receive it's next numerical value instead of the actual position