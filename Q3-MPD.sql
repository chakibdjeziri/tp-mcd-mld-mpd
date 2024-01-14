-- MPD en SQLite
-- creation des tables puis ajout des relations

CREATE TABLE proprietaire(
    id_proprietaire INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (255) NOT NULL,
    prenom VARCHAR (255) NOT NULL,
    adresse TEXT (500) NOT NULL,
    tel TINYINT (25) NOT NULL
);

CREATE TABLE locataire(
    id_locataire INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (255) NOT NULL,
    prenom VARCHAR (255) NOT NULL,
    adresse TEXT (500) NOT NULL,
    telephone TINYINT (25) NOT NULL
);

CREATE TABLE immeuble(
    id_immeuble INTEGER PRIMARY KEY AUTOINCREMENT,
    adresse TEXT NOT NULL,
    taille SMALLINT (6500) NOT NULL,
    prix_de_location INT (1000000) NOT NULL,
    contrat_gestion TEXT(6500) NOT NULL,
    contrat_gestion_duree INT (50000) NOT NULL,
    contrat_gestion_poucentage TINYINT(100) NOT NULL,
    id_proprietaire INTEGER,
    FOREIGN KEY (id_proprietaire) REFERENCES proprietaire(id_proprietaire)
);

CREATE TABLE contrat_bail(
    id_contrat_bail INTEGER PRIMARY KEY AUTOINCREMENT,
    numero  TINYINT (255) NOT NULL,
    periode INT (50000) NOT NULL,
    id_proprietaire INTEGER,
    id_locataire INTEGER,
    FOREIGN KEY (id_proprietaire) REFERENCES proprietaire(id_proprietaire),
    FOREIGN KEY (id_locataire) REFERENCES locataire(id_locataire)
);