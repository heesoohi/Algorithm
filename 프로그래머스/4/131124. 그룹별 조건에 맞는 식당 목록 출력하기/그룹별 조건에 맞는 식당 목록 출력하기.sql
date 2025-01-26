SELECT m.MEMBER_NAME, r.REVIEW_TEXT, date_format(r.REVIEW_DATE, '%Y-%m-%d') review_date
from MEMBER_PROFILE m join REST_REVIEW r on m.MEMBER_ID = r.MEMBER_ID
where m.member_id = (select member_id
                       from rest_review
                       group by member_id
                       order by count(*) desc
                      limit 1)
order by 3, 2