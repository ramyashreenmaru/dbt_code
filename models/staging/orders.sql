{{  config(
    materialized = 'view')
}}

WITH tb1 as(
    select id,
    order_Date,
    user_id

    from {{source('datafeed_Shared_schema','stg_order')}})
    select * From tb1;

