USE dataia_Nancy;

-- Count the number of individuals based on seniority and incidents
SELECT anciennete, sinistre, COUNT(*)
FROM dataia_Nancy
GROUP BY anciennete, sinistre;

-- Count the number of individuals based on the total percentage
SELECT anciennete, sinistre, 
    COUNT(*) / (SELECT COUNT(*) FROM dataia_Nancy) * 100 AS percentage
FROM dataia_Nancy
GROUP BY anciennete, sinistre;

-- Add a primary key with auto increment to the projetA and projetB tables
ALTER TABLE projetA 
ADD id INT NOT NULL PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE projetB 
ADD id INT NOT NULL PRIMARY KEY AUTO_INCREMENT;

-- Create the projetC table by joining projetA and projetB
CREATE TABLE projetC AS
SELECT * 
FROM projetA
NATURAL JOIN projetB;
