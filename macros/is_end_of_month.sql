{% macro is_end_of_month() %}
    {% set today = modules.datetime.datetime.now() %}
    {% set next_day = today + modules.datetime.timedelta(days=1) %}
    {% if today.month != next_day.month %}
        {% do return(True) %}
    {% else %}
        {% do return(False) %}
    {% endif %}
{% endmacro %}
