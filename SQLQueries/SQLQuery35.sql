

create table t_primary(
eid int primary key,
fname varchar(50),
lname varchar(50),
age tinyint
)

select * from t_primary

insert into t_primary values (1,'pramod','herald',22)

insert into t_primary values(1,'herald','pramod',23)

--- existing table 

alter table t_primary add primary key(age)

create table table1(
eid int ,
fname varchar(50),
lname varchar(50),
age tinyint
)

select * from table1

insert into table1 values (1,'herald','katti',22)

insert into table1 values (1,'pramod','herald',23)

alter table table1 add primary key (eid,age)

create table table2(
eid int ,
fname varchar(50),
lname varchar(50),
age tinyint,
primary key(eid,age)
)

select * from table2

insert into table2 values (1,'herald','pramod',23)

insert into table2 values (2,'herald','pramod',23)

insert into table2 values (2,'herald','pramod',24)