-- Write a SQL query to find the names of employees whose first names start with the letter 'J'.

SELECT *
FROM employees
WHERE FirstName LIKE "J%"
;

-- Write a SQL query to find the names of employees whose last names end with the letter 'n'.

SELECT *
FROM employees
WHERE LastName LIKE "%n"
;

-- Write a SQL query to find the email addresses of employees that contain the word "john".

SELECT *
FROM employees
WHERE Email LIKE "%john%"
;

-- Write a SQL query to find the names of employees whose first names have exactly 5 characters.

SELECT *
FROM employees
WHERE FirstName LIKE "_____"
;

-- Write a SQL query to find the names of employees whose last names contain the letter 'a' as the second character.

SELECT *
FROM employees
WHERE LastName LIKE "_a%"
;