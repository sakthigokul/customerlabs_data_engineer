{% macro insert_stream_event(
    event_id,
    event_name,
    event_timestamp,
    user_pseudo_id,
    traffic_source
) %}
  {% set sql %}
    INSERT INTO `customerlabsassessment.assessment_dataset.stream_events`
      (event_id, event_name, event_timestamp, user_pseudo_id, traffic_source)
    VALUES
      (
        '{{ event_id }}',
        '{{ event_name }}',
        TIMESTAMP('{{ event_timestamp }}'),
        '{{ user_pseudo_id }}',
        '{{ traffic_source }}'
      )
  {% endset %}

  {{ run_query(sql) }}
  {{ return('ok') }}
{% endmacro %}
