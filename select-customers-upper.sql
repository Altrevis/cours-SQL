-- Sélectionne le nom de famille en majuscules et le prénom des clients
SELECT
    UPPER(LastName) AS LastNameUpper,  -- Convertit le nom de famille en majuscules avec alias 'LastNameUpper'
    FirstName  -- Prénom du client
FROM
    customers  -- Source des données : table 'customers'
-- Filtre pour ne conserver que les clients ayant un prénom et un nom de famille de plus de 5 caractères
WHERE
    LENGTH(FirstName) > 5  -- Condition pour la longueur du prénom
    AND LENGTH(LastName) > 5  -- Condition pour la longueur du nom de famille
-- Trie les résultats par nom de famille en majuscules dans l'ordre croissant
ORDER BY
    LastNameUpper ASC;  -- Tri par 'LastNameUpper'