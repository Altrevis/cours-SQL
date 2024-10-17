-- Sélectionne le nom de l'artiste et le nombre d'albums
SELECT
    artists.Name AS 'Name',
    -- Compte le nombre d'albums pour chaque artiste
    COUNT(albums.AlbumId) AS 'NbAlbums', 
    -- Évalue la productivité de l'artiste en fonction du nombre d'albums
    CASE
        WHEN COUNT(albums.AlbumId) = 1 THEN 'Unproductive' -- Un album : Unproductive
        WHEN COUNT(albums.AlbumId) > 1 AND COUNT(albums.AlbumId) < 10 THEN 'Productive' -- Entre 2 et 9 albums : Productive
        ELSE 'Very Productive' -- 10 albums ou plus : Very Productive
    END AS 'IsProductive'
FROM
    artists
-- Joint la table 'albums' sur l'ID de l'artiste
INNER JOIN
    albums ON artists.ArtistId = albums.ArtistId
-- Regroupe les résultats par ID de l'artiste
GROUP BY
    artists.ArtistId
-- Limite les résultats à 100 artistes
LIMIT 100;