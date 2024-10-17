-- Sélectionne toutes les colonnes de la table 'albums'
SELECT *
FROM albums
-- Filtre les résultats pour ne conserver que les albums dont le titre est présent dans la sous-requête
WHERE Title IN (
    -- Sélectionne tous les noms de la table 'genres'
    SELECT Name FROM genres
);