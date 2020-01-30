
# test
use dataia_Nancy;
-- table6
/* Le nombre d'individus en fonction de l'anciennete et du sinistre*/ 
SELECT anciennete,sinistre, count(*)
FROM dataia_Nancy
GROUP BY anciennete,sinistre ;

/* Le nombre d'individu(comme prcedemment) en fonction du %age total*/ 
SELECT anciennete,sinistre, count(*) /
    (SELECT count(*) from dataia_Nancy)*100  /* Sous requete dans une fonction select, exprimé entre parenthese, multiplié par 100 pour avoir un %age*/ 
FROM dataia_Nancy
GROUP BY anciennete,sinistre ;

-- nico P
alter table projetA add id int not null PRIMARY KEY NOT NULL AUTO_INCREMENT;
alter table projetB add id int not null PRIMARY KEY NOT NULL AUTO_INCREMENT;

create table projetC as
(
    select * from projetA
    natural join projetB
)



create table projetC
as select * FROM projetA natural join ProjetB;



