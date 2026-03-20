


select * from employees

select * into #1 from employees

select * from #1

delete from #1 where lastname='' or lastname='0'

delete from #1 where salary=75000

update #1 set salary=90000 ,hiredate='2020-10-19' where employeeid=7

select * into #2 from employees

select * from #2

truncate table #2

select * into #3 from employees

select * from #3

drop table #3



-- DELETE - deletes the specific or certain records in the table

-- TRUNCATE - deletes all the records in the table but structure will be remains intact

-- DROP - deletes the entire table including the structure