create view JDoe_topics as
select *
from notes
where note_id in (
    select note_id
    from topics
    where customer_id = (select customer_id from customers where customer_name = 'john doe')
);
