--7 Afficher le nombre d'individus en fonction de l'anciennete et du sinistre; interpretez
select anciennete, sinistre, count(*) 
from dataia_nancy2
group by anciennete, sinistre;

--8 afficher le nombre d'individus en pourcentage en fonction de l'anciennete et du sinistre, interpretez
select anciennete, sinistre, count(*) as 'nombre',concat(round(count(*)*100/(select count(*) from dataia_nancy2),2),'%') AS percentage
from dataia_nancy2
group by anciennete, sinistre;