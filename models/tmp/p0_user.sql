select
  *
from
  {{ ref('user1') }}
union
select
  *
from
  {{ ref('user2') }}
where
  customerID not in (
    select
      customerID
    from
      {{ ref('user1') }}
  )
union
select
  *
from
  {{ ref('user3') }}
where
  customerID not in (
    select
      customerID
    from
      {{ ref('user1') }}
  )
  AND customerID not in (
    select
      customerID
    from
      {{ ref('user2') }}
  )
