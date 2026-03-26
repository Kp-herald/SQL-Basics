


use Employee_details

select * from Employees

select * from Employees where salary >
(
select avg(salary) from employees
)

select avg(salary) from employees



select * from customers

select * from orders

select * from customers where customer_id in
(
select customer_id from orders where amount>=150 and amount <=300
)


---- joins
select  c.*,o.amount from customers c  join  orders o on c.customer_id=o.customer_id