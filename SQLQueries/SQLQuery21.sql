use Salesdetails


select * from table1

select * from table2

-- right outer join / right join 

select * from table1 a right join table2 b on a.c1=b.c1

select a.c1,a.c2,b.c3 from table1 a right join table2 b on a.c1=b.c1

select b.c1,a.c2,b.c3 from table1 a right join table2 b on a.c1=b.c1