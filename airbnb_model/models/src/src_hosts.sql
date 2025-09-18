WITH raw_hosts AS (
SELECT * FROM AIRBNB.raw.raw_hosts
)
select 
    ID AS host_id,
    NAME host_name,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
FROM
    raw_hosts