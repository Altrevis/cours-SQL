-- Sélectionne le nom complet des clients (prénom et nom de famille en majuscules) 
-- et la somme totale de leurs factures
SELECT
    customers.FirstName || ' ' || UPPER(customers.LastName) AS FullName,  -- Création du nom complet avec le nom de famille en majuscules
    SUM(invoices.Total) AS AllInvoices  -- Somme des montants totaux des factures pour chaque client
FROM
    customers  -- Source des données : table 'customers'
-- Joint la table 'invoices' pour relier les factures aux clients par l'ID du client
INNER JOIN
    invoices ON customers.CustomerId = invoices.CustomerId
-- Regroupe les résultats par nom complet du client
GROUP BY
    FullName  -- Regroupement par le nom complet
-- Filtre pour ne conserver que les clients ayant une somme de factures supérieure à 38
HAVING
    AllInvoices > 38;  -- Condition sur la somme des factures