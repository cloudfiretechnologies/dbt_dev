{% snapshot product_snapshot_scdtype2 %}


{{
    config(
         
         target_schema='snapshots',
         unique_key='PRODUCT_ID',
         strategy='check',
         check_cols=['price', 'price_effective_date','last_modified_date'],
    )
}}


select * from {{ source('hr_info', 'raw_product') }}


{% endsnapshot %}