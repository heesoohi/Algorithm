SELECT i.ingredient_type, sum(total_order) total_order
from first_half f join icecream_info i on f.flavor=i.flavor
group by 1
order by 2