{{ config(
    materialized = 'table')
}}  
WITH tb1 as (
    select id ,
    first_name,
    last_name
    from {{source('datafeed_shared_schema','stg_customer_data')}})
    select * from tb1;

