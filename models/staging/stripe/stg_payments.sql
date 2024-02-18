SELECT
  id as payment_id,
  orderid as order_id,
  status,
  amount / 100 as amount,
FROM `dbt-tutorial.stripe.payment`