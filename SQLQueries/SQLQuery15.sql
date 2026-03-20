

select * from sales

select sum(quantity)[total quantities] from sales

select sum(quantity )[total quantity], sum(totalamount)[total amount] from sales

select avg (quantity)[avg quantity], avg(totalamount)[avg of total amount] from sales

select sum(quantity )[total quantity],sum(totalamount)[total amount],avg (quantity)[avg quantity],
avg(totalamount)[avg of total amount] from sales

select productid,sum(quantity )[total quantity],sum(totalamount)[total amount],avg (quantity)[avg quantity],
avg(totalamount)[avg of total amount] from sales group by productid

-- COUNT 

select count(*) from sales

select count(quantity)[count of quantity] from sales

select count(paymentmethod)[pay mode] from sales

select paymentmethod,count(paymentmethod)[paymode] from sales group by PaymentMethod

select count(distinct paymentmethod)[distinct pay mode] from sales

select paymentmethod,count(distinct paymentmethod)[distinct pay mode] from sales group by PaymentMethod

select paymentmethod,count(*) [all] from sales group by PaymentMethod

select count(*) [all] from sales 