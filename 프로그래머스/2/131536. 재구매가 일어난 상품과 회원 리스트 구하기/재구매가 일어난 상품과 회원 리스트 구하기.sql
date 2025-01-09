-- 코드를 입력하세요
select user_id, product_id
from 
(SELECT user_id, product_id, count(product_id) cnt
from online_sale
group by 1,2
) a
where cnt >1
order by 1, 2 desc