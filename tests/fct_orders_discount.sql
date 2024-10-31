-- we want to try one that would fail intentionally (singlar test)

select 
    *
from
    {{ref('fct_orders')}}
where 
    total_item_discount_amount < 0