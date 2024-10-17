-- Sélectionne le nom complet de l'employé et la ville où il vit
SELECT
    FirstName || ' ' || LastName || ' lives in ' || City AS Employee -- Concatène le prénom, le nom et la ville pour créer une phrase descriptive
FROM
    employees; -- Source des données : table 'employees'