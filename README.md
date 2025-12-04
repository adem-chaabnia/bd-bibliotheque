# Projet Bibliothèque - Base de données

Ce dépôt rassemble le travail réalisé pour le module « Systèmes d'information et bases de données » (Master TIC). Il contient le modèle conceptuel et logique, les scripts SQL pour créer et remplir la base, ainsi que le rapport du projet.

## Aperçu

- Langage : SQL (MySQL compatible)
- Objectif : concevoir et implémenter la base de données d'une bibliothèque (MCD → MLD → scripts SQL)

## Prérequis

- MySQL installé et accessible
- MySQL Workbench installé sur votre poste

## Démarrage rapide (MySQL Workbench)

1. Ouvrez MySQL Workbench et créez/choisissez une connexion vers votre serveur MySQL.

2. Dans Workbench, créez le schéma `bibliotheque` si nécessaire (Create a new schema), ou exécutez les lignes commentées en tête de `sql/create_tables.sql` (elles proposent une création du schéma avec UTF8MB4).

3. Ouvrez et exécutez dans l'ordre :
  - `sql/create_tables.sql` - création des tables et contraintes.
  - `sql/inserts.sql` - données d'exemple.
  - `sql/selects.sql` - requêtes de vérification.

4. Vérifiez, via l'interface de Workbench, que le schéma sélectionné est bien `bibliotheque` avant d'exécuter chaque fichier.

Remarque : assurez-vous d'avoir sélectionné le bon schéma (base) dans l'interface de Workbench avant d'exécuter les scripts.

## Structure du dépôt

- `README.md` : documentation et instructions d'utilisation
- `rapport.md` : rapport du projet
- `models/` :
  - `MCD.md`, `MLD.md` : documents MERISE (modèle conceptuel et logique)
  - `mcd.png`, `mld.png` : schémas visuels
- `sql/` :
  - `create_tables.sql` : scripts de création des tables
  - `inserts.sql` : scripts d'insertion de données d'exemple
  - `selects.sql` : requêtes et tests d'interrogation

## Conformité au cahier des charges

Le cahier des charges fournit en cours (gestion d'ouvrages, exemplaires, cotes hiérarchiques, revues, lecteurs, emprunts, demandes, suggestions, règles d'indemnité et limites d'emprunt) est explicitement pris en compte. Pour chaque exigence, voir la section « Mapping exigences → implémentation » du `rapport.md`.

## Auteurs

Projet réalisé dans le cadre du Master TIC. Auteur : Adem CHAABNIA.
