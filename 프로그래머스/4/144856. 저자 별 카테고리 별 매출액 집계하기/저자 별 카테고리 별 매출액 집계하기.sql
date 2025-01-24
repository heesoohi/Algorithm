SELECT b.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, sum(s.SALES * b.price)TOTAL_SALES 
from book b join author a on b.AUTHOR_ID = a.AUTHOR_ID 
join book_sales s on b.book_id = s.book_id
where s.sales_date like '2022-01%'
group by 1,3
order by 1, 3 desc