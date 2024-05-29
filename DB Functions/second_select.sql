create or replace procedure get_note(author varchar(30),INOUT data_cursor refcursor = 'rs_resultone')
language plpgsql
as $$
begin
open data_cursor for select * from notes where note_author like author;
end;
$$;

call get_note('John Smith');
fetch all from "rs_resultone";