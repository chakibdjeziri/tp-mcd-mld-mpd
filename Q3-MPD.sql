CREATE TABLE Proprietaire(
    id_Proprietaire INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (255) NOT NULL,
    prenom VARCHAR (255) NOT NULL,
    adresse TEXT (500) NOT NULL,
    tel TINYINT (25) NOT NULL
);

CREATE TABLE Contrat(
    id_Contrat INTEGER PRIMARY KEY AUTOINCREMENT,
    duree INT (50000) NOT NULL,
    poucentage TINYINT(100) NOT NULL,
    adresse TEXT NOT NULL,
    taille SMALLINT (6500) NOT NULL,
    prix_de_location INT (1000000) NOT NULL,
    periode_determinee INT (50000) NOT NULL,
    nom VARCHAR (255) NOT NULL,
    prenom VARCHAR (255) NOT NULL,
    adresse TEXT (500) NOT NULL,
    telephone TINYINT (25) NOT NULL
    FOREIGN KEY (id_Proprietaire) REFERENCES Proprietaire(id_Proprietaire)
);