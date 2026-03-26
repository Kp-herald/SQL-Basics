

create table t_default (
eid int default 2,
fname varchar(50) default 'king',
lname varchar(50) unique,
age int check(age>6)

)

select * from t_default


insert into t_default values (1,'raj','katti',7)

insert into t_default(lname) values ('herald')

insert into t_default(age) values (5)

insert into t_default(age) values (15)

--- existing values

alter table t_default add default 9 for age

insert into t_default(lname) values ('pramod')

select * from t_default