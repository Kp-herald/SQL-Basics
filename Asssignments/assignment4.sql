


select * from employees

select * from departments

--Write a SQL query to list the names of employees along with the names of the departments they work in.

select firstname,lastname,departmentname from employees e join departments d on e.DepartmentID=d.departmentid 

--Write a SQL query to list all the departments and the employees working in them, including departments with no employees.

select firstname,lastname,departmentname  from  departments d left join employees e on e.DepartmentID=d.departmentid

--Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).

select firstname,lastname from employees e left join departments d on e.departmentid=d.departmentid where d.departmentid is null

--Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.

select firstname,lastname from employees 
where departmentid= (select departmentid from employees where firstname='jane'and lastname='doe')

--Write a SQL query to find the department with the highest total salary paid to its employees.

select top 1 departmentname,sum(salary)[total salary] from departments d join employees e on d.departmentid=e.departmentid
group by departmentname order by sum(salary) desc