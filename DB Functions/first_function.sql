create or replace function find_cheapest_subscription() returns table (
    min_subscription_title varchar(30),
    min_subscription_cost float
) as $$
begin
    return query (
        select 
            (select subscription_title from subscriptions order by subscription_cost asc limit 1) as min_subscription_title,
            (select subscription_cost from subscriptions order by subscription_cost asc limit 1) as min_subscription_cost
    );
end;
$$ language plpgsql;

select * from find_cheapest_subscription();