
use testdb

select * from employees

create index IX_1 on employees(salary desc)

create index IX_2 on employees(firstname,lastname)

drop index employees.IX_2 