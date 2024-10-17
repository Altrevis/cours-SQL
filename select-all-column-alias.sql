-- Sélectionne les identifiants, noms et prénoms des employés
SELECT
    EmployeeId AS Identifiant,  -- ID de l'employé avec alias 'Identifiant'
    LastName AS Nom,            -- Nom de famille de l'employé avec alias 'Nom'
    FirstName AS Prenom         -- Prénom de l'employé avec alias 'Prenom'
FROM
    employees;  -- Source des données : table 'employees'