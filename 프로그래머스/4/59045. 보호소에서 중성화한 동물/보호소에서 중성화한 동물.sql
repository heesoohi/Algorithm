SELECT i.animal_id, o.animal_type, o.name
from animal_ins i join animal_outs o on i.animal_id = o.animal_id
where i.SEX_UPON_INTAKE like '%Intact%' 
and (o.SEX_UPON_OUTCOME like '%Spayed%' or o.SEX_UPON_OUTCOME like '%Neutered%')