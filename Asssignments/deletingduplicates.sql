

select * from employeerecords_1
order by employeeid

-- deleting duplicates

select distinct * into temp1 from employeerecords_1

select * from temp1


--

select distinct * into employeere2 from employeerecords_1


-- cte method

with cte as(
select * , dense_rank() 
over(partition by email order by employeeid)[rank] from employeere2
)
--select * from cte

delete from cte where rank=2

select * from employeere2

--

truncate table temp

insert into temp select * from temp1

with cte as(
select * , dense_rank() 
over(partition by email order by employeeid desc)[rank] from temp1
)
--select * from cte
delete from cte where rank=2

select * from temp1