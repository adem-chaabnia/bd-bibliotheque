INSERT INTO auteur (nom) VALUES ('Albert Camus'), ('Isaac Asimov');
INSERT INTO ouvrage (titre, editeur, date_edition) VALUES 
('La Peste', 'Gallimard', 1947),
('Fondation', 'Gnome Press', 1951);

INSERT INTO ouvrage_auteur VALUES (1,1), (2,2);

INSERT INTO cote(numero, libelle) VALUES ('3','applications'), ('31','sciences naturelles');

INSERT INTO ouvrage_cote VALUES (1,1), (2,2);

INSERT INTO edition(id_ouvrage, numero_edition, annee) VALUES (1,1,1947), (2,1,1951);

INSERT INTO exemplaire(id_edition) VALUES (1), (1), (2);

INSERT INTO lecteur(nom, numero_carte) VALUES ('Sara B.', 'LB1001'), ('Amine K.', 'LB1002');
