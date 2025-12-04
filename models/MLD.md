#  Modèle Logique de Données - Projet Bibliothèque

```mermaid
erDiagram

    OUVRAGE {
        string id_ouvrage PK
        string titre
        string editeur
    }

    AUTEUR {
        int id_auteur PK
        string nom
    }

    OUVRAGE_AUTEUR {
        string id_ouvrage FK
        int id_auteur FK
    }

    COTE {
        string id_cote PK
        string libelle
        string parent_cote FK
    }

    OUVRAGE_COTE {
        string id_ouvrage FK
        string id_cote FK
    }

    EDITION {
        string id_ouvrage FK
        int num_edition
        int annee
        PK id_ouvrage num_edition
    }

    EXEMPLAIRE {
        int id_exemplaire PK
        string id_ouvrage FK
        int num_edition FK
    }

    LECTEUR {
        int id_lecteur PK
        string nom
    }

    SUGGESTION {
        int id_suggestion PK
        int id_lecteur FK
        string id_ouvrage FK
        int num_edition
        date date_suggestion
    }

    EMPRUNT {
        int id_emprunt PK
        int id_exemplaire FK
        int id_lecteur FK
        date date_emprunt
    }

    DEMANDE {
        int id_demande PK
        int id_exemplaire FK
        int id_lecteur FK
        date date_demande
    }

    ARCHIVE {
        int id_archive PK
        int id_emprunt FK
        date date_emprunt
        date date_retour
        float indemnité
    }

    REVUE {
        int id_revue PK
        string titre
        int annee
    }

    %% RELATIONS

    OUVRAGE ||--o{ EDITION : "a"
    EDITION ||--o{ EXEMPLAIRE : "a"
    LECTEUR ||--o{ EMPRUNT : "fait"
    LECTEUR ||--o{ DEMANDE : "demande"
    LECTEUR ||--o{ SUGGESTION : "suggere"
    EXEMPLAIRE ||--o{ EMPRUNT : "concerne"
    EXEMPLAIRE ||--o{ DEMANDE : "porte_sur"
    EMPRUNT ||--|| ARCHIVE : "archive"
    OUVRAGE ||--o{ OUVRAGE_AUTEUR : ""
    AUTEUR ||--o{ OUVRAGE_AUTEUR : ""
    OUVRAGE ||--o{ OUVRAGE_COTE : ""
    COTE ||--o{ OUVRAGE_COTE : ""
    COTE ||--o{ COTE : "parent"
