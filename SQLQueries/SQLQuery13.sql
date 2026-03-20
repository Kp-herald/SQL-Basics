

-- single line comment
select * from EmployeeRecords
/*
multi line 
comment
*/


-- TOP N -- 

-- it shows the first N elements

select top 2 * from EmployeeRecords

select top 4 employeeid, department from EmployeeRecords

select top 3 * from EmployeeRecords

select top 4 * from EmployeeRecords where not salary=60000

select top 4 * from EmployeeRecords where not Department='finance'

select top 3 * from EmployeeRecords where Salary between 75000 and 90000

