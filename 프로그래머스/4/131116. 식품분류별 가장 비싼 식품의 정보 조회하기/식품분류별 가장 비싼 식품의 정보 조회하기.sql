-- 코드를 입력하세요
SELECT category, price, product_name
from food_product
where(category, price) in
(select category, max(price)
from food_product
group by 1)
and category in ('과자', '국', '김치', '식용유')
order by price desc