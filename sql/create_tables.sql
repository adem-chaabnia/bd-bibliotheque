-- Optional: create the database if it does not exist and switch to it.
-- In MySQL Workbench you can run the following lines (they are commented out here):
-- CREATE DATABASE IF NOT EXISTS `bibliotheque` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- USE `bibliotheque`;

CREATE TABLE ouvrage (
    id_ouvrage INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    editeur VARCHAR(255),
    date_edition YEAR
);

CREATE TABLE auteur (
    id_auteur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL
);

CREATE TABLE ouvrage_auteur (
    id_ouvrage INT,
    id_auteur INT,
    PRIMARY KEY(id_ouvrage, id_auteur),
    FOREIGN KEY(id_ouvrage) REFERENCES ouvrage(id_ouvrage),
    FOREIGN KEY(id_auteur) REFERENCES auteur(id_auteur)
);

CREATE TABLE cote (
    id_cote INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(50),
    libelle VARCHAR(255),
    id_parent INT NULL,
    FOREIGN KEY(id_parent) REFERENCES cote(id_cote)
);

CREATE TABLE ouvrage_cote (
    id_ouvrage INT,
    id_cote INT,
    PRIMARY KEY(id_ouvrage, id_cote),
    FOREIGN KEY(id_ouvrage) REFERENCES ouvrage(id_ouvrage),
    FOREIGN KEY(id_cote) REFERENCES cote(id_cote)
);

CREATE TABLE edition (
    id_edition INT PRIMARY KEY AUTO_INCREMENT,
    id_ouvrage INT,
    numero_edition INT,
    annee YEAR,
    UNIQUE(id_ouvrage, numero_edition),
    FOREIGN KEY(id_ouvrage) REFERENCES ouvrage(id_ouvrage)
);

CREATE TABLE revue (
    id_revue INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255),
    annee YEAR
);

CREATE TABLE exemplaire (
    id_exemplaire INT PRIMARY KEY AUTO_INCREMENT,
    id_edition INT NULL,
    id_revue INT NULL,
    FOREIGN KEY(id_edition) REFERENCES edition(id_edition),
    FOREIGN KEY(id_revue) REFERENCES revue(id_revue)
);

CREATE TABLE lecteur (
    id_lecteur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255),
    numero_carte VARCHAR(50) UNIQUE
);

CREATE TABLE suggestion (
    id_suggestion INT PRIMARY KEY AUTO_INCREMENT,
    id_lecteur INT,
    id_ouvrage INT NULL,
    id_edition INT NULL,
    date_suggestion DATE,
    FOREIGN KEY(id_lecteur) REFERENCES lecteur(id_lecteur),
    FOREIGN KEY(id_ouvrage) REFERENCES ouvrage(id_ouvrage),
    FOREIGN KEY(id_edition) REFERENCES edition(id_edition)
);

CREATE TABLE emprunt (
    id_emprunt INT PRIMARY KEY AUTO_INCREMENT,
    id_lecteur INT,
    id_exemplaire INT,
    date_emprunt DATE,
    date_retour DATE NULL,
    indemnité DECIMAL(10,2) NULL,
    FOREIGN KEY(id_lecteur) REFERENCES lecteur(id_lecteur),
    FOREIGN KEY(id_exemplaire) REFERENCES exemplaire(id_exemplaire)
);

CREATE TABLE demande (
    id_demande INT PRIMARY KEY AUTO_INCREMENT,
    id_lecteur INT,
    id_exemplaire INT,
    date_demande DATE,
    FOREIGN KEY(id_lecteur) REFERENCES lecteur(id_lecteur),
    FOREIGN KEY(id_exemplaire) REFERENCES exemplaire(id_exemplaire)
);
