-- Sélectionne la durée des pistes, le titre de l'album et le nom de la piste
SELECT
    tracks.Milliseconds,  -- Durée de la piste en millisecondes
    albums.Title AS AlbumName,  -- Titre de l'album avec alias 'AlbumName'
    tracks.Name AS TrackName  -- Nom de la piste avec alias 'TrackName'
FROM
    artists  -- Source des données : table 'artists'
-- Joint la table 'albums' sur l'ID de l'artiste
JOIN
    albums 
ON
    albums.ArtistID = artists.ArtistID
-- Joint la table 'tracks' sur l'ID de l'album
JOIN
    tracks
ON
    tracks.AlbumID = albums.AlbumID
-- Trie les résultats par durée de piste dans l'ordre croissant
ORDER BY
    tracks.Milliseconds ASC
-- Limite les résultats à 50 enregistrements
LIMIT 50;