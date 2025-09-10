SELECT *
FROM employee_demographics;

SELECT first_name, LENGTH(first_name)
FROM employee_demographics;

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

SELECT first_name,last_name , LOWER(first_name)
FROM employee_demographics;

SELECT first_name, LTRIM(first_name)
FROM employee_demographics;

SELECT first_name, RTRIM(first_name)
FROM employee_demographics;

SELECT first_name, SUBSTRING(first_name, 3, 9)
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'a', 'b')
FROM employee_demographics;

SELECT first_name, LOCATE('a', first_name)
FROM employee_demographics;

SELECT first_name,last_name , CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;