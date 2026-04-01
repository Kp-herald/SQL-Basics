



select * from customers

select * from orders

select * from products



--1) Identify pairs of customers who live in the same country

select * from Customers c inner join customers d on c.country=d.country where c.customerid<d.customerid

--2) Find the customer who has spent the most on their orders

select top 1 customername,sum(price) [amount spent] from Customers c join orders o on c.CustomerID=o.CustomerID 
join products p on p.productid=o.productid group by CustomerName 


--3) Find customers who have ordered more than one type of products

select customername,count(productid) [diff items]from customers c join orders o on o.customerid=c.customerid 
group by customername having count(productid)> 1

--4) List all products and their corresponding orders, using a RIGHT JOIN, including products that have never been ordered.

select orderid,p.productid,p.productname from orders o  right join products p on o.productid = p.productid 

--5) Retrieve all orders placed by customers from the USA.

select orderid from customers c join orders o on o.customerid=c.customerid where country='usa'

--6) Find the names of customers who have ordered a product priced above $500.

select distinct customername from Customers c join orders o on c.customerid=o.CustomerID 
join products p on p.productid=o.productid
where price > 500

--7) Find customers who have ordered the same product more than once.

select customername,productid,count(orderid) from customers c join orders o on c.customerid=o.customerid 
group by customername, productid having count(orderid)>1