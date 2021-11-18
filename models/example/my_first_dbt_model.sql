
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table', alias='indian_st_lkp', tags=["nightly", "cust_address"] ) }}

with source_data as (

    select 1 as id, 'UP' as state, '2021-10-01 00:01:00.000'::timestamp as updated_at
    union all
    select 2 as id, 'TN' as state, '2021-08-01 00:00:00.000'::timestamp as updated_at

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
