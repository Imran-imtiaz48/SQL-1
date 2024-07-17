-- Display the number of individuals based on seniority and incidents; interpret
SELECT anciennete, sinistre, COUNT(*) AS count
FROM dataia_nancy2
GROUP BY anciennete, sinistre;

-- Display the number of individuals as a percentage based on seniority and incidents; interpret
SELECT anciennete, sinistre, 
    COUNT(*) AS count, 
    CONCAT(ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM dataia_nancy2), 2), '%') AS percentage
FROM dataia_nancy2
GROUP BY anciennete, sinistre;
