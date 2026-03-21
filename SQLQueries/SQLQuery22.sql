

use salesdetails

select * from table1

select * from table2

select * from table1 a left join table2 b on a.c1=b.c1
where b.c3 is null


select * from table1 a right join table2 b on a.c1=b.c1
where a.c2 is null