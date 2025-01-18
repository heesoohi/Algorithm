-- 코드를 입력하세요
SELECT HISTORY_ID, CAR_ID, date_format(START_DATE, '%Y-%m-%d') START_DATE, date_format(END_DATE, '%Y-%m-%d') END_DATE,
       case when datediff(end_date, start_date) >= 29 then '장기 대여'
            else '단기 대여' end 'rent_type'
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where start_date like '2022-09%'
order by 1 desc