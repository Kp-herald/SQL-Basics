

select * from employees


-- already clustered exixts in this table 
-- when there is a primary key then clusterd index will automatically generates
-- only one clustered index for table if we want another we should drop existing one
-- non clustered index can be more 

create clustered index IX_2 on employees(salary desc)

drop  index IX_1 on employees


create nonclustered index nci on employees(employeeid,departmentid desc)

create nonclustered index nci2 on employees(salary desc)

drop index nci2 on employees