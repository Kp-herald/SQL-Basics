

select * from employees

-- procedures used for big amount of data
-- creating a procedure
create procedure test
as
begin select * from employees end
--- calling procedures
test
exec test
execute test

create proc test1
as begin
select employeeid,firstname from employees 
end

test1

--- to update the structure of the table

alter proc test1
as
begin select employeeid,firstname,lastname,salary from Employees
end

test1