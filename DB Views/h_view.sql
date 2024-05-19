create view USA_Customers as
select *
from customers
where customer_country like 'USA%';