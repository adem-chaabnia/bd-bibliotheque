# Rapport du projet - Base de données d’une bibliothèque
Master TIC - Module : Systèmes d’information et bases de données

## 1. Introduction
Ce projet s’inscrit dans le cadre du module “Systèmes d’information et bases de données”.  
L’objectif était de modéliser et implémenter la base d’une bibliothèque universitaire en appliquant la méthode MERISE : analyse du besoin, MCD, MLD puis modèle physique SQL.

## 2. Analyse du besoin
Le cahier des charges décrit une bibliothèque qui gère :
- des ouvrages, souvent avec auteurs
- des éditions et des exemplaires
- des revues reliées par année
- des lecteurs et leurs cartes
- des emprunts et des demandes d’emprunt
- des suggestions d’acquisition
- un système de classification hiérarchique (cotes)

Plusieurs règles de gestion s’appliquent, comme la possibilité d’emprunter jusqu’à 10 exemplaires et l’indemnité de retard.

## 3. Conception - MCD
J’ai construit le MCD en identifiant d’abord les entités principales puis les associations.  
Les relations N..N ont été modélisées par des tables associatives (ouvrage–auteur, ouvrage–cote).  
Les cotes utilisent une relation réflexive pour représenter la hiérarchie.

Le MCD détaillé est dans `models/MCD.md`.

## 4. MLD
La transformation en modèle logique suit la méthode MERISE :
- les associations deviennent des clés étrangères
- les N..N deviennent des tables
- les identifiants sont simples (id)

Le MLD complet est disponible dans `models/MLD.md`.

## 5. Choix de conception
- Les exemplaires peuvent appartenir soit à une édition soit à une revue : j’ai choisi deux FK nullables.
- J’ai imposé l’unicité (id_ouvrage, numero_edition) pour respecter le cahier des charges.
- Les retours et indemnités sont enregistrés dans EMPRUNT pour garder l’historique.

## 6. Modèle physique - SQL
Les scripts SQL (`create_tables.sql`, `inserts.sql`, `selects.sql`) implémentent entièrement le MLD.  
Les contraintes essentielles ont été ajoutées : PK, FK, unique.

## 7. Conclusion
Ce projet m’a permis de pratiquer la méthode MERISE, la modélisation conceptuelle et la traduction en SQL.  
La base obtenue est cohérente avec le besoin et conforme aux enseignements du module.
