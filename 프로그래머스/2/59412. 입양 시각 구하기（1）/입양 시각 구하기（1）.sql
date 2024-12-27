select date_format(datetime, '%H'), count(animal_id) count
from animal_outs
where date_format(datetime, '%H') between 09 and 19
group by 1
order by 1