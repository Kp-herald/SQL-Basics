

select * from sales

select max(Quantity)[max quantity] from sales 

select min(totalamount) [min total amount] from sales

select max(salespersonid)[max salesperson] , min(quantity)[min qunatity] from sales

select productid, max(totalamount)[max total amount] from sales group by ProductID


select saledate , max(quantity)[max quantity] , min (totalamount)[min total amount] from sales
group by saledate

select salespersonid,max(customerid)[max customer],min(storeid)[min store] from sales group by 
SalespersonID