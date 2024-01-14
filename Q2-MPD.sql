-- TP CHAKIB DJEZIRI
-- MPD Exercice 2
-- création de la table medecin
CREATE TABLE medecin(
    id_medecin INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (255) NOT NULL 
);
-- création de la table malade
CREATE TABLE malade(
    id_malade INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (255) NOT NULL 
);
-- création de la table symptome
CREATE TABLE symptome(
    id_symptome INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (255) NOT NULL 
);
-- création de la table maladie
CREATE TABLE maladie(
    id_maladie INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (255) NOT NULL 
);
-- création de la table consultation
CREATE TABLE consultation(
    id_consultation INTEGER PRIMARY KEY AUTOINCREMENT,
    date DATE  NOT NULL DEFAULT CURRENT_DATE,
    prix DECIMAL NOT NULL,
    id_medecin INTEGER,
    id_malade INTEGER,
    FOREIGN KEY (id_medecin) REFERENCES medecin(id_medecin),
    FOREIGN KEY (id_malade) REFERENCES malade(id_malade)
);
-- création de la table effectuer (relation many-to-many)
CREATE TABLE effectuer(
    id_effectuer INTEGER PRIMARY KEY AUTOINCREMENT,
    id_medecin INTEGER,
    id_consultation INTEGER,
    FOREIGN KEY (id_consultation) REFERENCES consultation(id_consultation),
    FOREIGN KEY (id_medecin) REFERENCES medecin(id_medecin)
);
-- création de la table concerner (relation many-to-many)
CREATE TABLE concerner(
    id_concerner INTEGER PRIMARY KEY AUTOINCREMENT,
    id_consultation INTEGER,
    id_malade INTEGER,
    FOREIGN KEY (id_consultation) REFERENCES consultation(id_consultation),
    FOREIGN KEY (id_malade) REFERENCES malade(id_malade)
);
-- création de la table detection (relation many-to-many)
CREATE TABLE detecter(
    id_detecter INTEGER PRIMARY KEY AUTOINCREMENT,
    id_consultation INTEGER,
    id_symptome INTEGER,
    FOREIGN KEY (id_consultation) REFERENCES consultation(id_consultation),
    FOREIGN KEY (id_symptome) REFERENCES symptome(id_symptome)
);
-- création de la table diagnostique (relation many-to-many)
CREATE TABLE diagnostiquer(
    id_diagnostiquer INTEGER PRIMARY KEY AUTOINCREMENT,
    id_consultation INTEGER,
    id_maladie INTEGER,
    FOREIGN KEY (id_consultation) REFERENCES consultation(id_consultation),
    FOREIGN KEY (id_maladie) REFERENCES maladie(id_maladie)
);
-- création de la table association (relation many-to-many)
CREATE TABLE associer(
    id_associer INTEGER PRIMARY KEY AUTOINCREMENT,
    id_symptome INTEGER,
    id_maladie INTEGER,
    FOREIGN KEY (id_symptome) REFERENCES symptome(id_symptome),
    FOREIGN KEY (id_maladie) REFERENCES maladie(id_maladie)
);
