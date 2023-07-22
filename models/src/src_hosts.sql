WITH raw_hosts as (
    SELECT * FROM {{ source('airbnb' ,'hosts') }}
)
SELECT
    id as host_id,
    name host_name,
    is_superhost as host_is_superhost,
    created_at,
    updated_at
FROM raw_hosts