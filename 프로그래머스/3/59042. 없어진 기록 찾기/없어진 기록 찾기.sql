-- 코드를 입력하세요
SELECT o.animal_id, o.name
From animal_ins i right join animal_outs o on i.animal_id = o.animal_id
where i.animal_id is null
order by 1