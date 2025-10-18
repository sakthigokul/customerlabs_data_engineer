SELECT
  user_pseudo_id,
  event_timestamp,
  event_name,
  traffic_source.source AS source,
  traffic_source.medium AS medium,
  traffic_source.name AS campaign,
  geo.country,
  device.category AS device_type
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_20210131`
