

select * from EmployeeSalaries


select *,
first_value(salary) over(order by salary) from EmployeeSalaries

select *, 
FIRST_VALUE(employeename) over (order by salary desc) from EmployeeSalaries

select *, first_value(employeeid) 
over (order by salary desc) from employeesalaries


select *,
first_value(employeename) over (partition by department order by salary)[first emp]
from EmployeeSalaries

select *,
first_value(employeeid) over(partition by department order by salary)[firstemp],
first_value(employeename) over (partition by department order by salary)[first empid]
from EmployeeSalaries