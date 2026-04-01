

select * from EmployeeSalaries

--- incorrect
select *,
LAST_VALUE(employeename) over (order by salary) from EmployeeSalaries

-- we need to use " ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING "

select *,
last_value(employeename) 
over (order by salary rows between unbounded preceding and unbounded following)[highest]
from EmployeeSalaries

select *,
last_value(employeename)
over (partition by department order by salary rows between unbounded preceding and unbounded following)[highest],
last_value(employeeid)
over (partition by department order by salary rows between unbounded preceding and unbounded following)[highest_empid]
from EmployeeSalaries