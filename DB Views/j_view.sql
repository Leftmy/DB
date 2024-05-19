create view customers_subs as 
select customer_name, subscription_title
from customers
inner join subscriptions on customers.subscription_id = subscriptions.subscription_id;