select notes.note_title, customers.customer_name
from notes
inner join keywords on keywords.note_id = notes.note_id
inner join customers on customers.customer_id = keywords.customer_id;