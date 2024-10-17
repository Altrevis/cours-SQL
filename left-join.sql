-- Sélectionne le nom des artistes et le titre de l'album associé
SELECT
    artists.Name,  -- Nom de l'artiste
    albums.Title AS AlbumTitle  -- Titre de l'album avec alias 'AlbumTitle'
FROM
    artists  -- Source des données : table 'artists'
-- Joint la table 'albums' sur l'ID de l'artiste avec une jointure à gauche (LEFT JOIN)
LEFT JOIN
    albums 
ON
    artists.ArtistID = albums.ArtistID
-- Limite les résultats à 100 enregistrements
LIMIT 100;