select id, user_name
from {{ source('source', 'users') }}