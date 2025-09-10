-- GROUP BY : It rolls up and group all the similar values columns and perfrom aggregate functions.

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary
;


-- AGGREGATE FUNCTIONS : AVG(), MIN(), MAX(), COUNT()
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;


-- ORDER BY : Sorts the results set in either ASC or DESC
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age;