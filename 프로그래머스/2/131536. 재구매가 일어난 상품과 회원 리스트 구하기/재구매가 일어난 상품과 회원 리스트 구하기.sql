SELECT user_id, product_id
from online_sale
group by 1,2
having count(ONLINE_SALE_ID) > 1
order by 1, 2 desc