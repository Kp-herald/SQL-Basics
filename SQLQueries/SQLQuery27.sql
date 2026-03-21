

select * from products

select *, 
case 
	when price >500 then 'high'
	when price<=500 and price>=200 then 'middle'
	else 'low'
end [range]
from products
-------------------------------------------------------------------------
select *
from products order by
case
	when category in ('electronics') then 1
	when category = 'furniture' then 2
	when category in ('accessories') then 3
end
-------------------------------------------------------------------------
select *,
case 
when stockquantity > 180 then 'good'
when stockquantity <=180 and stockquantity >=100 then 'average'
else 'poor'
end [performance]
from products