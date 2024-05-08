select notes.note_title, customers.customer_name
from notes
inner join topics on topics.note_id = notes.note_id
inner join customers on customers.customer_id = topics.customer_id;