SELECT
  user_pseudo_id,
  MIN(event_timestamp) AS first_click_time,
  ANY_VALUE(source) AS first_source
FROM {{ ref('stg_ga4_events') }}
WHERE event_name = 'page_view'
GROUP BY user_pseudo_id
