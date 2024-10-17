-- Modifie la table 'invoices' pour renommer la colonne 'Total'
ALTER TABLE invoices
RENAME COLUMN Total TO TotalAmount;  -- Renomme la colonne 'Total' en 'TotalAmount'