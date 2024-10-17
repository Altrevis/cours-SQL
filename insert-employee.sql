-- Insère un nouvel employé dans la table 'Employees'
INSERT INTO Employees (
    LastName,     -- Nom de famille de l'employé
    FirstName,    -- Prénom de l'employé
    Title,        -- Titre de l'employé
    ReportsTo,    -- ID de l'employé à qui cet employé rend compte
    BirthDate,    -- Date de naissance de l'employé
    HireDate,     -- Date d'embauche de l'employé
    Address,      -- Adresse de l'employé
    City,         -- Ville de résidence de l'employé
    State,        -- État de résidence de l'employé
    Country,      -- Pays de résidence de l'employé
    PostalCode,   -- Code postal de l'employé
    Phone,        -- Numéro de téléphone de l'employé
    Fax,          -- Numéro de fax de l'employé
    Email         -- Adresse email de l'employé
)
VALUES (
    'Doe',  -- Valeur pour le nom de famille
    'John', -- Valeur pour le prénom
    'IT Developer', -- Valeur pour le titre
    (SELECT EmployeeId FROM Employees WHERE FirstName = 'Michael' AND LastName = 'Mitchell'), -- ID du superviseur (sous-requête)
    '1999-03-18 00:00:00', -- Date de naissance
    '2020-03-18 00:00:00', -- Date d'embauche
    '142 rue Sainte-Catherine', -- Adresse
    'Bordeaux', -- Ville
    'NA', -- État
    'France', -- Pays
    '33000', -- Code postal
    '+33 6 77 88 99 10', -- Numéro de téléphone
    '+33 5 68 89 90 90', -- Numéro de fax
    'john.doe@gmail.com' -- Adresse email
);