

with cte as(
-- anchor query
select 1 as n
union all
-- recursive query
select n+1 from cte where n<=4
)
select exp(sum(log(n))) fact from cte


with cte as(
-- anchor query
select 1 as n
union all
-- recursive query
select n+1 from cte where n<=4
)
select * from cte