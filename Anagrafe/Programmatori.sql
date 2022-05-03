/* ===================================================================
-- Creazione delle tabelle 
-- ================================================================ */

  CREATE TABLE Programmatore(
  codice                VARCHAR(20)    PRIMARY KEY,
  nome                  VARCHAR(20)    NOT NULL,
  categoria             NUMERIC(2)     NOT NULL
  );
  
  
  CREATE TABLE Programma(
  id		NUMERIC(5)      PRIMARY KEY,
  anno	  	NUMERIC(4)      NOT NULL,
  linguaggio   VARCHAR(20)     NOT NULL
  );
  
  CREATE TABLE Autore(
  codice         VARCHAR(20),    
  id		  NUMERIC(5), 
  primary key (codice,id) 
  );

 
/*  ====================================================================
-- Inserimento di istanze nelle tabelle
-- ================================================================== */

INSERT INTO Programmatore (codice,nome,categoria) VALUES ('100','Grigi',10);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('200','Neri',10);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('300','Bianchi',10);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('500','Gialli',9);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('600','Rossi',9);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('700','Rosi',8);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('800','Verdi',7);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('900','Azzurri',7);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('1000','Marroni',6);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('1100','Bianchini',8);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('1200','Neroni',5);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('1300','Rosetti',4);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('1400','Viola',1);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('1500','Amaranto',2);
INSERT INTO Programmatore (codice,nome,categoria) VALUES ('1600','Verdini',3);

INSERT INTO Programma (id,anno,linguaggio) VALUES (1,2003,'Java');
INSERT INTO Programma (id,anno,linguaggio) VALUES (2,2004,'Python');
INSERT INTO Programma (id,anno,linguaggio) VALUES (3,1999,'Dylan');
INSERT INTO Programma (id,anno,linguaggio) VALUES (4,2009,'Ruby');
INSERT INTO Programma (id,anno,linguaggio) VALUES (5,2010,'Java');
INSERT INTO Programma (id,anno,linguaggio) VALUES (6,2014,'Python');
INSERT INTO Programma (id,anno,linguaggio) VALUES (7,2012,'Java');
INSERT INTO Programma (id,anno,linguaggio) VALUES (8,2000,'Ruby');
INSERT INTO Programma (id,anno,linguaggio) VALUES (9,2004,'Dylan');
INSERT INTO Programma (id,anno,linguaggio) VALUES (10,2007,'Python');
INSERT INTO Programma (id,anno,linguaggio) VALUES (11,2010,'Prolog');



INSERT INTO Autore (codice,id) VALUES ('300',1);
INSERT INTO Autore (codice,id) VALUES ('100',1);
INSERT INTO Autore (codice,id) VALUES ('300',2);
INSERT INTO Autore (codice,id) VALUES ('600',4);
INSERT INTO Autore (codice,id) VALUES ('1300',11);
INSERT INTO Autore (codice,id) VALUES ('700',6);
INSERT INTO Autore (codice,id) VALUES ('700',2);
