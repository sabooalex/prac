{% macro get_load_date() %}

    {% if var('override_date_from', none) is not none %}

        '{{ var('override_date_from') }}'

    {% else %}

        DATE_TRUNC(
            'MONTH',
            DATEADD('MONTH', -1, CURRENT_DATE)
        )

    {% endif %}

{% endmacro %}