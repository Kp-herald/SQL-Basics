

select * from profitdata

select *, lead(profit) over(partition by product order by monthnumber)[next months profit]
from profitdata

-- lead (column name, offset, default value)
select *, lead(profit,1,5) over(partition by product order by monthnumber) [next month's]
from profitdata

-- nno product + total profit with next months profit column

select monthnumber,monthname,sum(profit)[total profit],
lead(sum(profit)) over (order by monthnumber)
from profitdata group by monthnumber,monthname
order by monthnumber