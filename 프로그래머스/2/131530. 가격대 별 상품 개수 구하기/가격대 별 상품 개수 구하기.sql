-- 코드를 입력하세요
SELECT floor(price/10000)*10000 price_group, count(product_id) products
from product
group by 1
order by 1