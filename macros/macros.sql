-- This macro truncates a given date to the first day of the month.
-- It helps standardize date aggregation across different models.

{% macro month_trunc(date_column) %}
    DATE_TRUNC('month', {{ date_column }})
{% endmacro %}



-- This macro fills NULL values in a column with 'Unknown'.
-- It ensures consistency in handling missing values across models.

{% macro fill_nulls(column_name) %}
    COALESCE({{ column_name }}, 'Unknown')
{% endmacro %}
