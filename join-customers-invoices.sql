-- Sélectionne le prénom, le nom, la société et le total des factures des clients
SELECT
    customers.FirstName,  -- Prénom du client
    customers.LastName,   -- Nom de famille du client
    customers.Company,     -- Nom de la société du client
    invoices.Total AS InvoiceTotalPrice  -- Montant total de la facture avec alias 'InvoiceTotalPrice'
FROM
    customers  -- Source des données : table 'customers'
-- Joint la table 'invoices' sur l'ID du client
JOIN
    invoices 
    ON customers.CustomerId = invoices.CustomerId
-- Filtre pour ne conserver que les clients ayant une société (non nulle)
WHERE
    customers.Company IS NOT NULL;