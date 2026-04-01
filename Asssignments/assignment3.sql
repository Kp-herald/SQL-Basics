

select * from employees

--Write a SQL query to find the names of employees whose first names start with the letter 'J'.

select firstname,lastname from employees where firstname like 'j%'

--Write a SQL query to find the names of employees whose last names end with the letter 'n'.

select firstname,lastname from employees where lastname like '%n'

--Write a SQL query to find the email addresses of employees that contain the word "john".

select email from employees where email like '%john%'

--Write a SQL query to find the names of employees whose first names have exactly 5 characters.

select firstname,lastname from employees where firstname like '_____'

--Write a SQL query to find the names of employees whose last names contain the letter 'a' as the second character.

select firstname,lastname from employees where lastname like '_a%'