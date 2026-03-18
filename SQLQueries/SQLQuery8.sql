


select * from employeerecords

select * from employeerecords where firstname='John' 

select * from employeerecords where department='finance'

select * from employeerecords where department='finance' and employeeid=5

select * from employeerecords where department='da' or department='sa'


select * from employeerecords where department='da' or salary=75000

select * from employeerecords where (department='hr' or lastname='brown') and salary = 60000

select * from employeerecords where (department='hr' and lastname='brown') or salary = 85000