-- Sélectionne l'ID de l'employé, le nom de famille, le prénom, et la date d'embauche formatée en français
SELECT
    EmployeeId,  -- ID de l'employé
    LastName,    -- Nom de famille de l'employé
    FirstName,   -- Prénom de l'employé
    -- Formate la date d'embauche au format français (jour/mois/année)
    strftime('%d/%m/%Y', HireDate) AS HireFrenchDate  
FROM
    employees  -- Source des données : table 'employees'
-- Trie les résultats par date d'embauche dans l'ordre croissant
ORDER BY
    HireDate ASC;