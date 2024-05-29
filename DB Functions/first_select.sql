create or replace procedure get_customers(INOUT data_cursor refcursor = 'rs_resultone')
language plpgsql
as $$
begin
open data_cursor for select * from customers;
end;
$$;

call get_customers();
fetch all from "rs_resultone";