-- 코드를 입력하세요
select b.APNT_NO, b.PT_NAME, b.PT_NO, b.MCDP_CD, d.dr_name, b.APNT_YMD
from 
(select a.APNT_NO, p.PT_NAME, a.PT_NO, a.MCDP_CD, a.APNT_YMD, a.mddr_id
from 
(SELECT APNT_NO, PT_NO, MCDP_CD, APNT_YMD, mddr_id
from appointment
where APNT_YMD like '2022-04-13%' and APNT_CNCL_YN = 'N'
) a join patient p on a.pt_no = p.pt_no
) b join doctor d on b.MDDR_ID = d.DR_ID
order by b.APNT_YMD