-- Calcule le montant total de toutes les factures pour un client spécifique
SELECT
    SUM(invoices.Total) AS AllInvoicesTotalPrice  -- Somme des totaux des factures, avec alias 'AllInvoicesTotalPrice'
FROM
    invoices AS invoices  -- Source des données : table 'invoices'
-- Joint la table 'customers' sur l'ID du client
JOIN
    customers AS customers ON invoices.CustomerId = customers.CustomerId
-- Filtre pour ne conserver que les factures du client avec le prénom 'Tim' et le nom de famille 'Goyer'
WHERE
    customers.FirstName = 'Tim' AND
    customers.LastName = 'Goyer';