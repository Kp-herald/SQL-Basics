
select * from Employees

-- 1

with ex as(
select * from Employees
)
select * from ex

--2
with cte as (
select * from employees where employeeid in(2,4,6,8)
)

select * into #temp from cte

--3
select * from #temp

with cte1 as (
select * from employees
)
select * into #temp1 from cte1

select * from #temp1

-- update statement
with cte2 as (
select * from #temp1 where salary in (59000,79000)
)
update #temp1 set salary=73000 where salary in (select distinct salary from cte2)

-- delete statement
with cte3 as (
select * from #temp1 where salary = 85000
)

delete from #temp1 where salary in(select  salary from cte3)

select * from #temp1

-- inserting into existing table
with cte4 as(
select * from #temp1 where lastname='katti'
)
insert into #temp1 select * from cte4

select * from #temp1