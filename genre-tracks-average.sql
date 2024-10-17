-- Sélectionne le nom du genre et la durée moyenne des pistes
SELECT
    genres.Name AS Name,  -- Nom du genre
    AVG(tracks.Milliseconds) AS AverageDuration  -- Durée moyenne des pistes en millisecondes
FROM
    genres  -- Source des données : table 'genres'
-- Joint la table 'tracks' sur l'ID du genre
JOIN
    tracks ON genres.GenreId = tracks.GenreId
-- Regroupe les résultats par nom de genre
GROUP BY
    genres.Name
-- Trie les résultats par durée moyenne des pistes dans l'ordre décroissant
ORDER BY
    AverageDuration DESC;