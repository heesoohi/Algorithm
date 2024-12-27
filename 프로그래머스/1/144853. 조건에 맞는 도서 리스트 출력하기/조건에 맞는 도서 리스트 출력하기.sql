-- 코드를 입력하세요
SELECT BOOK_ID, date_format(PUBLISHED_DATE, '%Y-%m-%d')
from book
where published_date like '2021%' and category = '인문'
order by PUBLISHED_DATE