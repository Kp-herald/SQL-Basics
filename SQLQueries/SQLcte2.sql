

select * from employees

with cte as(
select * from employees
)
select * into #temp from cte

select * from #temp

with cte as(
select employeeid,firstname,salary from #temp where salary between 75000 and 80000
), cte1 as(
select employeeid,firstname,salary from #temp where employeeid in(2,4)
)
select distinct * from cte union all select distinct * from cte1 order by salary desc

-----------------------------------------------
select * into #temp1 from employees

with cte5 as (
select employeeid,firstname,salary from #temp1 where salary = 85000
),cte6 as(
select employeeid,firstname,salary from #temp1 where salary in (80000,79000) 
)
update #temp1 set salary = 82000 where salary  in(
select distinct salary from cte5 union all
select distinct salary from cte6
);

select * from #temp1


with cte7 as (
select employeeid,salary from #temp1 where employeeid between 1 and 6
),cte8 as(
select employeeid,salary from #temp1 where employeeid in(8,9)
)

delete from #temp1 where employeeid not in(
select employeeid from cte7 union all
select employeeid from cte8 
);
 
select * from #temp1