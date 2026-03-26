

create table tprimary(
eid int primary key ,
fname varchar(50) unique
)
insert into tprimary values (1,'herald'),(2,'raj'),(3,'pramod')

create table tforeign(
eid int foreign key references tprimary(eid),
course varchar(50)
)
select * from tforeign

insert into tforeign values (1,'cse'),(1,'it'),(null,'eng')

insert into tforeign values(4,'eee')

---existing table

create table tforeign1(
eid int ,
course varchar(50)
)
alter table tforeign1 add foreign key (eid) references tprimary(eid)

insert into tforeign1 values (1,'rek'),(null,'raj'),(2,'herald')

select * from tforeign1