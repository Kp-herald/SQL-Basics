

select * from customers

select * from orders

select * from products




--1) Write an SQL query to find the names of customers who have placed an order.

select customername from customers c inner join orders o on c.customerid = o.customerid


select * from customers c inner join orders o on o.customerid = c.customerid  -- all 

--2) Find the list of customers who have not placed any orders.

select customername from customers c left join orders o on c.customerid = o.customerid where o.orderid is null
--or--
select customername from customers c where not exists
(
select 1 from orders o where o.customerid=c.customerid
)

--3) List all orders along with the product name and price.

select distinct productname,price from orders o inner join products p on o.productid= p.productid

--4) Find the names of customers and their orders, including customers who haven't placed any orders.

select * from customers c left join orders o on c.customerid=o.customerid

--5) Retrieve a list of products that have never been ordered.

select * from products p left join orders o on p.productid=o.productid where orderid is null
-- or --
select * from products p where not exists(
select 1 from orders o where p.productid=o.productid
)
--6) Find the total number of orders placed by each customer.

select customername,count(orderid)[total orders] from customers c join orders o on o.customerid=c.customerid group by customername

--OR 


select customername,count(orderid)[total orders] from customers c left join orders o on o.customerid=c.customerid group by customername


--7) Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.

select * from customers c left join orders o on o.customerid=c.customerid left join products p on p.productid=o.productid



select customername,productname,orderdate from customers c left join orders o on o.customerid=c.customerid left join products p on p.productid=o.productid