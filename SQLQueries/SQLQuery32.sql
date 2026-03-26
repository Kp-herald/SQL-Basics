


create table t_unique (
s_id int unique,
age int not null,
fname varchar(50),
lname varchar(50) not null unique
)

select * from t_unique

insert into t_unique values (1,23,'herald','katti')

insert into t_unique values (2,null,null,'raj')


insert into t_unique values (2,23,'herald','pramod')

insert into t_unique values (3,25,'pramod','kp')

truncate table t_unique

----- doing in existing table

alter table t_unique add unique(fname)