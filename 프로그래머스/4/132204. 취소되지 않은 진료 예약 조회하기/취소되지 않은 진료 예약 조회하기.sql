-- 코드를 입력하세요
select a.APNT_NO, p.PT_NAME, p.PT_NO, a.MCDP_CD, d.dr_name, a.APNT_YMD
from appointment a join doctor d on a.mddr_id = d.dr_id join patient p on a.pt_no = p.pt_no
where a.APNT_YMD like '2022-04-13%' and a.APNT_CNCL_YN = 'N'
order by a.APNT_YMD