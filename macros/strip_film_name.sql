{% macro strip_film_name(column_name) -%}
    substr({{column_name}}, 0, len(film)-6)
{%- endmacro %}