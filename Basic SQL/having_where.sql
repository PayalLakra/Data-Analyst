-- HAVING : Filters rows after grouping

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'               # Filter at the row level
GROUP BY occupation
HAVING AVG(salary) > 40000                      # Filter at aggregate function level
;

-- WHERE : Filter rows before grouping