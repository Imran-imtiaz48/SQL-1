# test
use dataia_Nancy;

/* Le nombre d'individus en fonction de l'anciennete et du sinistre*/ 
SELECT anciennete,sinistre, count(*)
FROM dataia_Nancy
GROUP BY anciennete,sinistre ;

/* Le nombre d'individu(comme prcedemment) en fonction du %age total*/ 
SELECT anciennete,sinistre, count(*) /
    (SELECT count(*) from dataia_Nancy)*100  /* Sous requete dans une fonction select, exprimé entre parenthese, multiplié par 100 pour avoir un %age*/ 
FROM dataia_Nancy
GROUP BY anciennete,sinistre ;