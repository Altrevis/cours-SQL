-- Sélectionne le nom des pistes associées à la dernière facture
SELECT tracks.Name  -- Nom de la piste
FROM tracks  -- Source des données : table 'tracks'
-- Joint la table 'invoice_items' sur l'ID de la piste
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
-- Filtre pour ne conserver que les éléments de la facture correspondant à la facture ayant l'ID maximum
WHERE invoice_items.InvoiceId = (
    SELECT MAX(InvoiceId)  -- Sous-requête pour obtenir l'ID de la dernière facture
    FROM invoices
);