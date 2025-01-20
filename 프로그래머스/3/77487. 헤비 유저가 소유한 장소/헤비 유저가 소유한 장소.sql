SELECT id, name, host_id
from places
where host_id in (select host_id
                 from places
                  group by 1
                 having count(host_Id) >= 2)
order by 1