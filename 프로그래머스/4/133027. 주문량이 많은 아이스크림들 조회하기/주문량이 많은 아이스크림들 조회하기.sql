select f.flavor
from first_half f join
(
select flavor, sum(total_order) sum
from july
group by 1
    ) a on f.flavor = a.flavor
group by 1
order by (f.total_order + a.sum) desc
limit 3