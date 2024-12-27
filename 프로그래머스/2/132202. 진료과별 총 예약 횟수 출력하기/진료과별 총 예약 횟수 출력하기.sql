SELECT
    mcdp_cd '진료과 코드',
    COUNT(mddr_id)'5월예약건수'
FROM
    appointment
WHERE 
    apnt_ymd REGEXP '^2022-05'
GROUP BY
    mcdp_cd
ORDER BY
    2,1;