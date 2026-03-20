

select * from EmployeeRecords


select firstname,sum( salary)[total sum of salary] from EmployeeRecords group by firstname


select firstname, department,sum(salary) [total salary] from EmployeeRecords 
group by firstname,Department 

select firstname, department,sum(salary) [total salary] from EmployeeRecords 
group by firstname,Department order by firstname desc