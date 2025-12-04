# Projet Bibliothèque - Base de données

Ce dépôt rassemble le travail réalisé pour le module « Systèmes d'information et bases de données » (Master TIC). Il contient le modèle conceptuel et logique, les scripts SQL pour créer et remplir la base, ainsi que le rapport du projet.

## Aperçu

- Langage : SQL (MySQL compatible)
- Objectif : concevoir et implémenter la base de données d'une bibliothèque (MCD → MLD → scripts SQL)

## Prérequis

- MySQL installé et accessible
- MySQL Workbench installé sur votre poste

## Démarrage rapide (MySQL Workbench)

1. Ouvrez MySQL Workbench et créez ou sélectionnez une connexion vers votre serveur MySQL.

2. Créez une nouvelle base de données (schéma) si besoin : utilisez l'interface « Create a new schema » ou exécutez le script `create_tables.sql` dans l'éditeur SQL de Workbench.

3. Pour exécuter un script SQL dans Workbench :
   - Menu : File > Open SQL Script... et ouvrez `sql/create_tables.sql`.
   - Cliquez sur le bouton d'exécution (icône d'éclair) pour exécuter le script dans la connexion/schéma sélectionné(e).

4. Répétez la même opération pour `sql/inserts.sql` afin d'insérer les données d'exemple.

5. Ouvrez `sql/selects.sql` dans Workbench pour exécuter les requêtes de test et vérifier la structure/les données.

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

## Auteurs

Projet réalisé dans le cadre du Master TIC. Auteur : Akram Chaabnia (adapter si nécessaire).
