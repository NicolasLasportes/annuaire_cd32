#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: producteur
#------------------------------------------------------------

CREATE TABLE producteur(
        id_producteur                   Int  Auto_increment  NOT NULL ,
        nom_entreprise_producteur       Varchar (50) NOT NULL ,
        activite_commerciale_producteur Varchar (50) NOT NULL ,
        contact_producteur              Varchar (50) NOT NULL ,
        siqo_producteur                 Varchar (50) NOT NULL ,
        site_producteur                 Varchar (50) NOT NULL ,
        lieudit_producteur              Varchar (50) NOT NULL ,
        numero_voie_producteur          Int NOT NULL ,
        nom_voie_producteur             Varchar (50) NOT NULL ,
        code_postal_producteur          Varchar (50) NOT NULL ,
        commune_producteur              Varchar (50) NOT NULL ,
        telephone_producteur            Varchar (50) NOT NULL ,
        mail_producteur                 Varchar (50) NOT NULL
	,CONSTRAINT producteur_PK PRIMARY KEY (id_producteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: categorie
#------------------------------------------------------------

CREATE TABLE categorie(
        id_categorie  Int  Auto_increment  NOT NULL ,
        nom_categorie Varchar (50) NOT NULL
	,CONSTRAINT categorie_PK PRIMARY KEY (id_categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: produit
#------------------------------------------------------------

CREATE TABLE produit(
        id_produit   Int  Auto_increment  NOT NULL ,
        nom_produit  Varchar (50) NOT NULL ,
        id_categorie Int NOT NULL
	,CONSTRAINT produit_PK PRIMARY KEY (id_produit)

	,CONSTRAINT produit_categorie_FK FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: sous_categorie
#------------------------------------------------------------

CREATE TABLE sous_categorie(
        id_sous_categorie  Int  Auto_increment  NOT NULL ,
        nom_sous_categorie Varchar (50) NOT NULL ,
        id_categorie       Int NOT NULL
	,CONSTRAINT sous_categorie_PK PRIMARY KEY (id_sous_categorie)

	,CONSTRAINT sous_categorie_categorie_FK FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: chef
#------------------------------------------------------------

CREATE TABLE chef(
        id_chef     Int  Auto_increment  NOT NULL ,
        nom_chef    Varchar (50) NOT NULL ,
        prenom_chef Varchar (50) NOT NULL ,
        mail_chef   Varchar (50) NOT NULL ,
        mdp_chef    Varchar (50) NOT NULL ,
        favori_chef Bool NOT NULL
	,CONSTRAINT chef_PK PRIMARY KEY (id_chef)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: commentaire
#------------------------------------------------------------

CREATE TABLE commentaire(
        id_commentaire    Int  Auto_increment  NOT NULL ,
        date_commentaire  Datetime NOT NULL ,
        texte_commentaire Varchar (50) NOT NULL ,
        id_chef           Int NOT NULL ,
        id_producteur     Int NOT NULL
	,CONSTRAINT commentaire_PK PRIMARY KEY (id_commentaire)

	,CONSTRAINT commentaire_chef_FK FOREIGN KEY (id_chef) REFERENCES chef(id_chef)
	,CONSTRAINT commentaire_producteur0_FK FOREIGN KEY (id_producteur) REFERENCES producteur(id_producteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: produire
#------------------------------------------------------------

CREATE TABLE produire(
        id_produit    Int NOT NULL ,
        id_producteur Int NOT NULL
	,CONSTRAINT produire_PK PRIMARY KEY (id_produit,id_producteur)

	,CONSTRAINT produire_produit_FK FOREIGN KEY (id_produit) REFERENCES produit(id_produit)
	,CONSTRAINT produire_producteur0_FK FOREIGN KEY (id_producteur) REFERENCES producteur(id_producteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: preferer
#------------------------------------------------------------

CREATE TABLE preferer(
        id_chef       Int NOT NULL ,
        id_producteur Int NOT NULL
	,CONSTRAINT preferer_PK PRIMARY KEY (id_chef,id_producteur)

	,CONSTRAINT preferer_chef_FK FOREIGN KEY (id_chef) REFERENCES chef(id_chef)
	,CONSTRAINT preferer_producteur0_FK FOREIGN KEY (id_producteur) REFERENCES producteur(id_producteur)
)ENGINE=InnoDB;

