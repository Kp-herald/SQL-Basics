

select * from employees

-- using max aggregation
--2nd highest
select max(salary) from employees where salary<(
select max(salary) from employees)
--3rd highest
select max(salary)[3rd highest] from employees where salary<(
select max(salary) [second_highest] from employees where salary <(
select max(salary) highest from employees ))

-- using sub query
-- second highest

select salary from (
select salary, dense_rank() over(order by salary desc)[rank]
from employees
) s
where rank =2

-- 3rd highest

select employeename,salary from(
select employeename,salary, dense_rank() over(order by salary desc)[rank] from employees
)d
where rank=3

-- using cte
-- 2nd highest

with cte as(
select salary, dense_rank() over(order by salary desc)[rank]
from  Employees
)
select * from cte where rank=2

--3rd highest

with cte as(
select *,dense_rank() over(order by salary desc)[rank]
from employees
)
select * from  cte where rank=3

-- using top 

--2nd highest
select top 1 * from(
select top 2 * from employees order by salary desc
)t
order by salary

--3rd highest
select top 1 salary from(
select top 3 salary from employees order by salary desc
) d
order by salary