-- SELECT STATEMENT = It is used to work with columns and specify what columns we want to see in the output.

SELECT * 
FROM employee_demographics;

SELECT DISTINCT gender               # DISTINCT = Select only the unique values within a column
FROM employee_demographics;

SELECT first_name, age, age + 10
FROM employee_demographics

# PEMDAS = Parenthesis, Exponents, Multiply, Divide, Add, Subtract
