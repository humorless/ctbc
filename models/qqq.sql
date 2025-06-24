{{ config(materialized='table') }}


select
  customerID AS id
from
  {{ ref('user1') }}
