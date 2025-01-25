SELECT DATE_FORMAT(START_DATE, '%m') month, car_id, count(*) records
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where DATE_FORMAT(START_DATE, '%Y-%m') between '2022-08' and '2022-10'
and car_id in (select car_id
                from CAR_RENTAL_COMPANY_RENTAL_HISTORY
                where date_format(start_date, '%Y-%m') between '2022-08' and '2022-10'
                group by 1
                having count(*) > 4)
group by 1,2 
order by 1, 2 desc