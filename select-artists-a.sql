-- Sélectionne toutes les colonnes de la table 'artists'
SELECT *
FROM artists  -- Source des données : table 'artists'
-- Filtre pour ne conserver que les artistes dont le nom commence par la lettre 'A'
WHERE name LIKE 'A%';  -- 'A%' signifie que le nom doit commencer par 'A' suivi de n'importe quel caractère