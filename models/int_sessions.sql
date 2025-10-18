SELECT
  user_pseudo_id,
  MIN(event_timestamp) AS session_start,
  MAX(event_timestamp) AS session_end
FROM {{ ref('stg_ga4_events') }}
GROUP BY user_pseudo_id
