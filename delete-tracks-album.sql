-- Supprime des enregistrements de la table 'tracks'
DELETE FROM tracks
-- Condition pour supprimer les pistes dont l'AlbumId correspond à l'AlbumId de l'album ayant le titre 'Facelift'
WHERE AlbumId = (SELECT AlbumId FROM albums WHERE Title = 'Facelift');