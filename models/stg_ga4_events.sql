SELECT
  user_pseudo_id,
  event_timestamp,
  TIMESTAMP_MICROS(event_timestamp)                         AS event_ts,
  DATE(TIMESTAMP_MICROS(event_timestamp))                   AS event_date,
  DATETIME(TIMESTAMP_MICROS(event_timestamp))               AS event_datetime,
  event_name,
  traffic_source.source  AS source,
  traffic_source.medium  AS medium,
  traffic_source.name    AS campaign,
  geo.country,
  device.category        AS device_type
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_20210131`

