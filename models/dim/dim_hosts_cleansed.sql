WITH src_hosts AS (
    SELECT * FROM {{ ref('src_hosts')}}
)
SELECT 
    host_id,
    {#COALESCE(host_name, 'Anonymous') AS host_name, #}
    NVL(host_name, 'Anonymous') AS host_name,
    host_is_superhost,
    created_at,
    updated_at
FROM 
    src_hosts