-- Sélectionne le nom de l'artiste, le titre de l'album, le nom de la piste et la taille en mégaoctets
SELECT
    artists.Name AS ArtistName, -- Nom de l'artiste
    albums.Title AS AlbumName,   -- Titre de l'album
    tracks.Name AS TrackName,    -- Nom de la piste
    -- Convertit la taille des pistes de bytes en mégaoctets (MB) et arrondit à 2 décimales
    ROUND(CAST(tracks.Bytes AS FLOAT) / (1000 * 1000), 2) || ' MB' AS MegaBytes
FROM
    artists
-- Joint la table 'albums' sur l'ID de l'artiste
JOIN
    albums ON artists.ArtistId = albums.ArtistId
-- Joint la table 'tracks' sur l'ID de l'album
JOIN
    tracks ON albums.AlbumId = tracks.AlbumId
-- Filtre les résultats pour n'inclure que l'album intitulé 'American Idiot'
WHERE
    albums.Title = 'American Idiot';