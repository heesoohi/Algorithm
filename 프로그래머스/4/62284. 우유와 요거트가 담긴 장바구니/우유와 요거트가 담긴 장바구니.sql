select a.cart_id
from (SELECT cart_id
from CART_PRODUCTS
where name like '%Milk%'
 )a 
 inner join
 (SELECT cart_id
from CART_PRODUCTS
where name like '%Yogurt%') b
on a.cart_id = b.cart_id
order by 1
