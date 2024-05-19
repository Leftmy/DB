create view customer_keywords_and_topics as
select distinct n.*
from notes n
join topics t on n.note_id = t.note_id
join customers c on t.customer_id = c.customer_id
where c.customer_name like 'Alice Smith%'

union

select distinct n.*
from notes n
join keywords k on n.note_id = k.note_id
join customers c on k.customer_id = c.customer_id
where c.customer_name like 'Alice Smith%';
