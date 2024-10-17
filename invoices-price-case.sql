-- Sélectionne l'ID de la facture et le total de chaque facture
SELECT
    InvoiceId,  -- ID de la facture
    Total,      -- Montant total de la facture
    -- Évalue le total et attribue une étiquette en fonction de son montant
    CASE 
        WHEN Total < 5 THEN 'Price lower than 5$'      -- Si le total est inférieur à 5$
        WHEN Total < 10 THEN 'Price lower than 10$'    -- Si le total est inférieur à 10$
        ELSE 'Price greater than 10$'                   -- Pour tous les autres cas
    END AS "CASE"  -- Alias pour la colonne résultante
FROM invoices  -- Source des données : table 'invoices'
-- Trie les résultats par ID de facture dans l'ordre croissant
ORDER BY InvoiceId
-- Limite les résultats à 100 enregistrements
LIMIT 100;