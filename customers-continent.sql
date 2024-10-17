-- Sélectionne le prénom, le nom de famille et le pays des clients
SELECT customers.FirstName,
       customers.LastName,
       customers.Country,
       -- Classe les pays dans des continents en fonction de leur nom
CASE
        WHEN customers.Country IN ('USA', 'Canada', 'Brazil', 'Argentina', 'Chile') THEN 'America' -- Pays d'Amérique
        WHEN customers.Country IN ('China', 'India', 'Japan') THEN 'Asia' -- Pays d'Asie
        WHEN customers.Country IN ('France', 'Germany', 'UK', 'Ireland', 'Norway', 'Czech Republic', 'Austria', 'Belgium', 'Denmark', 'Portugal', 'Finland', 'Hungary', 'Italy', 'Netherlands', 'Poland', 'Spain', 'Sweden', 'United Kingdom') THEN 'Europe' -- Pays d'Europe
        WHEN customers.Country IN ('Australia', 'New Zealand') THEN 'Oceania' -- Pays d'Océanie
        ELSE 'Other' -- Autres pays non classés
END AS Continent -- Alias pour la colonne résultante
FROM customers; -- Source des données : table 'customers'