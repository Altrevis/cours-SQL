-- Sélectionne toutes les colonnes de la table 'invoices'
SELECT *
FROM invoices  -- Source des données : table 'invoices'
-- Filtre pour ne conserver que les factures dont la ville de facturation est dans la liste spécifiée
WHERE BillingCity IN ('Bordeaux', 'Paris', 'Stuttgart')  -- Condition pour filtrer les villes de facturation
-- Trie les résultats par le montant total de la facture dans l'ordre décroissant
ORDER BY Total DESC;  -- Tri par 'Total' en ordre décroissant