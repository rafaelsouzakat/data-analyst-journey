-- Stored Procedures
-- they are a way to save a SQL code so we can reuse it

SELECT *
FROM employee_salary
WHERE salary >= 50000;



CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

# how to call the stored procedure
CALL large_salaries();


# the delimiter changes what symbol ends the stored procedure
DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary                
	WHERE salary >= 10000;   
END $$
DELIMITER ;

CALL large_salaries3();


-- Parameters
# parameters are variables that are passed as an input into the stored procedure
DELIMITER $$
CREATE PROCEDURE large_salaries_parameter(p_employee_id INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = p_employee_id;   
END $$
DELIMITER ;

CALL large_salaries4(1);