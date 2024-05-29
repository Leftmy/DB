create or replace procedure insert_customer(c_name varchar(30),email varchar(30),country varchar(15),
											c_subscription int,notif int)
language plpgsql
as $$
begin
insert into Customers (customer_name, customer_email, customer_country, subscription_id, notification_id)
    values (c_name, email, country, c_subscription, notif);
end;
$$;

call insert_customer('Ryan Gosling','ryangosling@gmail.com', 'USA', 7, 1);