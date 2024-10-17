-- Sélectionne le prénom et le nom de famille des clients ainsi que la moyenne des totaux des factures
SELECT
    customers.FirstName, -- Prénom du client
    customers.LastName,  -- Nom de famille du client
    AVG(invoices.Total) AS InvoicesAverage -- Calcule la moyenne des totaux des factures et lui donne l'alias 'InvoicesAverage'
FROM
    customers
-- Joint la table 'invoices' sur l'ID du client
JOIN
    invoices ON customers.CustomerID = invoices.CustomerID
-- Regroupe les résultats par ID, prénom et nom de famille du client
GROUP BY
    customers.CustomerID, customers.FirstName, customers.LastName
-- Trie les résultats par prénom du client dans l'ordre croissant
ORDER BY
    customers.FirstName ASC;