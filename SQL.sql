# test
use dataia_Nancy;

/* Le nombre d'individus en fonction de l'anciennete et du sinistre*/ 
SELECT anciennete,sinistre, count(*)
FROM dataia_Nancy
GROUP BY anciennete,sinistre ;