-- 코드를 입력하세요
select car_id, 
       case when AVAILABILITY = 1 then '대여중'
            else '대여 가능' end AVAILABILITY
from
(SELECT car_id, sum(case when start_date <= '2022-10-16' and end_date >= '2022-10-16' then 1 else 0 end) AVAILABILITY 
from car_rental_company_rental_history
group by 1
)a
order by 1 desc