-- Sélectionne toutes les colonnes de la table 'Invoices'
SELECT *
FROM Invoices  -- Source des données : table 'Invoices'
-- Trie les résultats par date de facture dans l'ordre décroissant
ORDER BY InvoiceDate DESC  -- Tri par 'InvoiceDate' en ordre décroissant
-- Limite les résultats à 15 enregistrements
LIMIT 15;  -- Retourne uniquement les 15 factures les plus récentes