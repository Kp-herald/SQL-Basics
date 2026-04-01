

select * from employees

--Write a SQL query to find the names of employees who have a salary higher than the average salary of all employees.

select firstname,lastname from employees where salary > (select avg(salary) from employees)

--Write a SQL query to list the employee names and their departments for employees who were hired after the oldest employee in the company.

select firstname,lastname,departmentid from employees where hiredate > (select min(hiredate) from employees)

--Write a SQL query to find the details of the employee(s) with the highest salary.

select top 1 * from employees order by salary desc
--or--
select * from employees where salary =(select max(salary) from employees)

--Write a SQL query to find the names of employees who work in the same department as 'John Smith'.

select firstname,lastname from employees where departmentid =(select departmentid from employees where firstname='john' and lastname='smith')

--Write a SQL query to find the names of employees who do not belong to the department with the highest average salary.

select firstname,lastname from employees where departmentid not in
(select top 1 departmentid from employees group by departmentid order by avg(salary) desc)
