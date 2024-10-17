-- Met à jour le total des factures en fonction du pays de facturation
UPDATE invoices
SET Total = Total +  -- Incrémente le total actuel des factures
    CASE  -- Début d'une instruction CASE pour déterminer l'augmentation à appliquer
        WHEN BillingCountry = 'France' THEN 3  -- Si le pays est la France, ajouter 3 au total
        WHEN BillingCountry = 'USA' THEN 5  -- Si le pays est les USA, ajouter 5 au total
        WHEN BillingCountry NOT IN ('France', 'USA') THEN 1  -- Si le pays n'est ni la France ni les USA, ajouter 1 au total
        ELSE 0  -- Sinon, ajouter 0 (pas de changement)
    END;  -- Fin de l'instruction CASE