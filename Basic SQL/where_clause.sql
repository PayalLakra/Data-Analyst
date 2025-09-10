-- WHERE CLAUSE : It is used to filter our rows of data.
SELECT * 
FROM employee_demographics
WHERE gender = 'Female'
;

SELECT * 
FROM employee_demographics
WHERE gender != 'Female'
;

SELECT first_name, last_name, age 
FROM employee_demographics
WHERE age >= 40
;

SELECT first_name, last_name, age , gender
FROM employee_demographics
WHERE age >= 40 OR gender = 'Female';

SELECT first_name, last_name, age , gender
FROM employee_demographics
WHERE age >= 40 AND NOT gender = 'Female'
;

# LIKE STATEMENT -- %, _
# % is to search anything and _ is to search a specific value.

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '_n%'
;
