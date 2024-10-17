-- Compte le nombre total de compagnies non nulles et non vides dans la table 'customers'
SELECT COUNT(*) AS NbCompanies
FROM customers
-- Filtre les résultats pour ne conserver que les entrées où 'Company' n'est pas nul et n'est pas une chaîne vide
WHERE Company IS NOT NULL AND Company <> '';