-- Write a SQL query to list the names of employees along with the names of the departments they work in.

SELECT FirstName, LastName, DepartmentName
FROM employees as e
INNER JOIN departments AS d
ON e.DepartmentID = d.DepartmentID
;

-- Write a SQL query to list all the departments and the employees working in them, including departments with no employees.

SELECT d.DepartmentName, e.FirstName, e.LastName
FROM departments AS d
LEFT JOIN employees as e
ON d.DepartmentID = e.DepartmentID
;

-- Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).

SELECT e.FirstName, e.LastName
FROM employees AS e
LEFT JOIN departments AS d
    ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL
;

-- Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.

SELECT e.FirstName, e.LastName
FROM employees AS e
WHERE e.DepartmentID = (
    SELECT DepartmentID
    FROM employees
    WHERE FirstName = 'Jane' AND LastName = 'Doe'
);

-- Write a SQL query to find the department with the highest total salary paid to its employees.

SELECT DepartmentID, SUM(Salary) AS TotalSalary
FROM employees
GROUP BY DepartmentID
ORDER BY TotalSalary DESC
LIMIT 1;
