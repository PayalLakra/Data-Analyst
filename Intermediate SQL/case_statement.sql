-- CASE STATEMENTS allows us to add logic to the SEELCT Statement.alter

SELECT *,
	CASE
	WHEN salary >= 70000 THEN 'rich'
    WHEN salary BETWEEN 50000 AND 70000 THEN 'average'
    END
FROM employee_salary;


# Salary >= 70000 then bonus is 7%
# Salary between 50000 and 70000 then bonus is 5%

SELECT *,
	CASE
    WHEN salary >= 70000 THEN (salary * 1.07)
    WHEN salary BETWEEN 50000 AND 70000 THEN (salary * 1.05)
    ELSE salary
    END AS Bonus
FROM employee_salary
;