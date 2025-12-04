-- Ouvrages + auteurs
SELECT o.titre, a.nom 
FROM ouvrage o
JOIN ouvrage_auteur oa ON o.id_ouvrage = oa.id_ouvrage
JOIN auteur a ON a.id_auteur = oa.id_auteur;

-- Exemplaires d’une édition
SELECT e.id_exemplaire, ed.numero_edition
FROM exemplaire e
JOIN edition ed ON e.id_edition = ed.id_edition;

-- Lecteurs en retard (>15 jours)
SELECT l.nom, em.id_emprunt
FROM emprunt em
JOIN lecteur l ON l.id_lecteur = em.id_lecteur
WHERE em.date_retour IS NULL
  AND DATEDIFF(CURDATE(), em.date_emprunt) > 15;
