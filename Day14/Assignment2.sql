-- SUBQUERY IS USED
-- Write a SQL query to find the names of employees who have a salary higher than the average salary of all employees.

SELECT FirstName, LastName
FROM employees
WHERE Salary >
	(SELECT AVG(Salary) FROM employees)
;

-- Write a SQL query to list the employee names and their departments for employees who were hired after the oldest employee in the company.

SELECT FirstName, LastName, DepartmentID
FROM employees
WHERE HireDate > 
	(SELECT MIN(HireDate) FROM employees)
;

-- Write a SQL query to find the details of the employee(s) with the highest salary.

SELECT * 
FROM employees
WHERE Salary = 
	(SELECT MAX(Salary) FROM employees)
;

-- Write a SQL query to find the names of employees who work in the same department as 'John Smith'.

SELECT FirstName, LastName
FROM employees
WHERE DepartmentID = 
	(SELECT DepartmentID FROM employees WHERE FirstName = "John" and LastName = "Smith")
;

-- Write a SQL query to find the names of employees who do not belong to the department with the highest average salary.

SELECT FirstName, LastName
FROM employees
WHERE DepartmentID NOT IN (
    SELECT DepartmentID
    FROM employees
    GROUP BY DepartmentID
    ORDER BY AVG(Salary) DESC
    LIMIT 1
);