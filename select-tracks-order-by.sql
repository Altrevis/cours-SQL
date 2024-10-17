-- Sélectionne le nom et la durée (en millisecondes) des pistes composées par 'AC/DC'
SELECT Name,  -- Nom de la piste
       Milliseconds  -- Durée de la piste en millisecondes
FROM Tracks  -- Source des données : table 'Tracks'
-- Filtre pour ne conserver que les pistes dont le compositeur est 'AC/DC'
WHERE Composer = 'AC/DC'  -- Condition pour le compositeur
-- Trie les résultats par durée de piste dans l'ordre croissant
ORDER BY Milliseconds ASC;  -- Tri par 'Milliseconds' en ordre ascendant