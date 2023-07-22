WITH raw_hosts as (
    SELECT * FROM AIRBNB.RAW.RAW_HOSTS
)
SELECT
    id as host_id,
    name host_name,
    is_superhost as host_is_superhost,
    created_at,
    updated_at
FROM raw_hosts