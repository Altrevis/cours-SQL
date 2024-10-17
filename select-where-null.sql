-- Sélectionne toutes les colonnes de la table 'Invoices'
SELECT *
FROM Invoices  -- Source des données : table 'Invoices'
-- Filtre pour ne conserver que les factures où l'état et le code postal de facturation sont NULL 
-- et où le montant total est supérieur à 10
WHERE BillingState IS NULL  -- Condition pour l'état de facturation NULL
  AND BillingPostalCode IS NULL  -- Condition pour le code postal de facturation NULL
  AND Total > 10;  -- Condition pour le montant total supérieur à 10