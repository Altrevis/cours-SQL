-- Sélectionne les noms distincts des pistes et des playlists
SELECT DISTINCT
    tracks.Name AS TrackName,  -- Nom de la piste
    playlists.Name AS PlaylistName  -- Nom de la playlist
FROM
    playlist_track  -- Table qui relie les pistes et les playlists
-- Joint la table 'playlists' sur l'ID de la playlist
JOIN
    playlists ON playlist_track.PlaylistId = playlists.PlaylistId
-- Joint la table 'tracks' sur l'ID de la piste
JOIN
    tracks ON playlist_track.TrackId = tracks.TrackId
-- Filtre pour ne conserver que les playlists dont le nom contient 'TV Shows'
WHERE
    playlists.Name LIKE '%TV Shows%'
-- Limite les résultats à 100 enregistrements
LIMIT 100;