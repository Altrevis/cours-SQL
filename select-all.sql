-- Sélectionne divers attributs des employés
SELECT
    Address,       -- Adresse de l'employé
    BirthDate,     -- Date de naissance de l'employé
    City,          -- Ville de l'employé
    Country,       -- Pays de l'employé
    Email,         -- Adresse e-mail de l'employé
    EmployeeId,    -- ID de l'employé
    Fax,           -- Numéro de fax de l'employé
    FirstName,     -- Prénom de l'employé
    HireDate,      -- Date d'embauche de l'employé
    LastName,      -- Nom de famille de l'employé
    Phone,         -- Numéro de téléphone de l'employé
    PostalCode,    -- Code postal de l'employé
    ReportsTo,     -- ID du supérieur hiérarchique de l'employé
    State,         -- État de l'employé
    Title          -- Titre de l'employé
FROM
    employees  -- Source des données : table 'employees'
-- Trie les résultats par ID de l'employé dans l'ordre croissant
ORDER BY
    EmployeeId;