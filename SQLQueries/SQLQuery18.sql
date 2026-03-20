

select * from sales

--where

select * from sales where totalamount>=200 and not quantity<7

--having

select productid,sum(quantity)[total quantity] from sales
group by  productid

select productid,sum(quantity)[total quantity] from sales
where totalamount>=200
group by  productid


select productid,sum(quantity)[total quantity] from sales
where totalamount>=200
group by  productid 
having sum(quantity)>10 order by sum(quantity) desc