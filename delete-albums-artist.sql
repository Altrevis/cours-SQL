-- Supprime des enregistrements de la table 'Albums'
DELETE FROM Albums
-- Condition pour supprimer uniquement les albums dont l'ID de l'artiste est compris entre 1 et 22
WHERE ArtistId BETWEEN 1 AND 22;