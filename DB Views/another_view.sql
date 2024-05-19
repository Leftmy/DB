create view WWu_author as
select note_author
from public.notes_author
where note_author like 'William Wu%';