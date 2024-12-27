select animal_id, name
from
(SELECT i.animal_id, i.name, datediff(o.datetime, i.datetime) datediff
from animal_ins i join animal_outs o on i.animal_id = o.animal_id
where o.datetime is not null
)a
order by datediff desc
limit 2