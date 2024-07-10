{% snapshot customers_snapshot %}

{{ config(strategy='check',
          unique_key='id',
          target_schema='snapshots',
          check_cols=['first_name', 'last_name']) }}
select * from {{ source('sss', 'customers') }}

{% endsnapshot %}
