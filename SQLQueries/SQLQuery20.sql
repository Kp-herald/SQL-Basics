


use salesdetails

select * from table1

select * from table2


-- left outer join 

select * from table1 a left outer join table2 b on a.c1=b.c1

select * from table1 a left  join table2 b on a.c1=b.c1

-- 3 columns

select a.c1,a.c2,b.c3 from table1 a left join table2 b on a.c1=b.c1

select b.c1,a.c2,b.c3  from table1 a left outer join table2 b on a.c1=b.c1
