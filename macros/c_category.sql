{% macro customer_category(column_name) %}
  CASE
    WHEN {{column_name}} in ('BUILDING', 'HOUSEHOLD', 'FURNITURE')
      THEN 'DEALERS'
    ELSE 'FACTORY'
  END
{% endmacro %}