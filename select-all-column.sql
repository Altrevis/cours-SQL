-- Sélectionne le prénom, le nom et le titre des employés
SELECT
    FirstName,  -- Prénom de l'employé
    LastName,   -- Nom de famille de l'employé
    Title       -- Titre de l'employé
FROM
    employees  -- Source des données : table 'employees'
-- Trie les résultats par ID de l'employé dans l'ordre croissant
ORDER BY
    EmployeeId;