SELECT
  user_pseudo_id,
  MAX(event_timestamp) AS last_click_time,
  ANY_VALUE(source) AS last_source
FROM {{ ref('stg_ga4_events') }}
WHERE event_name = 'purchase'
GROUP BY user_pseudo_id
