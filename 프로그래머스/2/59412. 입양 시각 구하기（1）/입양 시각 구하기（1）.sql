-- 코드를 입력하세요
select hour, count(*) count
from
(
select animal_id,
       case when hour = '09' then 9
            when hour = '10' then 10
            when hour = '11' then 11
            when hour = '12' then 12
            when hour = '13' then 13
            when hour = '14' then 14
            when hour = '15' then 15
            when hour = '16' then 16
            when hour = '17' then 17
            when hour = '18' then 18
            when hour = '19' then 19 end hour
from 
(
SELECT animal_id, date_format(datetime, '%H') hour
from animal_outs
    )a ) b
where hour is not null
group by hour
order by hour