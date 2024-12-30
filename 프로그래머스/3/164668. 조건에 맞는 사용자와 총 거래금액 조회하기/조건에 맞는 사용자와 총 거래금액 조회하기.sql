-- 코드를 입력하세요
SELECT u.user_id, u.nickname, sum(b.price)
from used_goods_board b join used_goods_user u on b.WRITER_ID = u.user_id
where b.status = 'DONE'
group by 1,2
having sum(b.price) >= 700000
order by 3