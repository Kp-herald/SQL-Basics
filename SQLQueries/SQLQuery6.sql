

select * from employeerecords

select employeeid,firstname from employeerecords where employeeid= 3

insert into  employeerecords(employeeid,firstname,lastname,department,salary)
values(7,'herald','pramod','DA',80000.00);

select firstname,department,salary from EmployeeRecords where salary>=75000.00

select distinct firstname,department,salary from EmployeeRecords where salary>=75000.00


select distinct employeeid,department,salary from EmployeeRecords where salary>75000.00