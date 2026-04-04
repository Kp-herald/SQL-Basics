

select * from Employees

-- to find the employees name who joined in 6 months

select firstname,lastname from employees where hiredate >=
dateadd(month,-6,GETDATE());


select * from employees where hiredate >=
dateadd(month,-6,GETDATE());

--- my sql 
select firstname,lastname from employees where hiredate >=
curdate() - internal 6 month