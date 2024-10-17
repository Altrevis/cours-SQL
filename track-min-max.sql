-- Sélectionne la durée minimale et maximale des pistes en millisecondes depuis la table 'tracks'
SELECT
    (SELECT MIN(Milliseconds) FROM tracks) AS MinTrack,  -- Sous-requête pour obtenir la durée minimale des pistes
    (SELECT MAX(Milliseconds) FROM tracks) AS MaxTrack;  -- Sous-requête pour obtenir la durée maximale des pistes