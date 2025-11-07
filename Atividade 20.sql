-- Atividade 1 
CREATE DATABASE Escola;
USE Escola;

-- Atividade 2 
CREATE TABLE Estudante (
EstudanteID INT PRIMARY KEY,
Nome VARCHAR(20),
Idade INT,
Data_nascimento date);

-- Atividade 3
SELECT * FROM Estudante;

INSERT INTO Estudante
VALUES (1, 'Prity', 4, '2008-07-02'),
(3, 'Lidia', 20, '2006-12-20');

INSERT INTO Estudante
VALUES
(2,'Carla',17,'2007-11-11'),
(5,'Nadi',18,'2005-03-09'),
(6,'Cloé',15,'2004-04-15');


