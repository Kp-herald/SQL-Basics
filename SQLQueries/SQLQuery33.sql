

create table t_check(
eid int,
fname varchar(50),
age int check(age>18)
)

select * from t_check

insert into t_check values (1,'raj',18)

insert into t_check values (1,'raj',19)

update t_check set eid=11 where eid=1
-- exixting table

alter table t_check add check(eid>10)

insert into t_check values (1,'herald',23)


insert into t_check values (13,'herald',3)


insert into t_check values (13,'herald',22)