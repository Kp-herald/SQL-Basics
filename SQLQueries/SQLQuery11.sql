


select * from employees


select * into #1 from Employees

select * from #1

update #1 set salary=90000,hiredate='2020-12-20' where EmployeeID=7


select * into #2 from employees

select * from #2

update #2 set salary =100000 where salary is null

select * from #2 where EmployeeID=7

select * into #3 from Employees

select * from #3


update #3 set salary=90000 