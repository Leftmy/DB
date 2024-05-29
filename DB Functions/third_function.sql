create or replace function add_numbers(first_num int, second_num int) returns int as $$
begin
    return first_num + second_num;
end;
$$ language plpgsql;

select add_numbers(3,4);