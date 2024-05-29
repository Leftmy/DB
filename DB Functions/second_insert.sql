create or replace procedure insert_note(title varchar(30), abstract varchar(50),author varchar(30))
language plpgsql
as $$
begin
insert into Notes (note_title, note_abstact, note_author)
    values (title,abstract,author);
end;
$$;

call insert_note('Embedded Programming','Explore how software works with hardware', 'Emma Brown');