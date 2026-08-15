SELECT * 
FROM  parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
(age + 10) * 10 + 10	# we can do calculations on the SELECT statement!
FROM  parks_and_recreation.employee_demographics;
# PEMDAS: parenthesis, exponent, multiplication, division, addition, subtraction
# order of calculations on mySQL!

SELECT DISTINCT first_name, gender
FROM  parks_and_recreation.employee_demographics;