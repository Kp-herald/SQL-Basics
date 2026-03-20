

use Salesdetails


create table table1(
c1 int,
c2 varchar(50)
);
insert into table1 (c1,c2) 
values 
(1,'b'),
(2,'c'),
(null,'f'),
(4,'DA');

delete from table1 where c1=1 and c2='A'

insert into table1 (c1,c2) 
values 
(1,'A');


select * from table1


create table table2 (
c1 int,
c3 varchar(50)
);

insert into table2(c1,c3) values
(1,'xs'),
(2,'ed'),
(null,'es'),
(4,'tf'),
(5,'jk');

select * from table1
select * from table2


-- using join/inner join to join the both tables

select * from table1 inner join table2 on table1.c1=table2.c1

select table1.c1,table1.c2,table2.c3 from table1 join table2 on table1.c1=table2.c1

select k.c1,k.c2,p.c3 from table1 k inner join table2 p on k.c1=p.c1