USE dataia_Nancy;

-- Add a primary key with auto increment to the projetA table
ALTER TABLE projetA
ADD id INT NOT NULL PRIMARY KEY AUTO_INCREMENT;

-- Add a primary key with auto increment to the projetB table
ALTER TABLE projetB
ADD id INT NOT NULL PRIMARY KEY AUTO_INCREMENT;

-- Create the projetC table by joining projetA and projetB
CREATE TABLE projetC AS
SELECT *
FROM projetA
NATURAL JOIN projetB;
