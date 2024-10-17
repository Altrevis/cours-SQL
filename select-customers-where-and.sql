-- Sélectionne le prénom et le nom de famille des clients
SELECT
  customers.FirstName,  -- Prénom du client
  customers.LastName     -- Nom de famille du client
FROM
  customers  -- Source des données : table 'customers'
-- Joint la table 'employees' sur l'ID du représentant du support
JOIN
  employees ON customers.SupportRepId = employees.EmployeeId
-- Filtre pour ne conserver que les clients situés aux États-Unis
WHERE
  customers.Country = 'USA'  -- Condition pour le pays
  AND employees.FirstName = 'Jane'  -- Condition pour le prénom de l'employé
  AND employees.LastName = 'Peacock';  -- Condition pour le nom de famille de l'employé