



--1) How do you select all columns from the Employees table?

select * from Employees

--2) How do you select only the FirstName and Last Name columns from the Employees table?

select firstname,lastname from employees

--3) How do you find all employees who work in the 'IT' department?

select * from employees where Department='it'


--4) How do you select employees with a salary greater than 70,000?

select * from employees where salary> 70000

--5) How do you sort the results by Last Name in ascending order?

select  * from employees order by lastname

select * from employees order by lastname asc

--6) How do you select distinct departments from the Employees table?

select distinct Department from employees 

--7) How do you count the number of employees in each department?

select department,count(*)[number] from employees group by department


--8) How do you find the maximum salary in the Employees table?

select max(salary)[highest salary] from employees

--9) How do you find the average salary of employees in the 'Finance' department?

select avg(salary)[average] from employees where department= 'finance'

--10) How do you select employees whose last name starts with 'M'?

select * from employees where LastName like 'm%'