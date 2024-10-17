-- Crée une nouvelle table nommée 'students'
CREATE TABLE students (
    -- Définit 'StudentId' comme clé primaire, avec autoincrémentation et non nul
    StudentId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    -- Définit 'FirstName' comme une chaîne de caractères de maximum 80 caractères, non nulle
    FirstName VARCHAR(80) NOT NULL,
    -- Définit 'LastName' comme une chaîne de caractères de maximum 80 caractères, non nulle
    LastName VARCHAR(80) NOT NULL,
    -- Définit 'Birthday' comme un type de données DATE, non nul
    Birthday DATE NOT NULL,
    -- Définit 'City' comme une chaîne de caractères de maximum 50 caractères, non nulle
    City VARCHAR(50) NOT NULL
);