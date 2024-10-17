-- Met à jour le nom du genre 'Hip Hop/Rap' pour le changer en 'Rap'
UPDATE genres
SET Name = 'Rap'  -- Définit le nouveau nom du genre à 'Rap'
WHERE Name = 'Hip Hop/Rap';  -- Condition pour sélectionner uniquement le genre à mettre à jour