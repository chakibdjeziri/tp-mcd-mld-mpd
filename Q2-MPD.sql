CREATE TABLE Medecin(
    id_medecin INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (255) NOT NULL 
);

CREATE TABLE Malade(
    id_malade INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (255) NOT NULL 
);

CREATE TABLE Symptome(
    id_symptome INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (255) NOT NULL 
);

CREATE TABLE Maladie(
    id_maladie INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (255) NOT NULL 
);

CREATE TABLE Consultation(
    id_consultation INTEGER PRIMARY KEY AUTOINCREMENT,
    date DATE  NOT NULL DEFAULT CURRENT_DATE,
    prix DECIMAL NOT NULL,
    id_medecin INTEGER,
    id_malade INTEGER,
    FOREIGN KEY (id_medecin) REFERENCES medecin(id_medecin),
    FOREIGN KEY (id_malade) REFERENCES malade(id_malade)
);

CREATE TABLE Detecter(
    id_consultation INTEGER,
    id_symptome INTEGER,
    FOREIGN KEY (id_consultation) REFERENCES consultation(id_consultation),
    FOREIGN KEY (id_symptome) REFERENCES symptome(id_symptome)
);

CREATE TABLE Diagnostiquer(
    id_consultation INTEGER,
    id_maladie INTEGER,
    FOREIGN KEY (id_consultation) REFERENCES consultation(id_consultation),
    FOREIGN KEY (id_maladie) REFERENCES maladie(id_maladie)
);

CREATE TABLE Associer(
    id_symptome INTEGER,
    id_maladie INTEGER,
    FOREIGN KEY (id_symptome) REFERENCES symptome(id_symptome),
    FOREIGN KEY (id_maladie) REFERENCES maladie(id_maladie)
);
