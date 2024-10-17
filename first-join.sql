-- Sélectionne le titre des albums et le nom des artistes
SELECT
    albums.title AS AlbumName,  -- Titre de l'album
    artists.name AS ArtistName   -- Nom de l'artiste
FROM
    albums  -- Source des données : table 'albums'
-- Joint la table 'artists' sur l'ID de l'artiste
JOIN
    artists 
ON
    albums.artistId = artists.artistId  -- Condition de jointure
-- Limite les résultats à 100 enregistrements
LIMIT 100;