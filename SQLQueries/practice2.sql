


select * from Employees

--1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?

select * from employees where Department='it' and salary>75000

--2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?

select * from employees where department = 'hr' or salary < 60000

--3. How do you select employees who do not work in the 'Finance' department?

select * from employees where not department ='finance'

--4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?

select * from employees where salary between 60000 and 70000 and Department='finance'

--5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?



--6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?


--7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?



--8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?

--9. How do you select employees who work in the 'IT' department and either have a salary greater 
--than 75,000 or have the first name 'Laura'?


--10. How do you find employees who do not work in the 'HR' or 'IT' departments?