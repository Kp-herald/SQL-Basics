

select * from employees

select * into emp from employees
----view is a vitual table
--it helps to reducing the complexity of the table
--it helps to secure the data
-- it can effect base table when updated

-- creating view
create view view1 as(
select * from emp
)
select * from view1

create view view2 as(
select employeeid,firstname,lastname,email,departmentid,hiredate from emp
)
select * from view2
-- this will affect the base table
update view1 set firstname='pramod' where employeeid=1

select * from view1

--droppimg view2
drop view view2
select * from view2
select * from emp
-- but dropping view wont affect the base