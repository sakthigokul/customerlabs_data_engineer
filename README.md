# CustomerLabs Data Engineer Assessment

## Overview
This project builds a real-time marketing attribution pipeline using GA4 sample data.

## Tools
- BigQuery (Data Warehouse)
- dbt Cloud (Transformation)
- GitHub (Version Control)
- Looker Studio (Dashboard)

## How to Run
1. Open dbt Cloud → Run models
2. Check tables in BigQuery dataset
3. Connect Looker Studio → BigQuery
4. View dashboard: https://lookerstudio.google.com/s/u3Mf5FjJyVc

## Folder Structure
- models/
  - stg_ga4_events.sql
  - int_sessions.sql
  - mart_first_click.sql
  - mart_last_click.sql
