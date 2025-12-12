CREATE DATABASE Sistema_Financeiro ;
USE  Sistema_Financeiro ;

CREATE TABLE Clientes(
ClienteID INT PRIMARY KEY,
Nome_Cliente VARCHAR(30),
Endereço INT,
Email VARCHAR(50)
);

ALTER TABLE Clientes
RENAME COLUMN Endereço TO Codigo_postal; 

CREATE TABLE Funcionarios(
FuncionarioID INT PRIMARY KEY,
Nome_Funcionario VARCHAR(30),
Cargo VARCHAR(30)
);

CREATE TABLE Contas(
ContaID INT PRIMARY KEY,
ClienteID INT,
Numero_Conta INT,
FuncionarioID INT,
FOREIGN KEY (ClienteID) REFERENCES Clientes (ClienteID),
FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios (FuncionarioID)
);

INSERT INTO Clientes 
VALUES
(1,'Lily',3004-123,'Lily43@gmail.com'),
(2,'Ricardo',3004-456,'Ricardo24@gmail.com'),
(3,'Cloé',3004-789,'Cloe15@gmail.com');

SELECT * FROM Clientes;

INSERT INTO Funcionarios 
VALUES
(1,'Linda','Professora'),
(2,'Joia','Secretaria'),
(3,'Priti','Chefe');

SELECT * FROM Funcionarios;

INSERT INTO Contas 
VALUES
(5,1,'0303',1),
(6,2,'6901',2),
(7,3,'5890',3);

SELECT * FROM Contas;

SELECT *
FROM Clientes
INNER JOIN Funcionarios
ON ClienteID = FuncionarioID ;

SELECT Nome_Cliente, ContaID
FROM clientes
LEFT JOIN Contas
ON Nome_Cliente = Contas.clienteID;


