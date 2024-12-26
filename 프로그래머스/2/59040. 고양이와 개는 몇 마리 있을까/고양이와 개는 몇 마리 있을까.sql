-- 코드를 입력하세요
SELECT animal_type, count(animal_id)
from animal_ins
where animal_type = 'Dog' or animal_type = 'Cat'
group by 1
order by animal_type