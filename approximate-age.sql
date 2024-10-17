-- Sélectionne les colonnes 'FirstName' et 'LastName' de la table 'employees'
SELECT
    FirstName, 
    LastName, 
    -- Calcule l'âge approximatif en soustrayant l'année de naissance de l'année d'embauche
    (strftime('%Y', HireDate) - BirthDate) AS ApproximateAge
FROM
    employees
-- Trie les résultats par 'ApproximateAge' dans l'ordre croissant
ORDER BY
    ApproximateAge ASC;