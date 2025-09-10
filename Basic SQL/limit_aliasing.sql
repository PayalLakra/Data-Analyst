-- LIMIT : It specifiies how many rows we want as output

# To get oldest 3 employees -
SELECT * 
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

-- ALIASING : It is a way to change the name of the column.

SELECT first_name, AVG(age) AS avg_age 
FROM employee_demographics
GROUP BY first_name;
