# 1) How do you select all columns from the Employees table?

SELECT * FROM employees;

# 2) How do you select only the FirstName and Last Name columns from the Employees table?

SELECT FirstName, LastName FROM employees;

# 3) How do you find all employees who work in the 'IT' department?

SELECT * FROM employees
WHERE Department="IT"
;
## OR
SELECT * FROM employees
WHERE Department LIKE "IT"
;

# 4) How do you select employees with a salary greater than 70,000?

SELECT * FROM employees
WHERE Salary>70000
;

# 5) How do you sort the results by Last Name in ascending order?

SELECT * FROM employees
ORDER BY LastName ASC
;

# 6) How do you select distinct departments from the Employees table?

SELECT DISTINCT Department FROM employees;

# 7) How do you count the number of employees in each department?

SELECT Department, count(*) AS Count_emp
FROM employees
GROUP BY Department
;

# 8) How do you find the maximum salary in the Employees table?

SELECT  MAX(Salary) AS Max_Salary FROM employees
;

# 9) How do you find the average salary of employees in the 'Finance' department?

SELECT AVG(Salary) AS Average_Salary FROM employees
WHERE Department="Finance"
;

# 10) How do you select employees whose last name starts with 'M'?

SELECT * FROM employees
WHERE LastName LIKE "M%"
;