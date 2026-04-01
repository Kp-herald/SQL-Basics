

select * from profitdata

-- lag function

select *,lag(profit) over(partition by product order by monthnumber)[previous months profit]
from profitdata

-- column,offset,default value
select *,lag(profit,1,0) over(partition by product order by monthnumber)[previous months profit]
from profitdata


-- no product + total profit with new column 

select monthnumber,monthname,sum(profit) [total profit],
lag(sum(profit)) over(order by monthnumber)[previous months]
from profitdata group by monthnumber,monthname order by monthnumber

select monthnumber,monthname,sum(profit) [total profit],
lead(sum(profit)) over(order by monthnumber)[next months profit],
lag(sum(profit)) over(order by monthnumber)[previous months profit]
from profitdata group by monthnumber,monthname order by monthnumber

select *,
lag(profit) over(partition by product order by monthnumber)[yesterdays profit],
profit - lag(profit) over(partition by product order by monthnumber)[growth]
from profitdata