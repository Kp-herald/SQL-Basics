

select * from sales


select productid, storeid , sum(totalamount)[sum_of_sales],
sum(Quantity)[total_quantity], avg(totalamount)[avg_amount],
avg(quantity)[avg_quantity] from sales group by productid,storeid
 having avg(totalamount)>150  
 
 select productid, storeid , sum(totalamount)[sum_of_sales],
sum(Quantity)[total_quantity], avg(totalamount)[avg_amount],
avg(quantity)[avg_quantity] from sales group by productid,storeid
 having avg(totalamount)>150  and sum(totalamount)<400 
 
 select productid, storeid , sum(totalamount)[sum_of_sales],
sum(Quantity)[total_quantity], avg(totalamount)[avg_amount],
avg(quantity)[avg_quantity] from sales group by productid,storeid
 having avg(totalamount)>300  or sum(quantity)=7