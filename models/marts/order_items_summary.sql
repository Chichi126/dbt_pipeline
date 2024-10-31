select
    order_key,
    sum(extended_price) as total_extended_price,
    sum(item_discount_amount) as total_item_discount_amount
from
    {{ ref("stg_tpch_orders") }}
group by 
    order_key
