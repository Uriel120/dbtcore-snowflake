WITH cleaned_hosts AS (
    SELECT * FROM {{ref('src_hosts')}}
)
SELECT 
    HOST_ID,
    COALESCE(HOST_NAME, 'ANONYMOUS') AS HOST_NAME,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
FROM cleaned_hosts