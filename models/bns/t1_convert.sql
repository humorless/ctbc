select
 ID,
 {{ convert_date('t') }}
from
 {{ ref('date') }}
