with source as (
    select *
    from {{ source('warehouse', 'state') }}
)
select *
from source
