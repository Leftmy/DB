create or replace view author_jsmith as
select note_title,note_author
from notes
where note_author like 'John Smith%';