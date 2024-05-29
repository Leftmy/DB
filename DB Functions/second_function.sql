create or replace function find_note_author(a_id int) returns table(
	author varchar(30),
	title varchar(30)
) as $$
begin 
return query 
(select note_author,note_title from notes where a_id = note_id);
end;
$$ language plpgsql;

select * from find_note_author(2);