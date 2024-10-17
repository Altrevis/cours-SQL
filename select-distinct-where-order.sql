-- Sélectionne les noms distincts des playlists dont le nom commence par 'M'
SELECT DISTINCT Name  -- Sélectionne le nom de la playlist sans doublons
FROM Playlists  -- Source des données : table 'Playlists'
-- Filtre pour ne conserver que les playlists dont le nom commence par la lettre 'M'
WHERE Name LIKE 'M%'  -- 'M%' signifie que le nom doit commencer par 'M'
-- Trie les résultats par nom de playlist dans l'ordre croissant
ORDER BY Name ASC;  -- Tri par 'Name' en ordre ascendant