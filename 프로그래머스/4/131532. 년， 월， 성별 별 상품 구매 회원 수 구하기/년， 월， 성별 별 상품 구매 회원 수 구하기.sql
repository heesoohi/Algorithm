-- 코드를 입력하세요
SELECT date_format(o.sales_date, '%Y') Year,
       date_format(o.sales_date, '%m') Month,
       u.gender,
       count(distinct u.user_id) users
from user_info u join online_sale o on u.user_id = o.user_id
where u.gender is not null
group by 1,2,3
order by 1,2,3