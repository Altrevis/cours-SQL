-- Sélectionne les informations sur les articles de la facture pour une facture spécifique
SELECT
    invoice_items.InvoiceId,  -- ID de la facture
    tracks.Name AS InvoiceItem,  -- Nom de la piste associée à l'article de la facture avec alias 'InvoiceItem'
    invoice_items.UnitPrice  -- Prix unitaire de l'article de la facture
FROM
    invoices  -- Source des données : table 'invoices'
-- Joint la table 'invoice_items' sur l'ID de la facture
JOIN
    invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
-- Joint la table 'tracks' sur l'ID de la piste
JOIN
    tracks ON invoice_items.TrackId = tracks.TrackId
-- Filtre pour ne conserver que les articles de la facture ayant l'ID 10
WHERE
    invoices.InvoiceId = 10  -- Condition pour l'ID de la facture
-- Trie les résultats par nom de piste dans l'ordre croissant
ORDER BY
    tracks.Name ASC;  -- Tri par 'Name' en ordre ascendant