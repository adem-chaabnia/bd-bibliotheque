# Rapport - Base de données d'une bibliothèque

Master TIC - Module : Systèmes d'information et bases de données

## Résumé

Ce rapport décrit la conception et l'implémentation d'une base de données pour une bibliothèque universitaire. Le travail couvre l'analyse du besoin, la modélisation conceptuelle (MCD), la transformation en modèle logique (MLD) et l'implémentation physique en SQL.

## Objectifs

- Modéliser les entités et relations nécessaires pour gérer ouvrages, auteurs, éditions, exemplaires, revues, lecteurs, emprunts, demandes et suggestions.
- Produire un MCD et un MLD cohérents avec les règles de gestion.
- Fournir des scripts SQL permettant de créer et peupler la base et d'exécuter des requêtes de test.

## Méthodologie
La méthode MERISE a été suivie :

- Analyse du besoin à partir du cahier des charges.
- Construction du MCD (entités, relations, cardinalités).
- Transformation en MLD (tables relationnelles, clés primaires et étrangères).
- Implémentation physique en SQL (create_tables.sql, inserts.sql, selects.sql).

Les modèles sont disponibles dans dans `models/MCD.md` et `models/MLD.md`.

## Analyse des besoins (synthèse)

Les besoins principaux identifiés :

- Gestion des ouvrages et de leurs auteurs (relation N..N).
- Gestion des éditions et exemplaires (un exemplaire peut être lié à une édition ou à une revue).
- Gestion des revues par année.
- Gestion des lecteurs, de leurs emprunts et demandes.
- Enregistrement des suggestions d'acquisition par les lecteurs.
- Classification des documents via des cotes hiérarchiques.

## Conception (points clés)

- Entités principales : `ouvrage`, `auteur`, `edition`, `exemplaire`, `revue`, `lecteur`, `emprunt`, `demande`, `suggestion`, `cote`.
- Relations N..N : implémentées par des tables de jointure : `ouvrage_auteur`, `ouvrage_cote`.
- Cotes hiérarchiques : FK réflexive `id_parent` dans cote.
- Unicité : combinaison `(id_ouvrage, numero_edition)` pour éviter la duplication d'une même édition.
- Exemplaires : deux FK nullables (`id_edition`, `id_revue`) pour représenter ouvrages ou revues.

## Modèle physique (implémentation SQL)

Les scripts se trouvent dans le dossier `sql/` :

- `create_tables.sql` : création des tables et contraintes (PK, FK, UNIQUE). Ce fichier contient en en-tête des lignes commentées proposant la création du schéma `bibliotheque` si souhaité (utile dans MySQL Workbench).
- `inserts.sql` : données d'exemple pour peupler la base et valider les relations.
- `selects.sql` : requêtes de test et exemples d'interrogation (jointures, agrégations, filtrage).

Contraintes et intégrité :

- Clés primaires auto-incrémentées pour la majorité des entités.
- Clés étrangères définies avec les relations appropriées pour garantir l'intégrité référentielle.


## Conclusion

La base conçue est simple, cohérente et alignée avec le cahier des charges.
Elle permet de gérer les ouvrages, auteurs, éditions, exemplaires, revues, lecteurs, emprunts, demandes et suggestions.
Le modèle est évolutif et les scripts fournis permettent de tester et valider la base dans MySQL.

## Annexes

- Modèles : `models/MCD.md`, `models/MLD.md` et les images `models/mcd.png`, `models/mld.png`.
- Scripts SQL : `sql/create_tables.sql`, `sql/inserts.sql`, `sql/selects.sql`.

Auteur : Adem CHAABNIA
