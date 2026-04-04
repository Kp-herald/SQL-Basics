

select * from employeerecords

-- deleting duplicates normally

select * into emp from employeerecords

select * from emp 

select distinct * into #temp from emp

select * from #temp

-- deleting duplicates by cte

with cte as (
select *, ROW_NUMBER() 
over(partition by employeeid,employeename,managerid order by employeeid)[rnk] 
from employeerecords
)
delete from cte where rnk=2

select * from employeerecords