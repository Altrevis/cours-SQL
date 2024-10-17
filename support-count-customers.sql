-- Sélectionne le nom complet formaté des employés et le nombre de clients associés
SELECT
    -- Formate le prénom en mettant la première lettre en majuscule et le reste en minuscules, puis ajoute le nom de famille en majuscule
    UPPER(SUBSTR(Employees.FirstName, 1, 1)) || LOWER(SUBSTR(Employees.FirstName, 2)) || ' ' ||
    UPPER(Employees.LastName) AS FullName,  -- Alias pour le nom complet
    COUNT(Customers.CustomerId) AS NumberOfCustomers  -- Compte le nombre de clients associés à chaque employé
FROM
    Employees  -- Source des données : table 'Employees'
-- Joint la table 'Customers' pour relier les clients aux employés par l'ID de l'employé
LEFT JOIN
    Customers ON Employees.EmployeeId = Customers.SupportRepId
-- Filtre pour ne conserver que les employés ayant le titre 'Sales Support Agent'
WHERE
    Employees.Title = 'Sales Support Agent'  -- Condition pour le titre de l'employé
-- Regroupe les résultats par ID et nom complet de l'employé
GROUP BY
    Employees.EmployeeId, Employees.FirstName, Employees.LastName
-- Trie les résultats par le nombre de clients en ordre croissant
ORDER BY
    NumberOfCustomers ASC;  -- Tri par 'NumberOfCustomers' en ordre ascendant