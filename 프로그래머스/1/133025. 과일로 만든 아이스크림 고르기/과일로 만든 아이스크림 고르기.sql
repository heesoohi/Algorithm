-- 코드를 입력하세요
SELECT f.flavor
From first_half f join icecream_info i on f.flavor = i.flavor
where f.total_order >3000 and i.ingredient_type like 'fruit%'
order by f.total_order desc