

select * from employeerecords 

select * from employeerecords where not firstname='john' and not firstname='jane'

select * from employeerecords where salary between 70000 and 80000


select * from employeerecords where salary not between 70000 and 80000

select * from employeerecords where not salary between 70000 and 80000

select * from employeerecords where department='finance' or department='hr'


select * from employeerecords where department in ('finance','da')


select * from employeerecords where department  in ('hr','da','it','or')

select * from employeerecords where department not  in ('hr','da','it','or')