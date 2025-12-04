# Modèle Conceptuel de Données - Projet Bibliothèque

## 1. Entités

- **Ouvrage** : id_ouvrage, titre, editeur, date_edition
- **Auteur** : id_auteur, nom
- **Cote** : id_cote, numero, libelle, id_parent
- **Édition** : id_edition, numero_edition, annee
- **Exemplaire** : id_exemplaire, (FK édition ou revue)
- **Revue** : id_revue, titre, annee
- **Lecteur** : id_lecteur, nom, numero_carte
- **Suggestion** : id_suggestion, date_suggestion
- **Emprunt** : id_emprunt, date_emprunt, date_retour, indemnité
- **Demande** : id_demande, date_demande

## 2. Associations (MERISE)

- Ouvrage - Auteur : N..N  
- Ouvrage - Cote : N..N  
- Ouvrage - Édition : 1..N  
- Édition - Exemplaire : 1..N  
- Revue - Exemplaire : 1..1  
- Lecteur - Emprunt : 1..N  
- Lecteur - Demande : 1..N  
- Lecteur - Suggestion : 1..N  

## 3. Diagramme ER (Mermaid)

```mermaid
erDiagram

    OUVRAGE {
        int id_ouvrage PK
        string titre
        string editeur
        int date_edition
    }

    AUTEUR {
        int id_auteur PK
        string nom
    }

    OUVRAGE_AUTEUR {
        int id_ouvrage FK
        int id_auteur FK
    }

    COTE {
        int id_cote PK
        string numero
        string libelle
        int id_parent FK
    }

    OUVRAGE_COTE {
        int id_ouvrage FK
        int id_cote FK
    }

    EDITION {
        int id_edition PK
        int id_ouvrage FK
        int numero_edition
        int annee
    }

    EXEMPLAIRE {
        int id_exemplaire PK
        int id_edition FK
        int id_revue FK
    }

    REVUE {
        int id_revue PK
        string titre
        int annee
    }

    LECTEUR {
        int id_lecteur PK
        string nom
        string numero_carte
    }

    SUGGESTION {
        int id_suggestion PK
        int id_lecteur FK
        int id_ouvrage FK
        int id_edition FK
        date date_suggestion
    }

    EMPRUNT {
        int id_emprunt PK
        int id_lecteur FK
        int id_exemplaire FK
        date date_emprunt
        date date_retour
        float indemnité
    }

    DEMANDE {
        int id_demande PK
        int id_lecteur FK
        int id_exemplaire FK
        date date_demande
    }

    OUVRAGE ||--o{ EDITION : "possède"
    OUVRAGE ||--o{ OUVRAGE_AUTEUR : ""
    AUTEUR ||--o{ OUVRAGE_AUTEUR : ""
    OUVRAGE ||--o{ OUVRAGE_COTE : ""
    COTE ||--o{ OUVRAGE_COTE : ""
    EDITION ||--o{ EXEMPLAIRE : "existe en"
    REVUE ||--|{ EXEMPLAIRE : "unique"
    LECTEUR ||--o{ EMPRUNT : "emprunte"
    EXEMPLAIRE ||--o{ EMPRUNT : ""
    LECTEUR ||--o{ DEMANDE : ""
    EXEMPLAIRE ||--o{ DEMANDE : ""
    LECTEUR ||--o{ SUGGESTION : ""
