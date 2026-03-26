

select * from products

------nested case---------

select *, 
case 
	when category='electronics' then
	case
		when price>=500 then 'premium elec'
	    else 'affordable elec'
		end
	when category in ('furniture') then
	case
		when price>=200 then 'premium furniture'
		else 'affordable furniture'
		end
	else
	case
		when price>=30 then 'premium acces'
		else 'affordable acces'
		end
end [group]
from products


---- test

select *, 
case 
	when category='electronics' then
	case
		when price>=500 then 'premium elec'
	    else 'affordable elec'
		end
	when category in ('furniture') then
	case
		when price>=200 then 'premium furniture'
		else 'affordable furniture'
		end
	when category in ('accessories') then
	case
		when price>=30 then 'premium acces'
		else 'affordable acces'
		end
end [group]
from products