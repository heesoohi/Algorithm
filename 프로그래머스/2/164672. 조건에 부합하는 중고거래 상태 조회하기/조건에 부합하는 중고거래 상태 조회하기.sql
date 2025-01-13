-- 코드를 입력하세요
SELECT board_id, writer_id, title, price, 
       case when status = 'sale' then '판매중'
            when status = 'reserved' then '예약중'
            when status = 'done' then '거래완료' end 거래상태
from used_goods_board 
where created_date like '%22-10-05%'
order by board_id desc