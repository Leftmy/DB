create role manager;
grant select, insert, update, delete on all tables in schema public to manager;
grant manager to john_smith;
grant manager to john_doe;