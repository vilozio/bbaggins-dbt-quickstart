with orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_payments') }}

)

select
  o.order_id,
  o.customer_id,
  SUM(p.amount) as amount,
from orders o
left join payments p on p.order_id = o.order_id
where p.status = 'success'
group by 1, 2