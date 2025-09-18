{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}
WITH fact_reviews AS (
    SELECT * FROM {{ref('src_reviews')}}
)
SELECT * FROM fact_reviews
WHERE REVIEW_TEXT IS NOT NULL
{% if is_incremental() %}
AND REVIEW_DATE > (SELECT MAX(REVIEW_DATE) FROM {{this}})
{% endif %}
