{% macro convert_date(value) %}

coalesce(
  try_strptime( {{ value }} , '%Y-%m-%d'), current_date())

{% endmacro %}
