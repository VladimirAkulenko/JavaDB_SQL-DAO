select product_name
from netology."CUSTOMERS"
         join netology."ORDERS" on netology."CUSTOMERS".id = customer_id
where lower(name) = lower(:name);