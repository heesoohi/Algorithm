-- 코드를 입력하세요
SELECT b.writer_id, u.nickname, concat(u.CITY,' ',u.STREET_ADDRESS1,' ',u.STREET_ADDRESS2) address, concat(left(TLNO,3),'-',mid(TLNO,4,4),'-',right(TLNO,4)) as 전화
from used_goods_board b join used_goods_user u on b.writer_id = u.user_id
group by 1
having count(*) > 2
order by b.writer_id desc