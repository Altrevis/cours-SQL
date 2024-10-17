-- Met à jour le titre et le supérieur hiérarchique de l'employé avec le nom 'King' et le prénom 'Robert'
UPDATE employees
SET
    Title = 'IT Manager',  -- Définit le titre de l'employé à 'IT Manager'
    ReportsTo = (  -- Définit le champ ReportsTo en utilisant une sous-requête
        SELECT
            EmployeeId  -- Sélectionne l'ID de l'employé à qui Robert King doit rendre compte
        FROM
            employees  -- Source des données : table 'employees'
        WHERE
            LastName = 'Adams'  -- Condition pour le nom de famille
            AND FirstName = 'Andrew'  -- Condition pour le prénom
    )
WHERE
    LastName = 'King'  -- Condition pour le nom de famille de l'employé à mettre à jour
    AND FirstName = 'Robert';  -- Condition pour le prénom de l'employé à mettre à jour