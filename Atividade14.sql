CREATE DATABASE China;
USE china;
CREATE TABLE cidades (
	cidadesID INT PRIMARY KEY,
    Nome_cidade VARCHAR(100) NOT NULL,
    codigo_postal INT
);

INSERT INTO cidades ( cidadesID , Nome_cidade , codigo_postal)
VALUES (1,'Lisboa',1000),
       (2,'Porto',4150),
       (3,'Vila_Nova_Gaia',4430),
       (4,'Amadora',1500);
       
SELECT * FROM CIDADES;
SELECT cidadesID FROM CIDADES;
