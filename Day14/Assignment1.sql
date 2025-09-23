-- Write a query to calculate the total sales amount for each department in the EmployeeSales table.

SELECT Distinct Department, SUM(SaleAmount)
FROM employeesales
group by Department;

-- Write a query to count the number of sales made by each employee.

SELECT Distinct EmployeeID, COUNT(SaleID)
FROM employeesales
group by EmployeeID;

-- Write a query to calculate the average sale amount for each department.

SELECT Distinct Department, AVG(SaleAmount)
FROM employeesales
group by Department;

-- Write a query to find the total sales amount for each employee, but only include employees who have made more than one sale.

SELECT EmployeeID, SUM(SaleAmount) AS TotalSalesAmount
FROM employeesales
GROUP BY EmployeeID
HAVING COUNT(EmployeeID) > 1;


-- Write a query to find the total sales for each month in 2023.

SELECT YEAR(SaleDate) AS SalesYear, MONTH(SaleDate) AS SalesMonth, SUM(SaleAmount) AS TotalMonthlySales
FROM employeesales
WHERE YEAR(SaleDate) = 2023
GROUP BY YEAR(SaleDate), MONTH(SaleDate)
ORDER BY SalesYear, SalesMonth;
