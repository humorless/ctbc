select
 * 
from
 {{ ref('p0_user') }}
order by customerID
