-- 코드를 입력하세요
SELECT p.product_code, sum(o.sales_amount*p.price) 
from product p join offline_sale o on p.product_id = o.product_id
group by 1
order by sum(o.sales_amount*p.price) desc, 1