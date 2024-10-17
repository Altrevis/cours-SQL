-- Sélectionne le nom des genres et le nombre de pistes associées à chaque genre
SELECT
    genres.Name AS Name,  -- Nom du genre
    COUNT(tracks.TrackId) AS NumberOfTracks  -- Compte le nombre de pistes pour chaque genre
FROM
    genres  -- Source des données : table 'genres'
-- Joint la table 'tracks' pour relier les pistes aux genres par l'ID du genre
LEFT JOIN
    tracks ON genres.GenreId = tracks.GenreId
-- Regroupe les résultats par nom de genre
GROUP BY
    genres.Name;  -- Regroupement par le nom du genre