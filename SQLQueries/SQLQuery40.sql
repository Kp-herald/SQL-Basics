

select * from customers 

select customerid,isnull(email,'no mail') [no mail],isnull(phonenumber,'no phn number')[no phone] 
from customers

select customerid,coalesce(email,phonenumber,'nothing here')[coalesce] from customers