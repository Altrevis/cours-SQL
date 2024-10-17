-- Sélectionne les noms des artistes ayant au moins 4 albums
SELECT artists.Name  -- Nom de l'artiste
FROM artists 
-- Joint la table 'albums' sur l'ID de l'artiste
JOIN albums ON artists.ArtistId = albums.ArtistId
-- Regroupe les résultats par ID et nom de l'artiste
GROUP BY artists.ArtistId, artists.Name
-- Filtre pour ne conserver que les artistes ayant 4 albums ou plus
HAVING COUNT(albums.AlbumId) >= 4
-- Trie les résultats par nom d'artiste dans l'ordre décroissant
ORDER BY artists.Name DESC;