-- Sélectionne l'ID de la facture et le montant total des factures
SELECT
  InvoiceId,  -- ID de la facture
  Total       -- Montant total de la facture
FROM
  invoices  -- Source des données : table 'invoices'
-- Filtre pour ne conserver que les factures dont la ville de facturation est 'Paris' ou 'London'
WHERE
  BillingCity = 'Paris'  -- Condition pour la ville de facturation 'Paris'
  OR BillingCity = 'London'  -- Condition pour la ville de facturation 'London'
-- Trie les résultats par ID de facture dans l'ordre croissant
ORDER BY 
  InvoiceId;  -- Tri par 'InvoiceId' en ordre ascendant