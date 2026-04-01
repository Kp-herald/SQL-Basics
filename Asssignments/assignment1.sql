
select * from EmployeeSales

--Write a query to calculate the total sales amount for each department in the EmployeeSales table.

select department,sum(SaleAmount)[total sales] from employeesales group by department

--Write a query to count the number of sales made by each employee.

select employeeid,count(saleid)[sales count] from EmployeeSales group by EmployeeID

--Write a query to calculate the average sale amount for each department.

select department,avg(saleamount)[average amount] from EmployeeSales group by Department

--Write a query to find the total sales amount for each employee, but only include employees who have made more than one sale.

select employeeid,sum(saleamount)[total amount],count(saleid) [total sale]from employeesales 
group by employeeid having count(saleid)>1

--Write a query to find the total sales for each month in 2023.

select month(saledate)[month] ,sum(saleamount)[total sales] from EmployeeSales
where year(saledate) = 2023
group by month(saledate)

