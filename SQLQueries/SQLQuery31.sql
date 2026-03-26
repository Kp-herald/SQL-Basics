

create database constraints

use constraints


create table t_notnull (
EID int not null,
age tinyint,
name varchar(50)
)

select * from t_notnull

insert into t_notnull values (1,23,'herald');

insert into t_notnull values (null,22,'raj')


insert into t_notnull values (2,null,'raj')

alter table t_notnull alter column name varchar(20) not null

insert into t_notnull values (3,23,'pramod')

alter table t_notnull alter column age tinyint not null